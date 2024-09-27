-- Los usuarios deben ser prevenidos de reabrir un mensaje que ha expirado. 
-- Encuentra cuándo expira el mensaje con ID 151. Puedes usar directamente el ID del mensaje en tu consulta.

-- Asegúrate de que tu consulta utilice el índice que se crea automáticamente en la columna de clave primaria de la tabla messages.

SELECT "expires_timestamp" FROM "messages"
WHERE "id" = 151;
