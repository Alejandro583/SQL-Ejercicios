-- 1.sql
-- El equipo de compromiso de usuarios de la aplicación necesita identificar a los usuarios activos. 
-- Encuentra todos los nombres de usuario de los usuarios que han iniciado sesión desde 2024-01-01. 
-- Asegúrate de que tu consulta utilice el índice search_users_by_last_login, que se define de la siguiente manera:

SELECT "username" FROM "users"
WHERE "last_login_date" >= '2024-01-01';
