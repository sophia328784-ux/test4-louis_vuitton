package com.networkbench.agent.impl.k;

import android.util.Base64;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.tr;
import java.nio.charset.StandardCharsets;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class d {
    public static String a(String str, b bVar) {
        StringBuilder sb = new StringBuilder("tingyun=");
        StringBuilder sb2 = new StringBuilder(r.u().ao());
        sb2.append("sid=");
        sb2.append(d(bVar.f37421a));
        if (!ak.r(bVar.f37422b) && r.u().af()) {
            sb2.append(";vid=");
            sb2.append(bVar.f37422b);
        }
        if (!ak.r(bVar.f37423c) && r.u().af()) {
            sb2.append(";aid=");
            sb2.append(bVar.f37423c);
        }
        sb2.append(";");
        sb.append(b(sb2.toString()));
        return a(str, sb.toString());
    }

    public static String b() {
        return Base64.encodeToString(new UUID(ak.a().nextLong(), ak.a().nextLong()).toString().replace("-", "").getBytes(StandardCharsets.UTF_8), 2);
    }

    private static String c(String str) {
        return str.length() > 50 ? str.substring(0, 50) : str;
    }

    private static String d(String str) {
        return str.replace("-", "");
    }

    private static String b(String str) {
        return Base64.encodeToString(str.getBytes(StandardCharsets.UTF_8), 10);
    }

    public static String a(String str, String str2) {
        return (str == null || str.isEmpty()) ? str2 : tr.h(str, ",", str2);
    }

    public static String a(String str) {
        return Base64.encodeToString(str.getBytes(StandardCharsets.UTF_8), 2);
    }

    public static String a(String str, String str2, String str3, String str4) {
        String strB = b();
        String strB2 = b();
        if (str.length() > 50) {
            str = str.substring(0, 50);
        }
        String strA = a(str);
        if (str2.length() > 50) {
            str2 = str2.substring(0, 50);
        }
        String strA2 = a(str2);
        if (str3.length() > 150) {
            str3 = str3.substring(0, 150);
        }
        String strA3 = a(str3);
        String strA4 = a(str4);
        StringBuilder sbS = fc.s("1-", strB, "-", strB2, "-0-");
        cj.C(sbS, strA, "-", strA2, "-");
        return d21.p(sbS, strA3, "-", strA4);
    }

    public static String a() {
        return d21.l("00-", new UUID(ak.a().nextLong(), ak.a().nextLong()).toString().replace("-", ""), "-", new UUID(ak.a().nextLong(), ak.a().nextLong()).toString().replace("-", "").substring(0, 16), "-01");
    }
}
