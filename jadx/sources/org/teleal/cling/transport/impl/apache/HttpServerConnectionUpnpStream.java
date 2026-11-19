package org.teleal.cling.transport.impl.apache;

import defpackage.d21;
import defpackage.pq0;
import defpackage.tr;
import java.io.IOException;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import java.net.URI;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import k.a;
import org.apache.http.ConnectionClosedException;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseFactory;
import org.apache.http.HttpServerConnection;
import org.apache.http.MethodNotSupportedException;
import org.apache.http.ProtocolVersion;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.DefaultConnectionReuseStrategy;
import org.apache.http.impl.DefaultHttpResponseFactory;
import org.apache.http.message.BasicStatusLine;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.DefaultedHttpParams;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.BasicHttpProcessor;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpService;
import org.apache.http.protocol.ResponseConnControl;
import org.apache.http.protocol.ResponseContent;
import org.apache.http.protocol.ResponseDate;
import org.teleal.cling.model.message.StreamRequestMessage;
import org.teleal.cling.model.message.StreamResponseMessage;
import org.teleal.cling.model.message.UpnpHeaders;
import org.teleal.cling.model.message.UpnpMessage;
import org.teleal.cling.model.message.UpnpOperation;
import org.teleal.cling.model.message.UpnpRequest;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.message.header.ContentTypeHeader;
import org.teleal.cling.model.message.header.UpnpHeader;
import org.teleal.cling.protocol.ProtocolFactory;
import org.teleal.cling.transport.spi.UnsupportedDataException;
import org.teleal.cling.transport.spi.UpnpStream;
import org.teleal.common.io.IO;
import org.teleal.common.util.Exceptions;
import org.teleal.common.util.MimeType;

/* JADX INFO: loaded from: classes5.dex */
public class HttpServerConnectionUpnpStream extends UpnpStream {
    private static final Logger log = Logger.getLogger(UpnpStream.class.getName());
    protected final HttpServerConnection connection;
    protected final BasicHttpProcessor httpProcessor;
    protected final HttpService httpService;
    protected final HttpParams params;

    public class UpnpHttpService extends HttpService {
        public UpnpHttpService(HttpProcessor httpProcessor, ConnectionReuseStrategy connectionReuseStrategy, HttpResponseFactory httpResponseFactory) {
            super(httpProcessor, connectionReuseStrategy, httpResponseFactory);
        }

        @Override // org.apache.http.protocol.HttpService
        public final void doService(HttpRequest httpRequest, HttpResponse httpResponse, HttpContext httpContext) throws HttpException, IOException {
            ContentTypeHeader contentTypeHeader;
            Object obj;
            Logger logger = HttpServerConnectionUpnpStream.log;
            logger.fine("Processing HTTP request: " + httpRequest.getRequestLine().toString());
            httpRequest.getRequestLine().toString();
            HashMap map = a.f71507a;
            String method = httpRequest.getRequestLine().getMethod();
            String uri = httpRequest.getRequestLine().getUri();
            try {
                StreamRequestMessage streamRequestMessage = new StreamRequestMessage(UpnpRequest.Method.a(method), URI.create(uri));
                UpnpOperation upnpOperation = streamRequestMessage.f78411b;
                if (((UpnpRequest) upnpOperation).f78415b.equals(UpnpRequest.Method.UNKNOWN)) {
                    logger.fine("Method not supported by UPnP stack: " + method);
                    throw new MethodNotSupportedException(tr.g("Method not supported: ", method));
                }
                logger.fine("Created new request message: " + streamRequestMessage);
                ((UpnpRequest) upnpOperation).f78414a = httpRequest.getProtocolVersion().getMinor();
                streamRequestMessage.f78412c = new UpnpHeaders(HeaderUtil.b(httpRequest));
                if (httpRequest instanceof HttpEntityEnclosingRequest) {
                    logger.fine("Request contains entity body, setting on UPnP message");
                    InputStream content = null;
                    try {
                        content = ((HttpEntityEnclosingRequest) httpRequest).getEntity().getContent();
                        byte[] bArrA = IO.a(content);
                        content.close();
                        if (bArrA.length > 0 && ((contentTypeHeader = (ContentTypeHeader) streamRequestMessage.f78412c.k(UpnpHeader.Type.CONTENT_TYPE, ContentTypeHeader.class)) == null || ((obj = contentTypeHeader.f78433a) != null && ((MimeType) obj).f78646a.equals(ContentTypeHeader.f78424c.f78646a)))) {
                            logger.fine("Request contains textual entity body, converting then setting string on message");
                            UpnpMessage.BodyType bodyType = UpnpMessage.BodyType.STRING;
                            String str = new String(bArrA, streamRequestMessage.e() != null ? streamRequestMessage.e() : "UTF-8");
                            streamRequestMessage.f78413e = bodyType;
                            streamRequestMessage.d = str;
                        } else if (bArrA.length > 0) {
                            logger.fine("Request contains binary entity body, setting bytes on message");
                            streamRequestMessage.f78413e = UpnpMessage.BodyType.BYTES;
                            streamRequestMessage.d = bArrA;
                        } else {
                            logger.fine("Request did not contain entity body");
                        }
                    } catch (Throwable th) {
                        if (content != null) {
                            content.close();
                        }
                        throw th;
                    }
                } else {
                    logger.fine("Request did not contain entity body");
                }
                try {
                    StreamResponseMessage streamResponseMessageProcess = HttpServerConnectionUpnpStream.this.process(streamRequestMessage);
                    if (streamResponseMessageProcess != null) {
                        UpnpOperation upnpOperation2 = streamResponseMessageProcess.f78411b;
                        logger.fine("Sending HTTP response message: " + streamResponseMessageProcess);
                        UpnpResponse upnpResponse = (UpnpResponse) upnpOperation2;
                        httpResponse.setStatusLine(new BasicStatusLine(new ProtocolVersion("HTTP", 1, upnpResponse.f78414a), upnpResponse.f78417b, upnpResponse.f78418c));
                        logger.fine("Response status line: " + httpResponse.getStatusLine());
                        httpResponse.setParams(new DefaultedHttpParams(new BasicHttpParams(), HttpServerConnectionUpnpStream.this.params));
                        HeaderUtil.a(httpResponse, streamResponseMessageProcess.f78412c);
                        if (streamResponseMessageProcess.f() && streamResponseMessageProcess.f78413e.equals(UpnpMessage.BodyType.BYTES)) {
                            httpResponse.setEntity(new ByteArrayEntity(streamResponseMessageProcess.c()));
                        } else if (streamResponseMessageProcess.f() && streamResponseMessageProcess.f78413e.equals(UpnpMessage.BodyType.STRING)) {
                            httpResponse.setEntity(new StringEntity(streamResponseMessageProcess.d(), "UTF-8"));
                        }
                    } else {
                        logger.fine("Sending HTTP response: 404");
                        httpResponse.setStatusCode(404);
                    }
                    HttpServerConnectionUpnpStream.this.responseSent(streamResponseMessageProcess);
                } catch (RuntimeException e2) {
                    Logger logger2 = HttpServerConnectionUpnpStream.log;
                    logger2.fine("Exception occured during UPnP stream processing: " + e2);
                    Level level = Level.FINE;
                    if (logger2.isLoggable(level)) {
                        logger2.log(level, "Cause: " + Exceptions.a(e2), Exceptions.a(e2));
                    }
                    logger2.fine("Sending HTTP response: 500");
                    httpResponse.setStatusCode(500);
                    HttpServerConnectionUpnpStream.this.responseException(e2);
                }
            } catch (IllegalArgumentException e3) {
                String strI = d21.i(e3, pq0.r("Invalid request URI: ", uri, ": "));
                HttpServerConnectionUpnpStream.log.warning(strI);
                throw new HttpException(strI, e3);
            }
        }
    }

