FROM python:3.10-alpine
WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . ./

EXPOSE 8080

ENV MCP_TRANSPORT=sse
ENV PORT=8080

CMD ["python", "server.py"]
