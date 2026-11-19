package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.fc;
import defpackage.n00;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgn {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final AtomicReference f31755b = new AtomicReference();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AtomicReference f31756c = new AtomicReference();
    public static final AtomicReference d = new AtomicReference();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzgm f31757a;

    public zzgn(zzgm zzgmVar) {
        this.f31757a = zzgmVar;
    }

    public static final String g(String str, String[] strArr, String[] strArr2, AtomicReference atomicReference) {
        String str2;
        Preconditions.h(atomicReference);
        Preconditions.a(strArr.length == strArr2.length);
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (Objects.equals(str, strArr[i2])) {
                synchronized (atomicReference) {
                    try {
                        String[] strArr3 = (String[]) atomicReference.get();
                        if (strArr3 == null) {
                            strArr3 = new String[strArr2.length];
                            atomicReference.set(strArr3);
                        }
                        str2 = strArr3[i2];
                        if (str2 == null) {
                            str2 = strArr2[i2] + "(" + strArr[i2] + ")";
                            strArr3[i2] = str2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return str2;
            }
        }
        return str;
    }

    public final String a(String str) {
        if (str == null) {
            return null;
        }
        if (!this.f31757a.d0()) {
            return str;
        }
        return g(str, zzjm.f31859f, zzjm.f31855a, f31755b);
    }

    public final String b(String str) {
        if (str == null) {
            return null;
        }
        if (!this.f31757a.d0()) {
            return str;
        }
        return g(str, zzjn.f31861b, zzjn.f31860a, f31756c);
    }

    public final String c(String str) {
        if (str == null) {
            return null;
        }
        if (!this.f31757a.d0()) {
            return str;
        }
        if (str.startsWith("_exp_")) {
            return fc.h("experiment_id(", str, ")");
        }
        return g(str, zzjo.f31864b, zzjo.f31863a, d);
    }

    public final String d(zzbh zzbhVar) {
        String string;
        zzgm zzgmVar = this.f31757a;
        if (!zzgmVar.d0()) {
            return zzbhVar.toString();
        }
        StringBuilder sb = new StringBuilder("origin=");
        sb.append(zzbhVar.d);
        sb.append(",name=");
        sb.append(a(zzbhVar.f31603b));
        sb.append(",params=");
        zzbf zzbfVar = zzbhVar.f31604c;
        if (zzbfVar == null) {
            string = null;
        } else {
            string = !zzgmVar.d0() ? zzbfVar.f31602b.toString() : e(zzbfVar.Z1());
        }
        sb.append(string);
        return sb.toString();
    }

    public final String e(Bundle bundle) {
        String strF;
        if (bundle == null) {
            return null;
        }
        if (!this.f31757a.d0()) {
            return bundle.toString();
        }
        StringBuilder sbT = n00.t("Bundle[{");
        for (String str : bundle.keySet()) {
            if (sbT.length() != 8) {
                sbT.append(", ");
            }
            sbT.append(b(str));
            sbT.append("=");
            Object obj = bundle.get(str);
            if (obj instanceof Bundle) {
                strF = f(new Object[]{obj});
            } else if (obj instanceof Object[]) {
                strF = f((Object[]) obj);
            } else {
                strF = obj instanceof ArrayList ? f(((ArrayList) obj).toArray()) : String.valueOf(obj);
            }
            sbT.append(strF);
        }
        sbT.append("}]");
        return sbT.toString();
    }

    public final String f(Object[] objArr) {
        if (objArr == null) {
            return "[]";
        }
        StringBuilder sbT = n00.t("[");
        for (Object obj : objArr) {
            String strE = obj instanceof Bundle ? e((Bundle) obj) : String.valueOf(obj);
            if (strE != null) {
                if (sbT.length() != 1) {
                    sbT.append(", ");
                }
                sbT.append(strE);
            }
        }
        sbT.append("]");
        return sbT.toString();
    }
}
