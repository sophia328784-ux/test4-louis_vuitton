package com.networkbench.agent.impl.util;

import com.linkplay.medialib.ContentTree;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.md;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.bouncycastle.crypto.hpke.HPKE;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;

/* JADX INFO: loaded from: classes2.dex */
public class ah {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f38315a = {ContentTree.ROOT_ID, "1", ContentTree.AUDIO_ID, ContentTree.IMAGE_ID, "4", "5", "6", "7", "8", DbParams.GZIP_DATA_ENCRYPT, "a", NBSSpanMetricUnit.Bit, "c", NBSSpanMetricUnit.Day, "e", "f"};

    private static String a(String str, String str2) {
        if (str == null || str.length() <= 0) {
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str2);
            messageDigest.update(str.getBytes());
            byte[] bArrDigest = messageDigest.digest();
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b2 : bArrDigest) {
                String hexString = Integer.toHexString(b2 & 255);
                if (hexString.length() == 1) {
                    stringBuffer.append('0');
                }
                stringBuffer.append(hexString);
            }
            return stringBuffer.toString();
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private static String b(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b2 : bArr) {
            stringBuffer.append(a(b2));
        }
        return stringBuffer.toString();
    }

    public static String c(String str) {
        if (str != null) {
            return a(str, "SHA-512");
        }
        md.n("UT SHA256 str is null");
        return null;
    }

    public static String d(String str) {
        try {
            return b(MessageDigest.getInstance("md5").digest(str.getBytes())).toUpperCase();
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static String b(String str) {
        if (str != null) {
            return a(str, "SHA-256");
        }
        md.n("UT SHA256 str is null");
        return null;
    }

    public static String a(String str) {
        if (str != null) {
            return a(str, McElieceCCA2KeyGenParameterSpec.SHA1);
        }
        md.n("UT SHA256 str is null");
        return null;
    }

    public static String a(byte[] bArr) {
        try {
            return b(MessageDigest.getInstance("md5").digest(bArr));
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static String a(byte b2) {
        int i2 = b2;
        if (b2 < 0) {
            i2 = b2 + HPKE.mode_base;
        }
        StringBuilder sb = new StringBuilder();
        String[] strArr = f38315a;
        sb.append(strArr[i2 / 16]);
        sb.append(strArr[i2 % 16]);
        return sb.toString();
    }
}
