-- Para cualquier par de usuarios, la aplicación necesita mostrar rápidamente una lista de los amigos que tienen en común. 
-- Dado dos nombres de usuario, lovelytrust487 y exceptionalinspiration482, encuentra los ID de usuario de sus amigos mutuos. 
-- Un amigo mutuo es un usuario que tanto lovelytrust487 como exceptionalinspiration482 cuentan entre sus amigos.
 
-- Asegúrate de que tu consulta utilice el índice que se crea automáticamente en las columnas de clave primaria de la tabla friends. 
-- Este índice se llama sqlite_autoindex_friends_1.

SELECT "friend_id" FROM "friends"
     WHERE  "user_id" = (SELECT "id" FROM "users"
         WHERE "username" = "lovelytrust487")
INTERSECT
SELECT "friend_id" FROM "friends"
     WHERE  "user_id" = (SELECT "id" FROM "users"
         WHERE "username" = "exceptionalinspiration482");
