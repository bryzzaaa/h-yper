# h-yper
H-yper é uma ferramenta interativa para comandos *ADB*.
# O que é ADB?
O Android Debug Bridge (adb) é uma ferramenta de linha de comando versátil que permite a comunicação com um dispositivo. O comando adb facilita várias ações do dispositivo, como instalar e depurar apps. adb fornece acesso a um shell Unix que pode ser usado para executar diversos comandos em um dispositivo. Ele é um programa cliente-servidor com três componentes:

    Um cliente, que envia comandos. O cliente é executado na máquina de desenvolvimento. Você pode emitir um comando adb para invocar o cliente de um terminal de linha de comando.
    Um daemon (adbd), que executa comandos em um dispositivo. O daemon é executado como um processo em segundo plano em cada dispositivo.
    Um servidor, que gerencia a comunicação entre o cliente e o daemon. O servidor é executado como um processo em segundo plano na máquina de desenvolvimento.

adb está incluído no pacote Android SDK Platform Tools. Faça o download desse pacote com o SDK Manager, que o instala em android_sdk/platform-tools/. Se quiser o pacote autônomo Android SDK Platform Tools, faça o download aqui.

Para saber mais sobre como conectar um dispositivo para uso no adb, incluindo como usar o Connection Assistant para solucionar problemas comuns, consulte Executar apps em um dispositivo de hardware.
# Como usar o h-yper?
Para usar o h-yper, primeiro você precisa das dependências que ele requer, para instalar, rode os comandos:
# No Arch Linux (pacman)
chmod +x d-pacman.sh
./d-pacman.sh
# No Ubuntu, Debian.. etc. (apt)
chmod +x d-apt.sh
./d-apt.sh
*Logo após isso, execute o h-yper:*
bash hyper.sh





# Fontes:
*Google*: https://developer.android.com/tools/adb
