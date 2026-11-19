package com.appsflyer;

import android.content.Context;
import android.security.keystore.KeyGenParameterSpec;
import com.appsflyer.sdk_base.logger.LogTag;
import java.io.IOException;
import java.math.BigInteger;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.util.Calendar;
import java.util.Enumeration;
import java.util.Locale;
import javax.security.auth.x500.X500Principal;

/* JADX INFO: loaded from: classes.dex */
public class AFKeystoreWrapper {
    private Context AFKeystoreWrapper;
    public KeyStore registerClient;
    public final Object AFLogger = new Object();
    public String d = "";
    public int unregisterClient = 0;

    public AFKeystoreWrapper(Context context) {
        this.AFKeystoreWrapper = context;
        AFLogger.INSTANCE.i(LogTag.SECURITY, "Initializing KeyStore");
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            this.registerClient = keyStore;
            keyStore.load(null);
        } catch (IOException | KeyStoreException | NoSuchAlgorithmException | CertificateException e2) {
            AFLogger.INSTANCE.e(LogTag.SECURITY, "Couldn't load keystore instance of type: AndroidKeyStore", e2);
        }
    }

    public final void AFKeystoreWrapper(String str) {
        AFLogger aFLogger = AFLogger.INSTANCE;
        LogTag logTag = LogTag.SECURITY;
        aFLogger.i(logTag, "Creating a new key with alias: ".concat(String.valueOf(str)));
        try {
            Locale locale = Locale.US;
            Calendar calendar = Calendar.getInstance(locale);
            Calendar calendar2 = Calendar.getInstance(locale);
            calendar2.add(1, 5);
            synchronized (this.AFLogger) {
                try {
                    if (this.registerClient.containsAlias(str)) {
                        aFLogger.i(logTag, "Alias already exists: ".concat(String.valueOf(str)));
                    } else {
                        KeyGenParameterSpec keyGenParameterSpecBuild = new KeyGenParameterSpec.Builder(str, 3).setCertificateSubject(new X500Principal("CN=AndroidSDK, O=AppsFlyer")).setCertificateSerialNumber(BigInteger.ONE).setCertificateNotBefore(calendar.getTime()).setCertificateNotAfter(calendar2.getTime()).build();
                        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA", "AndroidKeyStore");
                        keyPairGenerator.initialize(keyGenParameterSpecBuild);
                        keyPairGenerator.generateKeyPair();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            AFLogger aFLogger2 = AFLogger.INSTANCE;
            LogTag logTag2 = LogTag.SECURITY;
            StringBuilder sb = new StringBuilder("Exception occurred while creating key: ");
            sb.append(th2.getMessage() != null ? th2.getMessage() : "unknown error");
            aFLogger2.e(logTag2, sb.toString(), th2);
        }
    }

    public final String AFLogger() {
        String str;
        synchronized (this.AFLogger) {
            str = this.d;
        }
        return str;
    }

    public final boolean d() {
        boolean z;
        synchronized (this.AFLogger) {
            try {
                KeyStore keyStore = this.registerClient;
                z = false;
                if (keyStore != null) {
                    try {
                        Enumeration<String> enumerationAliases = keyStore.aliases();
                        while (enumerationAliases.hasMoreElements()) {
                            String strNextElement = enumerationAliases.nextElement();
                            if (strNextElement != null && strNextElement.startsWith("com.appsflyer")) {
                                String[] strArrSplit = strNextElement.split(",");
                                if (strArrSplit.length != 3) {
                                    break;
                                }
                                AFLogger.INSTANCE.i(LogTag.SECURITY, "Found a matching AF key with alias:\n".concat(strNextElement));
                                z = true;
                                String[] strArrSplit2 = strArrSplit[1].trim().split("=");
                                String[] strArrSplit3 = strArrSplit[2].trim().split("=");
                                if (strArrSplit2.length != 2 || strArrSplit3.length != 2) {
                                    break;
                                    break;
                                }
                                this.d = strArrSplit2[1].trim();
                                this.unregisterClient = Integer.parseInt(strArrSplit3[1].trim());
                                break;
                            }
                        }
                    } catch (Throwable th) {
                        AFLogger aFLogger = AFLogger.INSTANCE;
                        LogTag logTag = LogTag.SECURITY;
                        StringBuilder sb = new StringBuilder("Couldn't list KeyStore aliases: ");
                        sb.append(th.getClass().getName());
                        aFLogger.e(logTag, sb.toString(), th);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z;
    }

    public final int registerClient() {
        int i2;
        synchronized (this.AFLogger) {
            i2 = this.unregisterClient;
        }
        return i2;
    }

    public final String AFKeystoreWrapper() {
        StringBuilder sb = new StringBuilder("com.appsflyer,KSAppsFlyerId=");
        synchronized (this.AFLogger) {
            sb.append(this.d);
            sb.append(",KSAppsFlyerRICounter=");
            sb.append(this.unregisterClient);
        }
        return sb.toString();
    }
}
