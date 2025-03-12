Testes Automatizados para Aplicativo Mobile de Smartwatches

Este repositório contém a automação de testes para um aplicativo mobile de smartwatches, utilizando **Robot Framework** e **Appium**. O objetivo é validar a funcionalidade e a experiência do usuário no aplicativo, garantindo qualidade e confiabilidade.

## 🚀 Tecnologias Utilizadas

- **Robot Framework** - Framework para automação de testes
- **Appium** - Ferramenta para automação de aplicativos móveis (Android e iOS)
- **Python** - Linguagem base para os scripts
- **AppiumLibrary** - Biblioteca do Robot Framework para testes móveis


```

## 🔧 Pré-requisitos

Antes de executar os testes, certifique-se de ter os seguintes requisitos instalados:

- **Python 3.8+**
- **Robot Framework** (`pip install robotframework`)
- **Appium Server** (`npm install -g appium` e `appium --allow-insecure chromedriver_autodownload`)
- **Node.js** (para o Appium)
- **Drivers**:
  - Android: [Android SDK e ADB](https://developer.android.com/studio)
- **Emulador ou dispositivo real conectado**

## ▶️ Como Executar os Testes

### 1️⃣ Configurar o Appium Server
```sh
appium
```

### 2️⃣ Executar os testes no Android
```sh
robot -d results tests/android
```
```

### 4️⃣ Executar um teste específico
```sh
robot -d results tests/test_login.robot
```

### 5️⃣ Gerar relatórios detalhados
Após a execução, os relatórios estarão disponíveis na pasta `results/` com os arquivos `log.html` e `report.html`.

🛠️ Configuração do Arquivo config.yaml

Para facilitar a execução dos testes, utilizamos um arquivo de configuração config.yaml onde é possível definir:

devices:
  android:
    platformName: "Android"
    deviceName: "emulator-5554"
    app: "./apk/appMormaiiRelease.apk"


🔍 Relatórios e Logs

Após a execução dos testes, os relatórios estarão disponíveis na pasta results/ com os arquivos:

log.html → Detalhes da execução passo a passo

report.html → Resumo dos testes

output.xml → Saída em formato XML

📌 Contribuição

Se desejar contribuir para o projeto:

Faça um fork do repositório

Crie uma branch (feature/nova-feature)

Faça suas alterações e adicione testes

Abra um Pull Request 🚀

📄 Licença

Este projeto está sob a licença MIT. Sinta-se à vontade para usá-lo e melhorá-lo!

