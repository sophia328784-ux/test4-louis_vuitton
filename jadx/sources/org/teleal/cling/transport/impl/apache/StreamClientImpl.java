package org.teleal.cling.transport.impl.apache;

import com.dynatrace.android.callback.HttpClientCallback;
import com.linkplay.log.LinkplayLog;
import com.linkplay.network.SecurityConstants;
import defpackage.x1;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Field;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.URI;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Logger;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.MethodNotSupportedException;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.client.DefaultHttpRequestRetryHandler;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.DefaultedHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.EntityUtils;
import org.teleal.cling.model.ServerClientTokens;
import org.teleal.cling.model.message.StreamRequestMessage;
import org.teleal.cling.model.message.StreamResponseMessage;
import org.teleal.cling.model.message.UpnpHeaders;
import org.teleal.cling.model.message.UpnpMessage;
import org.teleal.cling.model.message.UpnpRequest;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.message.header.ContentTypeHeader;
import org.teleal.cling.model.message.header.UpnpHeader;
import org.teleal.cling.transport.spi.InitializationException;
import org.teleal.cling.transport.spi.StreamClient;
import org.teleal.common.util.Exceptions;
import org.teleal.common.util.MimeType;

/* JADX INFO: loaded from: classes5.dex */
public class StreamClientImpl implements StreamClient<StreamClientConfigurationImpl> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Logger f78631e = Logger.getLogger(StreamClient.class.getName());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final HashMap f78632f = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StreamClientConfigurationImpl f78633a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ThreadSafeClientConnManager f78634b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DefaultHttpClient f78635c;
    public final HttpParams d;

    /* JADX INFO: renamed from: org.teleal.cling.transport.impl.apache.StreamClientImpl$4, reason: invalid class name */
    class AnonymousClass4 implements ResponseHandler<StreamResponseMessage> {
        @Override // org.apache.http.client.ResponseHandler
        public final StreamResponseMessage handleResponse(HttpResponse httpResponse) throws IOException {
            Object obj;
            StatusLine statusLine = httpResponse.getStatusLine();
            Logger logger = StreamClientImpl.f78631e;
            logger.fine("Received HTTP response: " + statusLine);
            StreamResponseMessage streamResponseMessage = new StreamResponseMessage(new UpnpResponse(statusLine.getStatusCode(), statusLine.getReasonPhrase()));
            streamResponseMessage.f78412c = new UpnpHeaders(HeaderUtil.b(httpResponse));
            HttpEntity entity = httpResponse.getEntity();
            if (entity != null && entity.getContentLength() != 0) {
                ContentTypeHeader contentTypeHeader = (ContentTypeHeader) streamResponseMessage.f78412c.k(UpnpHeader.Type.CONTENT_TYPE, ContentTypeHeader.class);
                if (contentTypeHeader == null || ((obj = contentTypeHeader.f78433a) != null && ((MimeType) obj).f78646a.equals(ContentTypeHeader.f78424c.f78646a))) {
                    logger.fine("HTTP response message contains text entity");
                    UpnpMessage.BodyType bodyType = UpnpMessage.BodyType.STRING;
                    String string = EntityUtils.toString(entity);
                    streamResponseMessage.f78413e = bodyType;
                    streamResponseMessage.d = string;
                    return streamResponseMessage;
                }
                logger.fine("HTTP response message contains binary entity");
                UpnpMessage.BodyType bodyType2 = UpnpMessage.BodyType.BYTES;
                byte[] byteArray = EntityUtils.toByteArray(entity);
                streamResponseMessage.f78413e = bodyType2;
                streamResponseMessage.d = byteArray;
            }
            return streamResponseMessage;
        }
    }

    /* JADX INFO: renamed from: org.teleal.cling.transport.impl.apache.StreamClientImpl$5, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass5 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f78636a;

        static {
            int[] iArr = new int[UpnpRequest.Method.values().length];
            f78636a = iArr;
            try {
                iArr[UpnpRequest.Method.GET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f78636a[UpnpRequest.Method.SUBSCRIBE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f78636a[UpnpRequest.Method.UNSUBSCRIBE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f78636a[UpnpRequest.Method.POST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f78636a[UpnpRequest.Method.NOTIFY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public interface INoneResponseAction {
    }

    static {
        for (Field field : INoneResponseAction.class.getFields()) {
            String name = field.getName();
            f78632f.put(name, name);
        }
    }

    public StreamClientImpl(StreamClientConfigurationImpl streamClientConfigurationImpl) throws InitializationException {
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        this.d = basicHttpParams;
        this.f78633a = streamClientConfigurationImpl;
        streamClientConfigurationImpl.getClass();
        ConnManagerParams.setMaxTotalConnections(basicHttpParams, 1024);
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, streamClientConfigurationImpl.a() * 1000);
        HttpConnectionParams.setSoTimeout(basicHttpParams, streamClientConfigurationImpl.b() * 1000);
        HttpProtocolParams.setContentCharset(basicHttpParams, "UTF-8");
        HttpConnectionParams.setStaleCheckingEnabled(basicHttpParams, streamClientConfigurationImpl.d());
        SchemeRegistry schemeRegistry = new SchemeRegistry();
        schemeRegistry.register(new Scheme(SecurityConstants.SECURITY_NONE, PlainSocketFactory.getSocketFactory(), 80));
        ThreadSafeClientConnManager threadSafeClientConnManager = new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry);
        this.f78634b = threadSafeClientConnManager;
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient(threadSafeClientConnManager, basicHttpParams);
        this.f78635c = defaultHttpClient;
        if (streamClientConfigurationImpl.c() != -1) {
            defaultHttpClient.setHttpRequestRetryHandler(new DefaultHttpRequestRetryHandler(streamClientConfigurationImpl.c(), false));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static HttpUriRequest b(StreamRequestMessage streamRequestMessage, UpnpRequest upnpRequest) throws MethodNotSupportedException {
        int[] iArr = AnonymousClass5.f78636a;
        UpnpRequest.Method method = upnpRequest.f78415b;
        URI uri = upnpRequest.f78416c;
        int i2 = iArr[method.ordinal()];
        if (i2 == 1) {
            HttpGet httpGet = new HttpGet(uri);
            HttpClientCallback.i(httpGet);
            return httpGet;
        }
        if (i2 == 2) {
            HttpGet httpGet2 = new HttpGet(uri) { // from class: org.teleal.cling.transport.impl.apache.StreamClientImpl.1
                @Override // org.apache.http.client.methods.HttpGet, org.apache.http.client.methods.HttpRequestBase, org.apache.http.client.methods.HttpUriRequest
                public final String getMethod() {
                    return UpnpRequest.Method.SUBSCRIBE.b();
                }
            };
            HttpClientCallback.i(httpGet2);
            return httpGet2;
        }
        if (i2 == 3) {
            HttpGet httpGet3 = new HttpGet(uri) { // from class: org.teleal.cling.transport.impl.apache.StreamClientImpl.2
                @Override // org.apache.http.client.methods.HttpGet, org.apache.http.client.methods.HttpRequestBase, org.apache.http.client.methods.HttpUriRequest
                public final String getMethod() {
                    return UpnpRequest.Method.UNSUBSCRIBE.b();
                }
            };
            HttpClientCallback.i(httpGet3);
            return httpGet3;
        }
        if (i2 == 4) {
            HttpPost httpPost = new HttpPost(uri);
            HttpClientCallback.i(streamRequestMessage);
            httpPost.setEntity(c(streamRequestMessage));
            return httpPost;
        }
        if (i2 != 5) {
            throw new MethodNotSupportedException(upnpRequest.f78415b.b());
        }
        HttpPost httpPost2 = new HttpPost(uri) { // from class: org.teleal.cling.transport.impl.apache.StreamClientImpl.3
            @Override // org.apache.http.client.methods.HttpPost, org.apache.http.client.methods.HttpRequestBase, org.apache.http.client.methods.HttpUriRequest
            public final String getMethod() {
                return UpnpRequest.Method.NOTIFY.b();
            }
        };
        HttpClientCallback.i(streamRequestMessage);
        httpPost2.setEntity(c(streamRequestMessage));
        return httpPost2;
    }

    public static HttpEntity c(UpnpMessage upnpMessage) {
        boolean zEquals = upnpMessage.f78413e.equals(UpnpMessage.BodyType.BYTES);
        Logger logger = f78631e;
        if (zEquals) {
            logger.fine("Preparing HTTP request entity as byte[]");
            return new ByteArrayEntity(upnpMessage.c());
        }
        logger.fine("Preparing HTTP request entity as string");
        try {
            String strE = upnpMessage.e();
            String strD = upnpMessage.d();
            if (strE == null) {
                strE = "UTF-8";
            }
            return new StringEntity(strD, strE);
        } catch (Exception e2) {
            x1.m(e2);
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x013f  */
    /* JADX WARN: Code duplicated, block: B:38:0x0142 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:39:0x0143  */
    /* JADX WARN: Instruction removed from duplicated block: B:39:0x0143, please report this as an issue */
    @Override // org.teleal.cling.transport.spi.StreamClient
    public final StreamResponseMessage a(StreamRequestMessage streamRequestMessage) {
        String string;
        StreamResponseMessage streamResponseMessage;
        Socket socket;
        UpnpRequest upnpRequest = (UpnpRequest) streamRequestMessage.f78411b;
        StringBuilder sb = new StringBuilder("Preparing HTTP request message with method '");
        UpnpRequest.Method method = upnpRequest.f78415b;
        URI uri = upnpRequest.f78416c;
        sb.append(method.b());
        sb.append("': ");
        sb.append(streamRequestMessage);
        String string2 = sb.toString();
        Logger logger = f78631e;
        logger.fine(string2);
        try {
            UpnpHeaders upnpHeaders = streamRequestMessage.f78412c;
            UpnpHeader.Type type = UpnpHeader.Type.SOAPACTION;
            if (upnpHeaders.f78409c == null) {
                upnpHeaders.m();
            }
            if (upnpHeaders.f78409c.containsKey(type)) {
                if (upnpHeaders.f78409c == null) {
                    upnpHeaders.m();
                }
                string = ((UpnpHeader) ((List) upnpHeaders.f78409c.get(type)).get(0)).f78433a.toString();
            } else {
                string = null;
            }
        } catch (Exception unused) {
        }
        if (string == null) {
            streamResponseMessage = null;
        } else {
            try {
                if (f78632f.containsKey(string.trim().substring(string.lastIndexOf("#") + 1).toUpperCase())) {
                    String host = uri.getHost();
                    int port = uri.getPort();
                    try {
                        try {
                            socket = new Socket();
                            try {
                                socket.setSoTimeout(10000);
                                socket.connect(new InetSocketAddress(host, port), 10000);
                                int length = streamRequestMessage.c().length;
                                OutputStream outputStream = socket.getOutputStream();
                                outputStream.write((("POST " + uri.getPath() + " HTTP/1.1\r\n") + ("Host: " + host + " \r\n") + ("SOAPACTION: \"" + string + "\"\r\n") + "Content-Type: text/xml; charset=\"utf-8\"\r\n" + ("Content-Length: " + length + "\r\n\r\n")).getBytes());
                                outputStream.write(streamRequestMessage.c());
                                outputStream.flush();
                                outputStream.close();
                                socket.close();
                            } catch (Throwable th) {
                                th = th;
                                try {
                                    th.printStackTrace();
                                    if (socket != null) {
                                        socket.close();
                                    }
                                    streamResponseMessage = new StreamResponseMessage("NO REPONSE WITH SOAP-ACTION : ".concat(string));
                                    if (streamResponseMessage != null) {
                                        return streamResponseMessage;
                                    }
                                    UpnpRequest upnpRequest2 = (UpnpRequest) streamRequestMessage.f78411b;
                                    logger.fine("Preparing HTTP request message with method '" + upnpRequest2.f78415b.b() + "': " + streamRequestMessage);
                                    try {
                                        HttpUriRequest httpUriRequestB = b(streamRequestMessage, upnpRequest2);
                                        httpUriRequestB.setParams(d(streamRequestMessage));
                                        HeaderUtil.a(httpUriRequestB, streamRequestMessage.f78412c);
                                        logger.fine("Sending HTTP request: " + httpUriRequestB.getURI());
                                        return (StreamResponseMessage) HttpClientCallback.c(this.f78635c, httpUriRequestB, new AnonymousClass4());
                                    } catch (MethodNotSupportedException e2) {
                                        LinkplayLog.e("UPNP-SEARCH", "Request aborted: " + e2.getMessage());
                                        logger.warning("Request aborted: " + e2.toString());
                                        return null;
                                    } catch (ClientProtocolException e3) {
                                        LinkplayLog.e("UPNP-SEARCH", "HTTP protocol exception executing request: " + e3.getMessage());
                                        logger.warning("HTTP protocol exception executing request: " + streamRequestMessage);
                                        logger.warning("Cause: " + Exceptions.a(e3));
                                        return null;
                                    } catch (IOException e4) {
                                        LinkplayLog.e("UPNP-SEARCH", "Client connection was aborted: " + e4.getMessage());
                                        logger.fine("Client connection was aborted: " + e4.getMessage());
                                        return null;
                                    } catch (Exception e5) {
                                        LinkplayLog.e("UPNP-SEARCH", "Sending HTTP request not supported: " + e5.getMessage());
                                        logger.fine("Sending HTTP request not supported:  " + e5.getMessage());
                                        return null;
                                    }
                                } catch (Throwable th2) {
                                    if (socket != null) {
                                        try {
                                            socket.close();
                                        } catch (Exception unused2) {
                                        }
                                    }
                                    throw th2;
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            socket = null;
                        }
                    } catch (Exception unused3) {
                    }
                    streamResponseMessage = new StreamResponseMessage("NO REPONSE WITH SOAP-ACTION : ".concat(string));
                } else {
                    streamResponseMessage = null;
                }
            } catch (Exception unused4) {
            }
        }
        if (streamResponseMessage != null) {
            return streamResponseMessage;
        }
        UpnpRequest upnpRequest3 = (UpnpRequest) streamRequestMessage.f78411b;
        logger.fine("Preparing HTTP request message with method '" + upnpRequest3.f78415b.b() + "': " + streamRequestMessage);
        HttpUriRequest httpUriRequestB2 = b(streamRequestMessage, upnpRequest3);
        httpUriRequestB2.setParams(d(streamRequestMessage));
        HeaderUtil.a(httpUriRequestB2, streamRequestMessage.f78412c);
        logger.fine("Sending HTTP request: " + httpUriRequestB2.getURI());
        return (StreamResponseMessage) HttpClientCallback.c(this.f78635c, httpUriRequestB2, new AnonymousClass4());
    }

    public final HttpParams d(StreamRequestMessage streamRequestMessage) {
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        basicHttpParams.setParameter("http.protocol.version", ((UpnpRequest) streamRequestMessage.f78411b).f78414a == 0 ? HttpVersion.HTTP_1_0 : HttpVersion.HTTP_1_1);
        int i2 = streamRequestMessage.f78410a;
        this.f78633a.getClass();
        HttpProtocolParams.setUserAgent(basicHttpParams, new ServerClientTokens(i2, 0).toString());
        return new DefaultedHttpParams(basicHttpParams, this.d);
    }

    @Override // org.teleal.cling.transport.spi.StreamClient
    public final void stop() {
        f78631e.fine("Shutting down HTTP client connection manager/pool");
        this.f78634b.shutdown();
    }
}
