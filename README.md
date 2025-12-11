Trabalho Final – Banco de Dados 

Sistema de Adoção de Animais
Alunos: JOÃO PEDRO MOTA SALDANHA DE FREITAS / PEDRO CAIKE MARINHO FEITOSA
Professor(a): Adeilson Aragão 

Descrição Geral

Este repositório contém o desenvolvimento do Trabalho Final de Banco de Dados, baseado no modelo lógico fornecido e com especificaçoes do professor para um sistema de adoção de animais.

Nesta etapa foram realizadas:

Criação das tabelas do banco de dados

Inserção de registros nas ENTIDADE E RELACIONAMENTOS fornecidos anteriormente  (animal, abrigo, funcionários, adotantes etc.)

Elaboração de 10 consultas SQL obrigatórias usando tal como pede o docs do professor:
-> JOINs
-> GROUP BY / HAVING
-> Funções agregadas
-> Subconsultas aninhadas
-> EXISTS
-> IN
-> LEFT JOIN + IS NULL

Cada consulta contém o código SQL e o resultado obtido no PostgreSQL, conforme o professor pediu.


Consulta 1 – Quantidade de animais por espécie

SQL:
SELECT Especie, COUNT(*) AS total 
FROM Animal 
GROUP BY Especie 
HAVING COUNT(*) >= 1;
RODANDO NO POSTGREESQL:
| espécie | total | 
| Coelho  | 50    |
| Pássaro | 44    |
| Gato    | 59    |
| Cão     | 47    |

Consulta 2 – Média de peso por espécie

SQL:

SELECT Especie, ROUND(AVG(Peso)::numeric,2) AS peso_medio 
FROM Animal 
GROUP BY Especie;
RODANDO NO POSTGREESQL:
| espécie | peso_medio |
| Coelho  | 19.76      |
| Pássaro | 18.21      |
| Gato    | 22.85      |
| Cão     | 17.59      |

Consulta 3 – Adotantes que adotaram mais de um animal

SQL:

SELECT a.ID_Adotante, a.Nome, COUNT(ad.ID_Animal) AS total_adocoes
FROM Adotante a 
JOIN Adocao ad ON a.ID_Adotante = ad.ID_Adotante
GROUP BY a.ID_Adotante, a.Nome 
HAVING COUNT(ad.ID_Animal) > 1;

RODANDO NO POSTGREESQL:
| id_adotante | nome             | total_adocoes |
| 132         | Sergio Fernandes | 2             |
| 92          | Wagner Carvalho  | 2             |
| 101         | Diego Martins    | 2             |
| 60          | Ximenes Araújo   | 2             |
| 124         | Rafaela Oliveira | 4             |
| ...         | ...              | ...           |


Consulta 4 – Animais vacinados com “Raiva” e “V10”

SQL:

SELECT an.ID_Animal, an.Nome 
FROM Animal an
WHERE EXISTS (
    SELECT 1 FROM Animal_Vacina av 
    WHERE av.ID_Animal = an.ID_Animal AND av.Vacina = 'Raiva'
)
AND EXISTS (
    SELECT 1 FROM Animal_Vacina av 
    WHERE av.ID_Animal = an.ID_Animal AND av.Vacina = 'V10'
);

RODANDO NO POSTGREESQL:
| id_animal | nome   |
| 2         | Maya2  |
| 3         | Bela3  |
| 89        | Milu89 |
| 96        | Bela96 |
| ...       | ...    |

Consulta 5 – Adotantes que moram em Crateús ou Fortaleza (IN)

SQL:

SELECT * 
FROM Adotante
WHERE Cidade IN ('Crateús', 'Fortaleza');
RODANDO NO POSTGREESQL:
| id_adotante | nome           | cidade    |
| 1           | Zoe Ribeiro    | Crateús   |
| 3           | Larissa Moura  | Fortaleza |
| 6           | Ximena Martins | Fortaleza |
| 10          | Tatiana Araújo | Crateús   |
| ...         | ...            | ...       |

Consulta 6 – Animais do abrigo 1 que NÃO foram adotados

SQL:

SELECT r.ID_Abrigo, a.ID_Animal, a.Nome 
FROM Recebe r
JOIN Animal a ON a.ID_Animal = r.ID_Animal
LEFT JOIN Adocao ado ON ado.ID_Animal = a.ID_Animal
WHERE ado.ID_Animal IS NULL 
  AND r.ID_Abrigo = 1;

RODANDO NO POSTGREESQL:
| id_abrigo | id_animal | nome    |
| 1         | 120       | Luna120 |
| 1         | 150       | Lola150 |

Consulta 7 – Funcionários que gerenciam mais de um abrigo

SQL:

SELECT f.ID_Funcionario, f.Nome, COUNT(g.ID_Abrigo) AS num_abrigos
FROM Funcionario f 
JOIN Gerencia g ON f.ID_Funcionario = g.ID_Funcionario
GROUP BY f.ID_Funcionario, f.Nome 
HAVING COUNT(g.ID_Abrigo) > 1;

RODANDO NO POSTGREESQL:
| id_funcionario | nome             | num_abrigos |
| 36             | Wagner Costa     | 2           |
| 13             | Helena Oliveira  | 2           |
| 12             | Otavio Costa     | 2           |
| 1              | Igor Moura       | 2           |
| 23             | Tatiana Oliveira | 2           |

Consulta 8 – Animais mais pesados que a média da espécie

SQL:

SELECT * 
FROM Animal an 
WHERE Peso > (
    SELECT AVG(Peso) 
    FROM Animal 
    WHERE Especie = an.Especie
);
RODANDO NO POSTGREESQL:
| id_animal | nome   | especie | peso  |
| 2         | Maya2  | Coelho  | 37.66 |
| 4         | Kira4  | Coelho  | 39.01 |
| 8         | Pingo8 | Gato    | 36.01 |
| 12        | Milu12 | Cão     | 19.15 |
| ...       | ...    | ...     | ...   |

Consulta 9 – Adotantes que adotaram animais vacinados com “Raiva”

SQL:

SELECT DISTINCT adt.ID_Adotante, adt.Nome 
FROM Adotante adt
JOIN Adocao ado ON ado.ID_Adotante = adt.ID_Adotante
JOIN Animal an ON an.ID_Animal = ado.ID_Animal
WHERE EXISTS (
    SELECT 1 
    FROM Animal_Vacina av 
    WHERE av.ID_Animal = an.ID_Animal 
      AND av.Vacina = 'Raiva'
);

RODANDO NO POSTGREESQL:
| id_adotante | nome            |
| 121         | Natalia Ribeiro |
| 130         | Ahri Carvalho   |
| 34          | Helena Moura    |
| 101         | Diego Martins   |
| ...         | ...             |

Consulta 10 – Total de animais por abrigo

SQL:

SELECT ab.Nome AS abrigo, COUNT(r.ID_Animal) AS total_animais
FROM Abrigo ab 
JOIN Recebe r ON ab.ID_Abrigo = r.ID_Abrigo
GROUP BY ab.Nome 
ORDER BY total_animais DESC;

RODANDO NO POSTGREESQL:
| abrigo               | total_animais |
| Refugio 4 Nova_Era   | 16            |
| Refugio 11 Dog_House | 16            |
| Refugio 18 Russos    | 12            |
| Refugio 17 Penha     | 12            |
| ...                  | ...           |









