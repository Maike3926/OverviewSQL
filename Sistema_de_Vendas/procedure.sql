CREATE OR REPLACE PROCEDURE realizar_venda(
    p_produto_id INT,
    p_quantidade INT
)
LANGUAGE plpgsql
AS $$
DECLARE
    v_preco NUMERIC(10,2);
    v_estoque_atual INT;
    v_valor_total NUMERIC(10,2);
BEGIN
    --Verifica se o produto existe e buscar preço/estoque
    SELECT preco, estoque INTO v_preco, v_estoque_atual
    FROM produtos
    WHERE id = p_produto_id;

    IF v_preco IS NULL THEN
        RAISE EXCEPTION ' Produto não encontrado/invalido', p_produto_id;
    END IF;

    --Verifica se tem estoque suficiente
    IF v_estoque_atual < p_quantidade THEN
        RAISE EXCEPTION 'Estoque insuficiente!', v_estoque_atual, p_quantidade;
    END IF;

    --Calcular o valor total
    v_valor_total := v_preco * p_quantidade;

    --registro da venda
    INSERT INTO vendas (produto_id, quantidade, valor_total)
    VALUES (p_produto_id, p_quantidade, v_valor_total);

    --Atualiza o estoque 
    UPDATE produtos
    SET estoque = estoque - p_quantidade
    WHERE id = p_produto_id;

    RAISE NOTICE 'Venda realizada! Total: R$ % | Estoque atualizado.', v_valor_total;

END;
$$;

--execucao
CALL realizar_venda(1, 2);
