CREATE OR REPLACE FUNCTION check_user_status(p_id INT) 
RETURNS TEXT
LANGUAGE plpgsql
AS $$
DECLARE
    v_active BOOLEAN;
BEGIN
    --buscar o status do usuario pelo ID
    SELECT active INTO v_active 
    FROM users 
    WHERE id = p_id;

    --caso o ID nao existir no banco
    IF NOT FOUND THEN
        RETURN 'Usuario não encontrado';
    END IF;

    --caso exista, verifica se é ativo ou inativo
    IF v_active = true THEN
        RETURN 'Usuario ativo';
    ELSE
        RETURN 'Usuario inativo';
    END IF;
END;
$$;
