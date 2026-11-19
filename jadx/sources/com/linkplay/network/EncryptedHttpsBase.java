package com.linkplay.network;

import android.content.Context;
import com.linkplay.core.app.LPDeviceManager;
import com.networkbench.agent.impl.socket.k;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.OkHttpClient;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.tls.CertificateChainCleaner;

/* JADX INFO: loaded from: classes2.dex */
public class EncryptedHttpsBase extends HttpRequestUtils {
    AmazonX509TrustManager amazonX509TrustManager = new AmazonX509TrustManager();
    protected Context context;

    public EncryptedHttpsBase() {
        Context context = LPDeviceManager.getInstance().getContext();
        this.context = context;
        if (context == null) {
            return;
        }
        SSLSocketFactory sSLSocketFactory = getSSLSocketFactory();
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        builder.c(OkHttpDataUtil.getReadTimeOut());
        builder.d(OkHttpDataUtil.getWriteTimeOut());
        builder.b(OkHttpDataUtil.getConnectTimeOut());
        HostnameVerifier hostnameVerifier = new HostnameVerifier(this) { // from class: com.linkplay.network.EncryptedHttpsBase.1
            @Override // javax.net.ssl.HostnameVerifier
            public boolean verify(String str, SSLSession sSLSession) {
                return true;
            }
        };
        if (hostnameVerifier != builder.u) {
            builder.C = null;
        }
        builder.u = hostnameVerifier;
        AmazonX509TrustManager amazonX509TrustManager = this.amazonX509TrustManager;
        sSLSocketFactory.getClass();
        amazonX509TrustManager.getClass();
        if (!sSLSocketFactory.equals(builder.q) || !amazonX509TrustManager.equals(builder.r)) {
            builder.C = null;
        }
        builder.q = sSLSocketFactory;
        CertificateChainCleaner.f77346a.getClass();
        Platform.f77312a.getClass();
        builder.w = Platform.f77313b.b(amazonX509TrustManager);
        builder.r = amazonX509TrustManager;
        this.mOkHttpClient = new OkHttpClient(builder);
    }

    public boolean copyToSD(String str) {
        try {
            InputStream inputStreamOpen = LPDeviceManager.getInstance().getContext().getAssets().open(getName());
            File file = new File(str);
            if (!file.exists()) {
                file.createNewFile();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            for (int i2 = inputStreamOpen.read(); i2 != -1; i2 = inputStreamOpen.read()) {
                fileOutputStream.write(i2 ^ getConstant());
            }
            inputStreamOpen.close();
            fileOutputStream.close();
            return true;
        } catch (IOException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public final int getConstant() {
        return 2;
    }

    public String getName() {
        return "";
    }

    public String getPwd() {
        return "";
    }

    public SSLSocketFactory getSSLSocketFactory() {
        FileInputStream fileInputStream;
        String pwd = getPwd();
        try {
            try {
                try {
                    try {
                        try {
                            String str = this.context.getFilesDir().getAbsolutePath() + File.separator + getName();
                            File file = new File(str);
                            if (file.exists()) {
                                fileInputStream = new FileInputStream(file);
                            } else {
                                copyToSD(str);
                                fileInputStream = new FileInputStream(file);
                            }
                            KeyStore keyStore = KeyStore.getInstance("PKCS12");
                            keyStore.load(fileInputStream, pwd.toCharArray());
                            KeyManagerFactory keyManagerFactory = KeyManagerFactory.getInstance("X509");
                            keyManagerFactory.init(keyStore, pwd.toCharArray());
                            SSLContext sSLContext = SSLContext.getInstance(k.f38194b);
                            sSLContext.init(keyManagerFactory.getKeyManagers(), new X509TrustManager[]{this.amazonX509TrustManager}, new SecureRandom());
                            return sSLContext.getSocketFactory();
                        } catch (KeyManagementException e2) {
                            e2.printStackTrace();
                            return null;
                        }
                    } catch (IOException e3) {
                        e3.printStackTrace();
                        return null;
                    }
                } catch (KeyStoreException e4) {
                    e4.printStackTrace();
                    return null;
                } catch (CertificateException e5) {
                    e5.printStackTrace();
                    return null;
                }
            } catch (NoSuchAlgorithmException e6) {
                e6.printStackTrace();
                return null;
            } catch (UnrecoverableKeyException e7) {
                e7.printStackTrace();
                return null;
            }
        } catch (Throwable unused) {
            return null;
        }
    }
}
