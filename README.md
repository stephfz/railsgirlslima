railsgirlslima
==============

Producción
----------

Antes de poner en producción por primera vez, se debe configurar
una variable de ambiente llamada **SECRET_TOKEN** (ENV['SECRET_TOKEN').
Para eso primero se debe generar un nuevo secret key y setearlo
en el ambiente de producción. En este caso, se deberían ejecutar
los siguientes pasos:

    $ rake secret
    # => APARECERA_UNA_SERIE_DE_LETRAS_Y_NUMEROS_ESTE_ES_EL_NUEVO_SECRET_KEY
    $ heroku config:set SECRET_TOKEN=COPIAR_AQUI_EL_SECRET_KEY
