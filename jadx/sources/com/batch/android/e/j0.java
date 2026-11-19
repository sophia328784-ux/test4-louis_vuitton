package com.batch.android.e;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes2.dex */
public class j0 extends SSLSocketFactory {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final List<String> f23105c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SSLSocketFactory f23106a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String[] f23107b;

    static {
        ArrayList arrayList = new ArrayList();
        f23105c = arrayList;
        arrayList.add("TLSv1.2");
        arrayList.add("TLSv1.3");
    }

    public j0() throws NoSuchAlgorithmException, KeyManagementException {
        SSLContext sSLContext = SSLContext.getInstance(com.networkbench.agent.impl.socket.k.f38194b);
        sSLContext.init(null, null, null);
        this.f23106a = sSLContext.getSocketFactory();
        List listAsList = Arrays.asList(sSLContext.getDefaultSSLParameters().getProtocols());
        ArrayList arrayList = new ArrayList(f23105c);
        arrayList.retainAll(listAsList);
        this.f23107b = (String[]) arrayList.toArray(new String[0]);
    }

    private Socket a(Socket socket) {
        if (socket instanceof SSLSocket) {
            String[] strArr = this.f23107b;
            if (strArr.length > 0) {
                ((SSLSocket) socket).setEnabledProtocols(strArr);
            }
        }
        return socket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket() throws IOException {
        return a(this.f23106a.createSocket());
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return this.f23106a.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        return this.f23106a.getSupportedCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i2, boolean z) throws IOException {
        return a(this.f23106a.createSocket(socket, str, i2, z));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i2) throws IOException {
        return a(this.f23106a.createSocket(str, i2));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i2, InetAddress inetAddress, int i3) throws IOException {
        return a(this.f23106a.createSocket(str, i2, inetAddress, i3));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i2) throws IOException {
        return a(this.f23106a.createSocket(inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i2, InetAddress inetAddress2, int i3) throws IOException {
        return a(this.f23106a.createSocket(inetAddress, i2, inetAddress2, i3));
    }
}
