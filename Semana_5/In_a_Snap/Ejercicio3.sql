-- La aplicación necesita clasificar a los "mejores amigos" de un usuario, similar a la función "Emojis de amigos" de Snapchat. 
-- Encuentra los ID de usuario de los 3 principales usuarios a los que creativewisdom377 envía mensajes con más frecuencia. 
-- Ordena los ID de usuario por el número de mensajes que creativewisdom377 ha enviado a esos usuarios, de más a menos.
 
-- Asegúrate de que tu consulta utilice el índice search_messages_by_from_user_id, que se define de la siguiente manera:


SELECT "to_user_id" FROM "messages"
WHERE "from_user_id" = (SELECT "id" FROM "users"
     WHERE "username" = 'creativewisdom377')
GROUP BY "to_user_id"
ORDER BY COUNT(*) desc LIMIT 3;
