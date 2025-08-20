--•Use como referência (adapte ao SGBD):

SELECT e.id_entrega, c.id_cliente, COALESCE(c.nome, c.razao_social) AS cliente,
m.nome AS motorista, v.placa, e.status, e.data_prevista
FROM entrega e
JOIN cliente c ON c.id_cliente = e.id_cliente
JOIN motorista m ON m.id_motorista = e.id_motorista
JOIN veiculo v ON v.id_veiculo = e.id_veiculo
WHERE e.status IN ('Aguardando','EmTransporte');

--•Saldo por entrega (frete – total pago)

SELECT e.id_entrega, e.valor_frete,
COALESCE(SUM(p.valor_pago),0) AS total_pago,
e.valor_frete - COALESCE(SUM(p.valor_pago),0) AS saldo
FROM entrega e
LEFT JOIN pagamento p ON p.id_entrega = e.id_entrega
GROUP BY e.id_entrega, e.valor_frete
ORDER BY e.id_entrega;

-- • Paradas ordenadas por entrega

SELECT id_entrega, ordem, endereco_destino, hora_prevista, hora_real
FROM roteiro_parada
ORDER BY id_entrega, ordem;

--•Encomendas e dimensões por entrega

SELECT e.id_entrega, en.id_encomenda, en.descricao,
en.peso_kg, en.altura_cm, en.largura_cm, en.comprimento_cm
FROM entrega e
JOIN encomenda en ON en.id_entrega = e.id_entrega
ORDER BY e.id_entrega, en.id_encomenda;

--•Clientes com múltiplos endereços

SELECT c.id_cliente, COALESCE(c.nome, c.razao_social) AS cliente, COUNT(*) AS
qtd_enderecos
FROM cliente c
JOIN endereco e ON e.id_cliente = c.id_cliente
GROUP BY c.id_cliente, COALESCE(c.nome, c.razao_social)
HAVING COUNT(*) > 1;

--•Forma de pagamento mais usada

SELECT forma, COUNT(*) AS qtd
FROM pagamento
GROUP BY forma
ORDER BY qtd DESC;