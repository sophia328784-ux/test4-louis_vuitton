package org.teleal.cling.transport.impl.apache;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.util.logging.Logger;
import org.apache.http.HttpRequestFactory;
import org.apache.http.impl.DefaultHttpServerConnection;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;
import org.teleal.cling.transport.Router;
import org.teleal.cling.transport.spi.InitializationException;
import org.teleal.cling.transport.spi.StreamServer;

/* JADX INFO: loaded from: classes5.dex */
public class StreamServerImpl implements StreamServer<StreamServerConfigurationImpl> {
    private static final Logger log = Logger.getLogger(StreamServer.class.getName());
    protected final StreamServerConfigurationImpl configuration;
    protected Router router;
    protected ServerSocket serverSocket;
    protected HttpParams globalParams = new BasicHttpParams();
    private volatile boolean stopped = false;

    public StreamServerImpl(StreamServerConfigurationImpl streamServerConfigurationImpl) {
        this.configuration = streamServerConfigurationImpl;
    }

    @Override // org.teleal.cling.transport.spi.StreamServer
    public synchronized int getPort() {
        return this.serverSocket.getLocalPort();
    }

    @Override // org.teleal.cling.transport.spi.StreamServer
    public synchronized void init(InetAddress inetAddress, Router router) throws InitializationException {
        try {
            this.router = router;
            this.serverSocket = new ServerSocket(this.configuration.f78637a, 0, inetAddress);
            log.info("Created socket (for receiving TCP streams) on: " + this.serverSocket.getLocalSocketAddress());
            HttpParams httpParams = this.globalParams;
            this.configuration.getClass();
            HttpParams intParameter = httpParams.setIntParameter("http.socket.timeout", 5000);
            this.configuration.getClass();
            HttpParams intParameter2 = intParameter.setIntParameter("http.socket.buffer-size", 8192);
            this.configuration.getClass();
            HttpParams booleanParameter = intParameter2.setBooleanParameter("http.connection.stalecheck", true);
            this.configuration.getClass();
            booleanParameter.setBooleanParameter("http.tcp.nodelay", true);
        } catch (Exception e2) {
            throw new InitializationException("Could not initialize " + getClass().getSimpleName() + ": " + e2.toString(), e2);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        log.fine("Entering blocking receiving loop, listening for HTTP stream requests on: " + this.serverSocket.getLocalSocketAddress());
        while (!this.stopped) {
            try {
                Socket socketAccept = this.serverSocket.accept();
                DefaultHttpServerConnection defaultHttpServerConnection = new DefaultHttpServerConnection() { // from class: org.teleal.cling.transport.impl.apache.StreamServerImpl.1
                    @Override // org.apache.http.impl.AbstractHttpServerConnection
                    public final HttpRequestFactory createHttpRequestFactory() {
                        return new UpnpHttpRequestFactory();
                    }
                };
                log.fine("Incoming connection from: " + socketAccept.getInetAddress());
                defaultHttpServerConnection.bind(socketAccept, this.globalParams);
                this.router.f(new HttpServerConnectionUpnpStream(this.router.a(), defaultHttpServerConnection, this.globalParams));
            } catch (InterruptedIOException e2) {
                log.fine("I/O has been interrupted, stopping receiving loop, bytes transfered: " + e2.bytesTransferred);
            } catch (SocketException e3) {
                if (!this.stopped) {
                    log.fine("Exception using server socket: " + e3.getMessage());
                }
            } catch (IOException e4) {
                log.fine("Exception initializing receiving loop: " + e4.getMessage());
            }
        }
        try {
            Logger logger = log;
            logger.fine("Receiving loop stopped");
            if (this.serverSocket.isClosed()) {
                return;
            }
            logger.fine("Closing streaming server socket");
            this.serverSocket.close();
        } catch (Exception e5) {
            log.info("Exception closing streaming server socket: " + e5.getMessage());
        }
    }

    @Override // org.teleal.cling.transport.spi.StreamServer
    public synchronized void stop() {
        this.stopped = true;
        try {
            this.serverSocket.close();
        } catch (IOException e2) {
            log.fine("Exception closing streaming server socket: " + e2);
        }
    }

    @Override // org.teleal.cling.transport.spi.StreamServer
    public StreamServerConfigurationImpl getConfiguration() {
        return this.configuration;
    }
}
