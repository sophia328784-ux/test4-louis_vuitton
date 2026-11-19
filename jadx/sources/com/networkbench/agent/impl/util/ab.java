package com.networkbench.agent.impl.util;

import android.text.TextUtils;
import com.networkbench.com.google.gson.Gson;
import com.networkbench.com.google.gson.reflect.TypeToken;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class ab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f38300a = " \r\n\t\u3000   ";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f38301b = "NBSStringUtil";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Pattern f38302c = Pattern.compile("(.*)\\{(\\d+),(\\d+)\\}(.*)");

    private ab() {
    }

    public static String a(String str, boolean z, boolean z2, String str2) {
        if (str == null) {
            return null;
        }
        int length = str.length() - 1;
        int i2 = 0;
        while (z && i2 <= length && str2.indexOf(str.charAt(i2)) >= 0) {
            i2++;
        }
        while (z2 && length >= i2 && str2.indexOf(str.charAt(length)) >= 0) {
            length--;
        }
        return str.substring(i2, length + 1);
    }

    public static String b() {
        return new UUID(ak.a().nextLong(), ak.a().nextLong()).toString();
    }

    public static String[] c(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        return str.split(str2);
    }

    public static boolean d(String str) {
        String strE = e(str);
        int length = strE.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!Character.isWhitespace(strE.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public static String e(String str) {
        return str == null ? "" : str;
    }

    public static List<String> f(String str) {
        ArrayList arrayList = new ArrayList(10);
        try {
            return !c(str) ? (List) new Gson().fromJson(str, new TypeToken<List<String>>() { // from class: com.networkbench.agent.impl.util.ab.1
            }.getType()) : arrayList;
        } catch (Throwable th) {
            Logger.error(f38301b, "stringtoList error:" + str, th);
            return arrayList;
        }
    }

    public static boolean c(String str) {
        return e(str).length() == 0;
    }

    public static String c() {
        return a().substring(0, 16);
    }

    public static boolean b(String str, String str2) {
        if (str == str2) {
            return true;
        }
        if (str == null || str2 == null) {
            return false;
        }
        return str.equalsIgnoreCase(str2);
    }

    public static String b(String str) {
        return a(str, true, true, f38300a);
    }

    public static boolean a(String str) {
        return Pattern.compile("^[a-zA-Z0-9\\-\\.]+\\.(com|org|net|mil|edu|COM|ORG|NET|MIL|EDU)$").matcher(str).matches();
    }

    public static boolean a(String str, String str2) {
        if (str == str2) {
            return true;
        }
        if (str == null || str2 == null) {
            return false;
        }
        return str.equals(str2);
    }

    public static String a(Serializable serializable) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
        objectOutputStream.writeObject(serializable);
        objectOutputStream.close();
        return new String(p.a(byteArrayOutputStream.toByteArray()));
    }

    public static String a(String str, int i2) {
        if (str == null) {
            return "";
        }
        return str.length() > i2 ? str.substring(0, i2) : str;
    }

    public static String a() {
        return b().replace("-", "");
    }
}
