package com.sensorsdata.analytics.android.sdk.encrypt.biz;

import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.core.SAContextManager;
import com.sensorsdata.analytics.android.sdk.encrypt.SAEncryptListener;
import com.sensorsdata.analytics.android.sdk.encrypt.SecreteKey;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class SAEventEncryptTools {
    private final SecretKeyManager mSecretKeyManager;
    private SecreteKey mSecreteKey;

    public SAEventEncryptTools(SAContextManager sAContextManager) {
        this.mSecretKeyManager = SecretKeyManager.getInstance(sAContextManager);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x003c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private byte[] gzipEventData(String str) throws Throwable {
        Throwable th;
        GZIPOutputStream gZIPOutputStream;
        OutputStream outputStream = null;
        try {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                try {
                    gZIPOutputStream.write(str.getBytes());
                    gZIPOutputStream.finish();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    try {
                        gZIPOutputStream.close();
                        return byteArray;
                    } catch (Exception e2) {
                        SALog.printStackTrace(e2);
                        return byteArray;
                    }
                } catch (Exception e3) {
                    e = e3;
                    SALog.printStackTrace(e);
                    if (gZIPOutputStream != null) {
                        try {
                            gZIPOutputStream.close();
                        } catch (Exception e4) {
                            SALog.printStackTrace(e4);
                        }
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                if (0 != 0) {
                    try {
                        outputStream.close();
                    } catch (Exception e5) {
                        SALog.printStackTrace(e5);
                    }
                }
                throw th;
            }
        } catch (Exception e6) {
            e = e6;
            gZIPOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            if (0 != 0) {
                outputStream.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0027  */
    /* JADX WARN: Code duplicated, block: B:12:0x0028 A[Catch: Exception -> 0x001b, TryCatch #0 {Exception -> 0x001b, blocks: (B:2:0x0000, B:4:0x000a, B:9:0x001d, B:12:0x0028, B:14:0x0034, B:15:0x0040, B:18:0x004b, B:21:0x005e, B:23:0x007a), top: B:28:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:14:0x0034 A[Catch: Exception -> 0x001b, TryCatch #0 {Exception -> 0x001b, blocks: (B:2:0x0000, B:4:0x000a, B:9:0x001d, B:12:0x0028, B:14:0x0034, B:15:0x0040, B:18:0x004b, B:21:0x005e, B:23:0x007a), top: B:28:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:18:0x004b A[Catch: Exception -> 0x001b, TryCatch #0 {Exception -> 0x001b, blocks: (B:2:0x0000, B:4:0x000a, B:9:0x001d, B:12:0x0028, B:14:0x0034, B:15:0x0040, B:18:0x004b, B:21:0x005e, B:23:0x007a), top: B:28:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:20:0x005d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:21:0x005e A[Catch: Exception -> 0x001b, TryCatch #0 {Exception -> 0x001b, blocks: (B:2:0x0000, B:4:0x000a, B:9:0x001d, B:12:0x0028, B:14:0x0034, B:15:0x0040, B:18:0x004b, B:21:0x005e, B:23:0x007a), top: B:28:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x007a A[Catch: Exception -> 0x001b, TRY_LEAVE, TryCatch #0 {Exception -> 0x001b, blocks: (B:2:0x0000, B:4:0x000a, B:9:0x001d, B:12:0x0028, B:14:0x0034, B:15:0x0040, B:18:0x004b, B:21:0x005e, B:23:0x007a), top: B:28:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x007f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:9:0x001d A[Catch: Exception -> 0x001b, TryCatch #0 {Exception -> 0x001b, blocks: (B:2:0x0000, B:4:0x000a, B:9:0x001d, B:12:0x0028, B:14:0x0034, B:15:0x0040, B:18:0x004b, B:21:0x005e, B:23:0x007a), top: B:28:0x0000 }] */
    /* JADX WARN: Type inference failed for: r2v6, types: [T, org.json.JSONObject] */
    public <T> T encryptTrackData(T t) {
        SAEncryptListener encryptListener;
        String strSubstring;
        String strEncryptSymmetricKeyWithPublicKey;
        String strEncryptEvent;
        ?? r2;
        try {
            if (this.mSecretKeyManager.isSecretKeyNull(this.mSecreteKey)) {
                SecreteKey secreteKeyLoadSecretKey = this.mSecretKeyManager.loadSecretKey();
                this.mSecreteKey = secreteKeyLoadSecretKey;
                if (!this.mSecretKeyManager.isSecretKeyNull(secreteKeyLoadSecretKey)) {
                    encryptListener = this.mSecretKeyManager.getEncryptListener(this.mSecreteKey);
                    if (encryptListener == null) {
                        strSubstring = this.mSecreteKey.key;
                        if (strSubstring.startsWith("EC:")) {
                            strSubstring = strSubstring.substring(strSubstring.indexOf(":") + 1);
                        }
                        strEncryptSymmetricKeyWithPublicKey = encryptListener.encryptSymmetricKeyWithPublicKey(strSubstring);
                        if (!TextUtils.isEmpty(strEncryptSymmetricKeyWithPublicKey)) {
                            strEncryptEvent = encryptListener.encryptEvent(gzipEventData(t.toString()));
                            if (TextUtils.isEmpty(strEncryptEvent)) {
                                return t;
                            }
                            r2 = (T) new JSONObject();
                            r2.put("ekey", strEncryptSymmetricKeyWithPublicKey);
                            r2.put("pkv", this.mSecreteKey.version);
                            r2.put("payloads", strEncryptEvent);
                            if (t instanceof String) {
                                return (T) r2.toString();
                            }
                            return r2;
                        }
                    }
                }
            } else {
                encryptListener = this.mSecretKeyManager.getEncryptListener(this.mSecreteKey);
                if (encryptListener == null) {
                    strSubstring = this.mSecreteKey.key;
                    if (strSubstring.startsWith("EC:")) {
                        strSubstring = strSubstring.substring(strSubstring.indexOf(":") + 1);
                    }
                    strEncryptSymmetricKeyWithPublicKey = encryptListener.encryptSymmetricKeyWithPublicKey(strSubstring);
                    if (!TextUtils.isEmpty(strEncryptSymmetricKeyWithPublicKey)) {
                        strEncryptEvent = encryptListener.encryptEvent(gzipEventData(t.toString()));
                        if (TextUtils.isEmpty(strEncryptEvent)) {
                            return t;
                        }
                        r2 = (T) new JSONObject();
                        r2.put("ekey", strEncryptSymmetricKeyWithPublicKey);
                        r2.put("pkv", this.mSecreteKey.version);
                        r2.put("payloads", strEncryptEvent);
                        if (t instanceof String) {
                            return (T) r2.toString();
                        }
                        return r2;
                    }
                }
            }
            return t;
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return t;
        }
    }

    public SAEncryptListener getEncryptListener() {
        try {
            if (this.mSecretKeyManager.isSecretKeyNull(this.mSecreteKey)) {
                SecreteKey secreteKeyLoadSecretKey = this.mSecretKeyManager.loadSecretKey();
                this.mSecreteKey = secreteKeyLoadSecretKey;
                if (this.mSecretKeyManager.isSecretKeyNull(secreteKeyLoadSecretKey)) {
                    return null;
                }
            }
            return this.mSecretKeyManager.getEncryptListener(this.mSecreteKey);
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [T, org.json.JSONObject] */
    public <T> T encryptTrackData(T t, SecreteKey secreteKey) {
        SAEncryptListener encryptListener;
        try {
            if (!this.mSecretKeyManager.isSecretKeyNull(secreteKey) && (encryptListener = this.mSecretKeyManager.getEncryptListener(secreteKey)) != null) {
                String strSubstring = secreteKey.key;
                if (strSubstring.startsWith("EC:")) {
                    strSubstring = strSubstring.substring(strSubstring.indexOf(":") + 1);
                }
                String strEncryptSymmetricKeyWithPublicKey = encryptListener.encryptSymmetricKeyWithPublicKey(strSubstring);
                if (!TextUtils.isEmpty(strEncryptSymmetricKeyWithPublicKey)) {
                    String strEncryptEvent = encryptListener.encryptEvent(gzipEventData(t.toString()));
                    if (TextUtils.isEmpty(strEncryptEvent)) {
                        return t;
                    }
                    ?? r0 = (T) new JSONObject();
                    r0.put("ekey", strEncryptSymmetricKeyWithPublicKey);
                    r0.put("pkv", secreteKey.version);
                    JSONArray jSONArray = new JSONArray();
                    jSONArray.put(strEncryptEvent);
                    r0.put("payloads", jSONArray);
                    return t instanceof String ? (T) r0.toString() : r0;
                }
            }
            return t;
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return t;
        }
    }
}
