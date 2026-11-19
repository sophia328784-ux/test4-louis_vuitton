package com.networkbench.agent.impl.instrumentation;

import android.text.TextUtils;
import com.dynatrace.android.callback.Callback;
import com.networkbench.agent.impl.a.a.b;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.d.b.c;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.HttpLibType;
import com.networkbench.agent.impl.instrumentation.io.NBSCountingInputStream;
import com.networkbench.agent.impl.instrumentation.io.NBSCountingOutputStream;
import com.networkbench.agent.impl.instrumentation.io.NBSStreamCompleteEvent;
import com.networkbench.agent.impl.instrumentation.io.NBSStreamCompleteListener;
import com.networkbench.agent.impl.socket.r;
import com.networkbench.agent.impl.util.ai;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.v;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.security.Permission;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public class NBSHttpURLConnectionExtension extends HttpURLConnection {
    private static final e log = f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    NBSCountingInputStream f37362a;
    private HttpURLConnection impl;
    private final List<String> requestHeaderFirstModify;
    private NBSTransactionState transactionState;

    public NBSHttpURLConnectionExtension(HttpURLConnection httpURLConnection) {
        super(httpURLConnection.getURL());
        this.requestHeaderFirstModify = new ArrayList();
        this.impl = httpURLConnection;
        try {
            getTransactionState();
            if (Harvest.isHttp_network_enabled()) {
                if (!r.b(httpURLConnection.getURL().getHost())) {
                    r.b(httpURLConnection.getURL().getHost(), v.a(httpURLConnection.getURL().getHost()));
                }
                this.transactionState.setDnsElapse(r.c(httpURLConnection.getURL().getHost()));
                this.transactionState.setHttpLibType(HttpLibType.URLConnection);
                NBSTransactionStateUtil.setSeriesHeader(this.impl, this.transactionState);
                NBSTransactionStateUtil.setCrossProcessHeader(this.transactionState, httpURLConnection);
                try {
                    this.transactionState.requestHeaderParam.putAll(ak.f(this.impl.getRequestProperties()));
                } catch (Throwable th) {
                    g.e("Util.getHeader requestHeaderParam  has error .... " + th);
                }
            }
        } catch (Throwable th2) {
            g.b("NBSHttpURLConnectionExtension has an error : ", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addTransactionAndErrorData(NBSTransactionState nBSTransactionState) {
        try {
            if (Harvest.isHttp_network_enabled()) {
                try {
                    nBSTransactionState.setContentType(ak.g(this.impl.getContentType()));
                } catch (Exception e2) {
                    log.a("NBSTransactionStateUtil. getcontenttype occur an error", e2);
                }
                try {
                    nBSTransactionState.responseHeaderParam = ak.f(this.impl.getHeaderFields());
                } catch (Exception e3) {
                    g.e("addTransactionAndErrorData has error :  " + e3);
                }
                b bVarEnd = nBSTransactionState.end();
                if (bVarEnd == null) {
                    return;
                }
                if (nBSTransactionState.isError()) {
                    StringBuilder sb = new StringBuilder();
                    try {
                        InputStream errorStream = getErrorStream();
                        if (errorStream instanceof NBSCountingInputStream) {
                            sb.append(((NBSCountingInputStream) errorStream).getBufferAsString());
                        }
                    } catch (Throwable th) {
                        log.e(th.toString());
                    }
                    TreeMap treeMap = new TreeMap();
                    try {
                        if (this.impl.getHeaderFields() != null && this.impl.getHeaderFields().size() > 0) {
                            Map<String, List<String>> headerFields = this.impl.getHeaderFields();
                            for (String str : headerFields.keySet()) {
                                if (!TextUtils.isEmpty(str)) {
                                    treeMap.put(str, headerFields.get(str).get(0));
                                }
                            }
                        }
                    } catch (Exception unused) {
                    }
                    String exception = nBSTransactionState.getException() != null ? nBSTransactionState.getException() : "";
                    log.d("error message:" + exception);
                    if (TextUtils.isEmpty(sb.toString())) {
                        nBSTransactionState.setErrorDataInfo(exception, treeMap, "");
                    } else {
                        nBSTransactionState.setErrorDataInfo(sb.toString(), treeMap, exception);
                    }
                }
                if (bVarEnd.s() != 504 || !nBSTransactionState.getErrorData().f36389a.startsWith("Unsatisfiable")) {
                    ai.a(new c(nBSTransactionState));
                    return;
                }
                log.a("error  504 ,  message:" + nBSTransactionState.getErrorData().f36389a);
            }
        } catch (Exception e4) {
            log.a("NBSHttpURLConnectionExtension addTransactionAndErrorData has an error : ", e4);
        }
    }

    private void checkResponse() {
        if (getTransactionState().isComplete()) {
            return;
        }
        NBSTransactionStateUtil.inspectAndInstrumentResponse(getTransactionState(), this.impl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void error(Exception exc) {
        try {
            if (Harvest.isHttp_network_enabled()) {
                NBSTransactionState transactionState = getTransactionState();
                try {
                    transactionState.setContentType(ak.g(this.impl.getContentType()));
                } catch (Exception e2) {
                    log.a("NBSTransactionStateUtil. getcontenttype occur an error", e2);
                }
                if (transactionState != null) {
                    try {
                        if (!transactionState.hasParseUrlParams) {
                            NBSTransactionStateUtil.processUrlParams(transactionState, this.impl);
                        }
                    } catch (Exception e3) {
                        log.a("NBSTransactionStateUtil.processUrlParams occur an error", e3);
                    }
                }
                if (transactionState.isComplete()) {
                    NBSTransactionStateUtil.setErrorCodeFromException(transactionState, exc);
                    g.u("httpUrlconnet error  setErrorCodeFromException : " + exc.toString());
                    return;
                }
                String exception = transactionState.getException() != null ? transactionState.getException() : exc.toString();
                NBSTransactionStateUtil.inspectAndInstrumentResponse(transactionState, this.impl);
                NBSTransactionStateUtil.setErrorCodeFromExceptionUrl(transactionState, exc);
                if (transactionState.getStatusCode() == 0 || transactionState.getStatusCode() == -1) {
                    transactionState.setErrorCode(-1, exc.toString());
                    transactionState.setStatusCode(-1);
                }
                log.a("error message:" + exception);
                transactionState.end();
                if (transactionState.isError()) {
                    StringBuilder sb = new StringBuilder();
                    try {
                        InputStream errorStream = getErrorStream();
                        if (errorStream instanceof NBSCountingInputStream) {
                            sb.append(((NBSCountingInputStream) errorStream).getBufferAsString());
                        }
                    } catch (Throwable th) {
                        log.e(th.toString());
                    }
                    TreeMap treeMap = new TreeMap();
                    try {
                        if (this.impl.getHeaderFields() != null && this.impl.getHeaderFields().size() > 0) {
                            Map<String, List<String>> headerFields = this.impl.getHeaderFields();
                            for (String str : headerFields.keySet()) {
                                if (!TextUtils.isEmpty(str)) {
                                    treeMap.put(str, headerFields.get(str).get(0));
                                }
                            }
                        }
                    } catch (Throwable unused) {
                    }
                    if (TextUtils.isEmpty(sb.toString())) {
                        transactionState.setErrorDataInfo(exception, treeMap, "");
                    } else {
                        transactionState.setErrorDataInfo(sb.toString(), treeMap, exception);
                    }
                }
                if (transactionState.getStatusCode() != 504 || !transactionState.getErrorData().f36389a.startsWith("Unsatisfiable")) {
                    ai.a(new c(transactionState));
                    return;
                }
                log.a("error  504 ,  message:" + transactionState.getErrorData().f36389a);
            }
        } catch (Exception e4) {
            log.a("NBSHttpsURLConnectionExtension error() has an error : ", e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public NBSTransactionState getTransactionState() {
        if (this.transactionState == null) {
            NBSTransactionState nBSTransactionState = new NBSTransactionState();
            this.transactionState = nBSTransactionState;
            NBSTransactionStateUtil.setUrlAndCarrier(nBSTransactionState, this.impl);
        }
        return this.transactionState;
    }

    @Override // java.net.URLConnection
    public void addRequestProperty(String str, String str2) {
        if (this.requestHeaderFirstModify.contains(str)) {
            if (this.transactionState.checkAmpsHeader(str)) {
                this.transactionState.getApmsList().put(str, str2);
            }
            this.impl.addRequestProperty(str, str2);
        } else {
            if (str.equals("sw8")) {
                this.impl.setRequestProperty(str, str2);
            } else if (str.equals("traceparent")) {
                this.impl.setRequestProperty(str, str2);
                if (!this.requestHeaderFirstModify.contains("tracestate")) {
                    this.impl.setRequestProperty("tracestate", "");
                    this.transactionState.requestHeaderParam.remove("tracestate");
                    if (this.transactionState.getApmsList().containsKey("tracestate")) {
                        this.transactionState.getApmsList().put("tracestate", "");
                    }
                }
            } else {
                boolean zEquals = str.equals("tracestate");
                HttpURLConnection httpURLConnection = this.impl;
                if (zEquals) {
                    httpURLConnection.setRequestProperty(str, str2);
                    if (!this.requestHeaderFirstModify.contains("traceparent")) {
                        this.impl.setRequestProperty("traceparent", "");
                        this.transactionState.requestHeaderParam.remove("traceparent");
                        if (this.transactionState.getApmsList().containsKey("traceparent")) {
                            this.transactionState.getApmsList().put("traceparent", "");
                        }
                    }
                } else {
                    httpURLConnection.setRequestProperty(str, str2);
                }
            }
            if (this.transactionState.checkAmpsHeader(str)) {
                this.transactionState.getApmsList().put(str, str2);
            }
            this.requestHeaderFirstModify.add(str);
        }
        this.transactionState.requestHeaderParam.put(str, str2);
    }

    @Override // java.net.URLConnection
    public void connect() throws IOException {
        getTransactionState();
        try {
            this.impl.connect();
        } catch (IOException e2) {
            error(e2);
            throw e2;
        }
    }

    @Override // java.net.HttpURLConnection
    public void disconnect() {
        try {
            NBSTransactionState nBSTransactionState = this.transactionState;
            if (nBSTransactionState != null && !nBSTransactionState.isComplete()) {
                NBSTransactionState nBSTransactionState2 = this.transactionState;
                if (nBSTransactionState2.isConnect) {
                    addTransactionAndErrorData(nBSTransactionState2);
                }
            }
        } catch (Throwable unused) {
        }
        this.impl.disconnect();
    }

    @Override // java.net.URLConnection
    public boolean getAllowUserInteraction() {
        return this.impl.getAllowUserInteraction();
    }

    @Override // java.net.URLConnection
    public int getConnectTimeout() {
        return this.impl.getConnectTimeout();
    }

    @Override // java.net.URLConnection
    public Object getContent() throws IOException {
        getTransactionState();
        try {
            Object content = this.impl.getContent();
            if (this.impl.getContentLength() >= 0) {
                NBSTransactionState transactionState = getTransactionState();
                if (!transactionState.isComplete()) {
                    addTransactionAndErrorData(transactionState);
                }
            }
            return content;
        } catch (IOException e2) {
            error(e2);
            throw e2;
        }
    }

    @Override // java.net.URLConnection
    public String getContentEncoding() {
        getTransactionState();
        String contentEncoding = this.impl.getContentEncoding();
        checkResponse();
        return contentEncoding;
    }

    @Override // java.net.URLConnection
    public int getContentLength() {
        getTransactionState();
        int contentLength = this.impl.getContentLength();
        checkResponse();
        return contentLength;
    }

    @Override // java.net.URLConnection
    public String getContentType() {
        getTransactionState();
        String contentType = this.impl.getContentType();
        checkResponse();
        return contentType;
    }

    @Override // java.net.URLConnection
    public long getDate() {
        getTransactionState();
        long date = this.impl.getDate();
        checkResponse();
        return date;
    }

    @Override // java.net.URLConnection
    public boolean getDefaultUseCaches() {
        return this.impl.getDefaultUseCaches();
    }

    @Override // java.net.URLConnection
    public boolean getDoInput() {
        return this.impl.getDoInput();
    }

    @Override // java.net.URLConnection
    public boolean getDoOutput() {
        return this.impl.getDoOutput();
    }

    @Override // java.net.HttpURLConnection
    public InputStream getErrorStream() {
        getTransactionState();
        NBSCountingInputStream nBSCountingInputStream = this.f37362a;
        if (nBSCountingInputStream != null) {
            return nBSCountingInputStream;
        }
        try {
            NBSCountingInputStream nBSCountingInputStream2 = new NBSCountingInputStream(this.impl.getErrorStream(), true);
            this.f37362a = nBSCountingInputStream2;
            nBSCountingInputStream2.addStreamCompleteListener(new NBSStreamCompleteListener() { // from class: com.networkbench.agent.impl.instrumentation.NBSHttpURLConnectionExtension.2
                @Override // com.networkbench.agent.impl.instrumentation.io.NBSStreamCompleteListener
                public void streamComplete(NBSStreamCompleteEvent nBSStreamCompleteEvent) {
                    if (NBSHttpURLConnectionExtension.this.transactionState.isComplete()) {
                        return;
                    }
                    int iK = 0;
                    try {
                        iK = Callback.k(NBSHttpURLConnectionExtension.this.impl);
                        NBSHttpURLConnectionExtension.this.transactionState.setStatusCode(iK);
                    } catch (IOException unused) {
                    }
                    long bytes = nBSStreamCompleteEvent.getBytes();
                    if (iK != 206) {
                        long jC = Callback.c(NBSHttpURLConnectionExtension.this.impl);
                        if (jC >= 0) {
                            bytes = jC;
                        }
                    }
                    NBSHttpURLConnectionExtension.this.transactionState.setBytesReceived(bytes);
                    NBSHttpURLConnectionExtension nBSHttpURLConnectionExtension = NBSHttpURLConnectionExtension.this;
                    nBSHttpURLConnectionExtension.addTransactionAndErrorData(nBSHttpURLConnectionExtension.transactionState);
                }

                @Override // com.networkbench.agent.impl.instrumentation.io.NBSStreamCompleteListener
                public void streamError(NBSStreamCompleteEvent nBSStreamCompleteEvent) {
                    NBSHttpURLConnectionExtension.log.a("streamError:" + nBSStreamCompleteEvent.toString());
                    if (!NBSHttpURLConnectionExtension.this.transactionState.isComplete()) {
                        NBSHttpURLConnectionExtension.this.transactionState.setBytesReceived(nBSStreamCompleteEvent.getBytes());
                    }
                    NBSHttpURLConnectionExtension.this.error(nBSStreamCompleteEvent.getException());
                }
            });
            return this.f37362a;
        } catch (Throwable th) {
            log.e("errorStream :" + th.toString());
            return this.impl.getErrorStream();
        }
    }

    @Override // java.net.URLConnection
    public long getExpiration() {
        getTransactionState();
        long expiration = this.impl.getExpiration();
        checkResponse();
        return expiration;
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public String getHeaderField(int i2) {
        getTransactionState();
        String headerField = this.impl.getHeaderField(i2);
        checkResponse();
        return headerField;
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public long getHeaderFieldDate(String str, long j2) {
        getTransactionState();
        long headerFieldDate = this.impl.getHeaderFieldDate(str, j2);
        checkResponse();
        return headerFieldDate;
    }

    @Override // java.net.URLConnection
    public int getHeaderFieldInt(String str, int i2) {
        getTransactionState();
        int headerFieldInt = this.impl.getHeaderFieldInt(str, i2);
        checkResponse();
        return headerFieldInt;
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public String getHeaderFieldKey(int i2) {
        getTransactionState();
        String headerFieldKey = this.impl.getHeaderFieldKey(i2);
        checkResponse();
        return headerFieldKey;
    }

    @Override // java.net.URLConnection
    public Map<String, List<String>> getHeaderFields() {
        getTransactionState();
        Map<String, List<String>> headerFields = this.impl.getHeaderFields();
        checkResponse();
        return headerFields;
    }

    @Override // java.net.URLConnection
    public long getIfModifiedSince() {
        getTransactionState();
        long ifModifiedSince = this.impl.getIfModifiedSince();
        checkResponse();
        return ifModifiedSince;
    }

    @Override // java.net.URLConnection
    public InputStream getInputStream() throws IOException {
        final NBSTransactionState transactionState = getTransactionState();
        try {
            ai.c(transactionState);
            NBSCountingInputStream nBSCountingInputStream = new NBSCountingInputStream(this.impl.getInputStream());
            NBSTransactionStateUtil.inspectAndInstrumentResponse(transactionState, this.impl);
            nBSCountingInputStream.addStreamCompleteListener(new NBSStreamCompleteListener() { // from class: com.networkbench.agent.impl.instrumentation.NBSHttpURLConnectionExtension.1
                @Override // com.networkbench.agent.impl.instrumentation.io.NBSStreamCompleteListener
                public void streamComplete(NBSStreamCompleteEvent nBSStreamCompleteEvent) {
                    if (transactionState.isComplete()) {
                        return;
                    }
                    long jC = Callback.c(NBSHttpURLConnectionExtension.this.impl);
                    long bytes = nBSStreamCompleteEvent.getBytes();
                    if (jC < 0) {
                        jC = bytes;
                    }
                    transactionState.setBytesReceived(jC);
                    try {
                        transactionState.setStatusCode(Callback.k(NBSHttpURLConnectionExtension.this.impl));
                    } catch (IOException unused) {
                    }
                    NBSHttpURLConnectionExtension.this.addTransactionAndErrorData(transactionState);
                }

                @Override // com.networkbench.agent.impl.instrumentation.io.NBSStreamCompleteListener
                public void streamError(NBSStreamCompleteEvent nBSStreamCompleteEvent) {
                    NBSHttpURLConnectionExtension.log.a("streamError:" + nBSStreamCompleteEvent.toString());
                    if (!transactionState.isComplete()) {
                        transactionState.setBytesReceived(nBSStreamCompleteEvent.getBytes());
                    }
                    try {
                        transactionState.setStatusCode(Callback.k(NBSHttpURLConnectionExtension.this.impl));
                    } catch (IOException e2) {
                        g.u(" streamError : " + e2.toString());
                    }
                    g.u("NBSHttpsURLConnectionExtension  streamError : " + nBSStreamCompleteEvent.getBytes());
                    NBSHttpURLConnectionExtension.this.error(nBSStreamCompleteEvent.getException());
                }
            });
            return nBSCountingInputStream;
        } catch (IOException e2) {
            error(e2);
            throw e2;
        }
    }

    @Override // java.net.HttpURLConnection
    public boolean getInstanceFollowRedirects() {
        return this.impl.getInstanceFollowRedirects();
    }

    @Override // java.net.URLConnection
    public long getLastModified() {
        getTransactionState();
        long lastModified = this.impl.getLastModified();
        checkResponse();
        return lastModified;
    }

    @Override // java.net.URLConnection
    public OutputStream getOutputStream() throws IOException {
        try {
            NBSCountingOutputStream nBSCountingOutputStream = new NBSCountingOutputStream(this.impl.getOutputStream());
            nBSCountingOutputStream.addStreamCompleteListener(new NBSStreamCompleteListener() { // from class: com.networkbench.agent.impl.instrumentation.NBSHttpURLConnectionExtension.3
                @Override // com.networkbench.agent.impl.instrumentation.io.NBSStreamCompleteListener
                public void streamComplete(NBSStreamCompleteEvent nBSStreamCompleteEvent) {
                    NBSTransactionState transactionState = NBSHttpURLConnectionExtension.this.getTransactionState();
                    if (transactionState.isComplete()) {
                        return;
                    }
                    String requestProperty = NBSHttpURLConnectionExtension.this.impl.getRequestProperty("content-length");
                    long bytes = nBSStreamCompleteEvent.getBytes();
                    if (requestProperty != null) {
                        try {
                            bytes = Long.parseLong(requestProperty);
                        } catch (NumberFormatException unused) {
                        }
                    }
                    transactionState.setBytesSentAfterComplete(bytes);
                }

                @Override // com.networkbench.agent.impl.instrumentation.io.NBSStreamCompleteListener
                public void streamError(NBSStreamCompleteEvent nBSStreamCompleteEvent) {
                    NBSTransactionState transactionState = NBSHttpURLConnectionExtension.this.getTransactionState();
                    if (!transactionState.isComplete()) {
                        transactionState.setBytesSent(nBSStreamCompleteEvent.getBytes());
                    }
                    try {
                        transactionState.setStatusCode(Callback.k(NBSHttpURLConnectionExtension.this.impl));
                    } catch (IOException unused) {
                    }
                    NBSHttpURLConnectionExtension.this.error(nBSStreamCompleteEvent.getException());
                }
            });
            return nBSCountingOutputStream;
        } catch (IOException e2) {
            error(e2);
            throw e2;
        }
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public Permission getPermission() throws IOException {
        return this.impl.getPermission();
    }

    @Override // java.net.URLConnection
    public int getReadTimeout() {
        return this.impl.getReadTimeout();
    }

    @Override // java.net.HttpURLConnection
    public String getRequestMethod() {
        NBSTransactionState transactionState = getTransactionState();
        String requestMethod = this.impl.getRequestMethod();
        NBSTransactionStateUtil.setRequestMethod(transactionState, requestMethod);
        this.transactionState.setHttpLibType(HttpLibType.URLConnection);
        return requestMethod;
    }

    @Override // java.net.URLConnection
    public Map<String, List<String>> getRequestProperties() {
        return this.impl.getRequestProperties();
    }

    @Override // java.net.URLConnection
    public String getRequestProperty(String str) {
        return this.impl.getRequestProperty(str);
    }

    @Override // java.net.HttpURLConnection
    public int getResponseCode() throws IOException {
        getTransactionState();
        try {
            int responseCode = this.impl.getResponseCode();
            this.transactionState.setStatusCode(responseCode);
            this.transactionState.setEndTime(System.currentTimeMillis());
            ai.a(this.transactionState);
            checkResponse();
            return responseCode;
        } catch (IOException e2) {
            error(e2);
            throw e2;
        }
    }

    @Override // java.net.HttpURLConnection
    public String getResponseMessage() throws IOException {
        getTransactionState();
        try {
            String responseMessage = this.impl.getResponseMessage();
            checkResponse();
            return responseMessage;
        } catch (IOException e2) {
            error(e2);
            throw e2;
        }
    }

    @Override // java.net.URLConnection
    public URL getURL() {
        return this.impl.getURL();
    }

    @Override // java.net.URLConnection
    public boolean getUseCaches() {
        return this.impl.getUseCaches();
    }

    @Override // java.net.URLConnection
    public void setAllowUserInteraction(boolean z) {
        this.impl.setAllowUserInteraction(z);
    }

    @Override // java.net.HttpURLConnection
    public void setChunkedStreamingMode(int i2) {
        this.impl.setChunkedStreamingMode(i2);
    }

    @Override // java.net.URLConnection
    public void setConnectTimeout(int i2) {
        this.impl.setConnectTimeout(i2);
    }

    @Override // java.net.URLConnection
    public void setDefaultUseCaches(boolean z) {
        this.impl.setDefaultUseCaches(z);
    }

    @Override // java.net.URLConnection
    public void setDoInput(boolean z) {
        this.impl.setDoInput(z);
    }

    @Override // java.net.URLConnection
    public void setDoOutput(boolean z) {
        this.impl.setDoOutput(z);
    }

    @Override // java.net.HttpURLConnection
    public void setFixedLengthStreamingMode(int i2) {
        this.impl.setFixedLengthStreamingMode(i2);
    }

    @Override // java.net.URLConnection
    public void setIfModifiedSince(long j2) {
        this.impl.setIfModifiedSince(j2);
    }

    @Override // java.net.HttpURLConnection
    public void setInstanceFollowRedirects(boolean z) {
        this.impl.setInstanceFollowRedirects(z);
    }

    @Override // java.net.URLConnection
    public void setReadTimeout(int i2) {
        this.impl.setReadTimeout(i2);
    }

    @Override // java.net.HttpURLConnection
    public void setRequestMethod(String str) throws ProtocolException {
        getTransactionState();
        try {
            this.impl.setRequestMethod(str);
            NBSTransactionState nBSTransactionState = this.transactionState;
            if (nBSTransactionState != null) {
                nBSTransactionState.setHttpLibType(HttpLibType.URLConnection);
                NBSTransactionStateUtil.setRequestMethod(getTransactionState(), str);
            }
        } catch (ProtocolException e2) {
            error(e2);
            throw e2;
        }
    }

    @Override // java.net.URLConnection
    public void setRequestProperty(String str, String str2) {
        if (this.requestHeaderFirstModify.contains(str)) {
            if (this.transactionState.checkAmpsHeader(str)) {
                this.transactionState.getApmsList().put(str, str2);
            }
            this.impl.setRequestProperty(str, str2);
        } else {
            if (str.equals("sw8")) {
                this.impl.setRequestProperty(str, str2);
            } else if (str.equals("traceparent")) {
                this.impl.setRequestProperty(str, str2);
                if (!this.requestHeaderFirstModify.contains("tracestate")) {
                    this.impl.setRequestProperty("tracestate", "");
                    if (this.transactionState.getApmsList().containsKey("tracestate")) {
                        this.transactionState.getApmsList().put("tracestate", "");
                    }
                }
            } else {
                boolean zEquals = str.equals("tracestate");
                HttpURLConnection httpURLConnection = this.impl;
                if (zEquals) {
                    httpURLConnection.setRequestProperty(str, str2);
                    if (!this.requestHeaderFirstModify.contains("traceparent")) {
                        this.impl.setRequestProperty("traceparent", "");
                        this.transactionState.requestHeaderParam.remove("traceparent");
                        if (this.transactionState.getApmsList().containsKey("traceparent")) {
                            this.transactionState.getApmsList().put("traceparent", "");
                        }
                    }
                } else {
                    httpURLConnection.setRequestProperty(str, str2);
                }
            }
            if (this.transactionState.checkAmpsHeader(str)) {
                this.transactionState.getApmsList().put(str, str2);
            }
            this.requestHeaderFirstModify.add(str);
        }
        this.transactionState.requestHeaderParam.put(str, str2);
    }

    @Override // java.net.URLConnection
    public void setUseCaches(boolean z) {
        this.impl.setUseCaches(z);
    }

    @Override // java.net.URLConnection
    public String toString() {
        return this.impl.toString();
    }

    @Override // java.net.HttpURLConnection
    public boolean usingProxy() {
        return this.impl.usingProxy();
    }

    @Override // java.net.URLConnection
    public String getHeaderField(String str) {
        getTransactionState();
        String headerField = this.impl.getHeaderField(str);
        checkResponse();
        return headerField;
    }

    @Override // java.net.URLConnection
    public Object getContent(Class[] clsArr) throws IOException {
        getTransactionState();
        try {
            Object content = this.impl.getContent(clsArr);
            checkResponse();
            return content;
        } catch (IOException e2) {
            error(e2);
            throw e2;
        }
    }
}
