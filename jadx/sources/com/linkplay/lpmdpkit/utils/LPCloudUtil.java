package com.linkplay.lpmdpkit.utils;

import android.text.TextUtils;
import com.linkplay.lpmdpkit.okhttp.HttpRequestUtils;
import defpackage.tr;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes2.dex */
public class LPCloudUtil {
    public static List<HttpRequestUtils.Param> getHeaders(String str, String str2, String str3, String str4) {
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(str)) {
            arrayList.add(new HttpRequestUtils.Param("clientId", str));
        }
        String str5 = System.currentTimeMillis() + "";
        String nonce = getNonce();
        String strSha256 = sha256(com.linkplay.lpmdpkit.a.a(str2, str3));
        String signKey = getSignKey(str3, str2, str4, str, nonce, str5);
        arrayList.add(new HttpRequestUtils.Param("accessKey", str2));
        arrayList.add(new HttpRequestUtils.Param("timestamp", str5));
        arrayList.add(new HttpRequestUtils.Param("nonce", nonce));
        arrayList.add(new HttpRequestUtils.Param("sign", signKey));
        arrayList.add(new HttpRequestUtils.Param("appId", strSha256));
        return arrayList;
    }

    private static String getNonce() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 1; i2 <= 16; i2++) {
            int iNextInt = new Random().nextInt(36);
            stringBuffer.append("abcdefghijklmnopqrstuvwxyz1234567890".substring(iNextInt, iNextInt + 1));
        }
        return stringBuffer.toString();
    }

    private static String getSignKey(String str, String str2, String str3, String str4, String str5, String str6) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str5) || TextUtils.isEmpty(str6)) {
            return "";
        }
        String strG = TextUtils.isEmpty(str2) ? "" : tr.g("accessKey=", str2);
        if (!TextUtils.isEmpty(str)) {
            strG = tr.h(strG, "&appId=", str);
        }
        if (!TextUtils.isEmpty(str4)) {
            strG = tr.h(strG, "&clientId=", str4);
        }
        String strH = tr.h(tr.h(strG, "&nonce=", str5), "&timestamp=", str6);
        if (!TextUtils.isEmpty(str3)) {
            strH = tr.h(strH, "&secretKey=", str3);
        }
        return sha256(com.linkplay.lpmdpkit.a.a(str3, strH)).toUpperCase();
    }

    private static String sha256(String str) {
        MessageDigest messageDigest;
        try {
            messageDigest = MessageDigest.getInstance("SHA-256");
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
            messageDigest = null;
        }
        return ByteIntConverter.bytesToHexString(messageDigest.digest(str.getBytes()));
    }
}
