package com.batch.android.e;

import android.util.Base64;
import com.dynatrace.android.callback.Callback;
import defpackage.md;
import defpackage.n00;
import defpackage.r81;
import java.net.HttpURLConnection;
import java.util.Random;

/* JADX INFO: loaded from: classes2.dex */
class p0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f23149b = "JY+Cn0qwsdiDNm7bRMKW8A==";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f23150c = "cJCf4WfJaP7qOvOxkZmYCQ==";
    private static final String d = "2";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d.b f23151a;

    public p0(d.b bVar) {
        if (bVar != null) {
            this.f23151a = bVar;
        } else {
            r81.d("Null type");
            throw null;
        }
    }

    private byte[] b(o0 o0Var) {
        return b.a(Base64.decode("amdmeA==", 0), d.a(d.b.EAS_BASE64).b(f23150c));
    }

    private static String c(String str, o0 o0Var) {
        StringBuilder sbT = n00.t(str);
        sbT.append(a(7));
        return sbT.toString();
    }

    public byte[] a(byte[] bArr, o0 o0Var) throws Exception {
        String strC;
        c cVarA;
        if (o0Var.g) {
            strC = c("1", o0Var);
            cVarA = d.a(this.f23151a, a(strC, o0Var));
        } else {
            strC = c("2", o0Var);
            cVarA = d.a(this.f23151a, b(strC, o0Var));
        }
        StringBuilder sbT = n00.t(strC);
        sbT.append(cVarA.a(b.c(bArr)));
        return b.a(sbT.toString());
    }

    public p0(int i2) {
        this(d.b.a(i2));
    }

    private String b(String str, o0 o0Var) {
        return b.c(b(o0Var)) + str;
    }

    private byte[] a(String str, String str2, String str3, o0 o0Var) {
        if ("2".equals(str)) {
            return d.a(this.f23151a, b(str2, o0Var)).b(str3);
        }
        return d.a(d.b.EAS_BASE64, a(str2, o0Var)).b(str3);
    }

    public byte[] a(byte[] bArr, o0 o0Var, HttpURLConnection httpURLConnection) throws Exception {
        if (bArr != null) {
            String strC = b.c(bArr);
            if (strC.length() > 8) {
                return a(Callback.e("X-Batch-Content-Cipher", httpURLConnection), strC.substring(0, 8), strC.substring(8), o0Var);
            }
            md.n("The data as string should be at least 9 char long");
            return null;
        }
        r81.d("Null data");
        return null;
    }

    private byte[] a(o0 o0Var) {
        return b.a(Base64.decode("d2dIRA==", 0), d.a(d.b.EAS_BASE64).b(f23149b));
    }

    private String a(String str, o0 o0Var) {
        return b.c(a(o0Var)) + str;
    }

    private static String a(int i2) {
        Random random = new Random();
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < i2; i3++) {
            sb.append((char) (random.nextInt(26) + (random.nextInt() % 2 == 0 ? 97 : 65)));
        }
        return sb.toString();
    }
}