    public HttpServerConnectionUpnpStream(ProtocolFactory protocolFactory, HttpServerConnection httpServerConnection, HttpParams httpParams) {
        super(protocolFactory);
        BasicHttpProcessor basicHttpProcessor = new BasicHttpProcessor();
        this.httpProcessor = basicHttpProcessor;
        this.connection = httpServerConnection;
        this.params = httpParams;
        basicHttpProcessor.addInterceptor(new ResponseDate());
        basicHttpProcessor.addInterceptor(new ResponseContent());
        basicHttpProcessor.addInterceptor(new ResponseConnControl());
        UpnpHttpService upnpHttpService = new UpnpHttpService(basicHttpProcessor, new DefaultConnectionReuseStrategy(), new DefaultHttpResponseFactory());
        this.httpService = upnpHttpService;
        upnpHttpService.setParams(httpParams);
    }

    public HttpServerConnection getConnection() {
        return this.connection;
    }

    @Override // java.lang.Runnable
    public void run() {
        while (!Thread.interrupted() && this.connection.isOpen()) {
            try {
                try {
                    try {
                        try {
                            log.fine("Handling request on open connection...");
                            BasicHttpContext basicHttpContext = new BasicHttpContext(null);
                            HashMap map = a.f71507a;
                            this.httpService.handleRequest(this.connection, basicHttpContext);
                        } catch (Throwable th) {
                            try {
                                this.connection.shutdown();
                            } catch (IOException e2) {
                                log.fine("Error closing connection: " + e2.getMessage());
                            }
                            throw th;
                        }
                    } catch (HttpException e3) {
                        throw new UnsupportedDataException("Request malformed: " + e3.getMessage(), e3);
                    }
                } catch (IOException e4) {
                    log.warning("I/O exception during HTTP request processing: " + e4.getMessage());
                    responseException(e4);
                    try {
                        this.connection.shutdown();
                        return;
                    } catch (IOException e5) {
                        log.fine("Error closing connection: " + e5.getMessage());
                        return;
                    }
                }
            } catch (SocketTimeoutException e6) {
                log.fine("Server-side closed socket (this is 'normal' behavior of Apache HTTP Core!): " + e6.getMessage());
                try {
                    this.connection.shutdown();
                    return;
                } catch (IOException e7) {
                    log.fine("Error closing connection: " + e7.getMessage());
                    return;
                }
            } catch (ConnectionClosedException e8) {
                log.fine("Client closed connection");
                responseException(e8);
                try {
                    this.connection.shutdown();
                    return;
                } catch (IOException e9) {
                    log.fine("Error closing connection: " + e9.getMessage());
                    return;
                }
            }
        }
        try {
            this.connection.shutdown();
        } catch (IOException e10) {
            log.fine("Error closing connection: " + e10.getMessage());
        }
    }
}
