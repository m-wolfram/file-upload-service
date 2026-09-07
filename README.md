# file-upload-service

Simple file upload service written in Python.


<img width="915" height="336" alt="image" src="https://github.com/user-attachments/assets/ccd9c4c5-3684-41c5-9cb7-ae4fafc4b490" />
<img width="904" height="851" alt="image" src="https://github.com/user-attachments/assets/26023cab-9a10-4533-8d07-0661c4511fe0" />

## How to deploy

1. Make sure Docker and Docker Compose are installed.
2. Clone the repository.
3. Run the following command from the project root:

```bash
docker compose up -d
```

The service will run with HTTPS enabled using a self-signed certificate.

Open the following address in your browser:

```
https://<host-ip-or-domain>
```

Your browser may display a security warning when using the self-signed certificate. This is expected.

### Using your own certificate

If you want to use your own certificate, put the following files in the project's `certs` folder:

```text
certs/
├── fullchain.crt
└── private.key
```

The file names are important and must match exactly.

If the certificate files are not found, the service will automatically use a self-signed certificate.

### Port

The service runs on port `5443` by default.

To use a different port, set the `PORT` environment variable before running Docker Compose.

**Linux:**

```bash
PORT=443 docker compose up -d
```

or:

```bash
export PORT=443
docker compose up -d
```

**Windows CMD:**

```cmd
set PORT=443
docker compose up -d
```

**Windows PowerShell:**

```powershell
$env:PORT = "443"
docker compose up -d
```
