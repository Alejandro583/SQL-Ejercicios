-- La aplicación necesita enviar a los usuarios un resumen de su compromiso. 
-- Encuentra el nombre de usuario del usuario más popular, definido como el usuario al que se le han enviado más mensajes.
 
-- Asegúrate de que tu consulta utilice el índice search_messages_by_to_user_id, que se define de la siguiente manera:

SELECT "username" FROM "users"
WHERE "id" = (SELECT "to_user_id" FROM "messages"
    GROUP BY "to_user_id"
    ORDER BY COUNT(*) DESC
    LIMIT 1
    );


