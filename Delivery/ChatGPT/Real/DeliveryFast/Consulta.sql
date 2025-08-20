-- =====================================================
-- CONSULTAS DE VALIDAÇÃO - FastDeliveryDB
-- =====================================================

-- 1️⃣ Entregas com status 'Aguardando' ou 'EmTransporte', mostrando cliente, motorista e veículo
SELECT 
    e.id_entrega,
    COALESCE(cpf.nome, pj.nome) AS cliente,
    m.nome AS motorista,
    v.placa,
    e.status,
    e.previsao AS data_prevista
FROM entrega e
JOIN clientes cl ON cl.id_cliente_pf = e.cliente_id OR cl.id_cliente_pj = e.cliente_id
LEFT JOIN clientePF cpf ON cl.id_cliente_pf = cpf.id_cliente
LEFT JOIN clientePJ pj ON cl.id_cliente_pj = pj.id_cliente
JOIN motorista m ON m.id_motorista = e.motorista_id
JOIN veiculo v ON v.id_veiculo = e.veiculo_id
WHERE e.status IN ('Aguardando','EmTransporte');

-- 2️⃣ Saldo por entrega (frete – total pago)
SELECT 
    e.id_entrega,
    e.frete AS valor_frete,
    COALESCE(SUM(p.valor),0) AS total_pago,
    e.frete - COALESCE(SUM(p.valor),0) AS saldo
FROM entrega e
LEFT JOIN pagamento p ON p.id_entrega = e.id_entrega
GROUP BY e.id_entrega, e.frete
ORDER BY e.id_entrega;

-- 3️⃣ Paradas ordenadas por entrega
SELECT 
    id_entrega, 
    ordem, 
    endereco_destino, 
    hora_prevista, 
    hora_real
FROM roteiro_parada
ORDER BY id_entrega, ordem;

-- 4️⃣ Encomendas e dimensões por entrega
SELECT 
    e.id_entrega,
    en.id_encomenda,
    en.descricao,
    en.peso AS peso_kg,
    en.dimensoes AS dimensao_cm
FROM entrega e
JOIN encomenda en ON en.cliente_entrega = e.cliente_id
ORDER BY e.id_entrega, en.id_encomenda;

-- 5️⃣ Clientes com múltiplos endereços
SELECT 
    cpf.id_cliente AS id_cliente,
    cpf.nome AS cliente,
    COUNT(*) AS qtd_enderecos
FROM clientePF cpf
JOIN endereco e ON e.id_cliente = cpf.id_cliente
GROUP BY cpf.id_cliente, cpf.nome
HAVING COUNT(*) > 1
UNION
SELECT 
    pj.id_cliente AS id_cliente,
    pj.nome AS cliente,
    COUNT(*) AS qtd_enderecos
FROM clientePJ pj
JOIN endereco e ON e.id_cliente = pj.id_cliente
GROUP BY pj.id_cliente, pj.nome
HAVING COUNT(*) > 1;

-- 6️⃣ Forma de pagamento mais usada
SELECT 
    forma, 
    COUNT(*) AS qtd
FROM pagamento
GROUP BY forma
ORDER BY qtd DESC;
