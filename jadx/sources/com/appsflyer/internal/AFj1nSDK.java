package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.LogTag;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Locale;
import java.util.Map;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class AFj1nSDK {
    public static boolean AFLogger(Map<String, Object> map, String[] strArr, AFc1iSDK aFc1iSDK) throws IllegalStateException {
        if (map == null || map.isEmpty()) {
            return false;
        }
        for (String str : strArr) {
            if (!map.containsKey(str)) {
                return false;
            }
        }
        String str2 = (String) map.remove("sig");
        if (str2 == null) {
            return false;
        }
        String strD = AFc1iSDK.d();
        StringBuilder sb = new StringBuilder();
        sb.append(new JSONObject(map));
        sb.append(strD);
        return d(sb.toString(), AFb1jSDK.AFLogger(aFc1iSDK.AFKeystoreWrapper)).equals(str2);
    }

    public static String d(String str, String str2) {
        try {
            Mac mac = Mac.getInstance("HmacSHA256");
            mac.init(new SecretKeySpec(str2.getBytes(Charset.defaultCharset()), "HmacSHA256"));
            return d(mac.doFinal(str.getBytes(Charset.defaultCharset()))).toLowerCase(Locale.ROOT);
        } catch (InvalidKeyException | NoSuchAlgorithmException e2) {
            AFLogger.INSTANCE.e(LogTag.GENERAL, e2.getMessage() != null ? e2.getMessage() : "Error computing HMAC SHA-256", e2);
            return e2.getMessage();
        }
    }

    public static byte[] unregisterClient(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(str.getBytes(Charset.defaultCharset()));
            return messageDigest.digest();
        } catch (Exception e2) {
            AFLogger.INSTANCE.e(LogTag.GENERAL, "Error turning string to SHA-256 byte array", e2);
            return null;
        }
    }

    private static String d(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b2 : bArr) {
            sb.append(Integer.toString((b2 & 255) + 256, 16).substring(1));
        }
        return sb.toString();
    }

    public static String d(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(str.getBytes(Charset.defaultCharset()));
            return d(messageDigest.digest());
        } catch (Exception e2) {
            AFLogger.INSTANCE.e(LogTag.GENERAL, "Error turning data to SHA-256 string", e2);
            return null;
        }
    }

    public static long AFLogger(byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return -1L;
        }
        if (bArr.length > 8) {
            bArr = Arrays.copyOfRange(bArr, 0, 8);
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.put(bArr);
        byteBufferAllocate.flip();
        return byteBufferAllocate.getLong();
    }

    public static String AFLogger(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(str.getBytes(StandardCharsets.UTF_8));
            return d(messageDigest.digest());
        } catch (Exception e2) {
            AFLogger.INSTANCE.e(LogTag.GENERAL, "Error turning data to SHA-256 string", e2);
            return null;
        }
    }
}
