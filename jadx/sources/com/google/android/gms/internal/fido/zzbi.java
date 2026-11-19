package com.google.android.gms.internal.fido;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f29836a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzbg f29837b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public zzbg f29838c;

    public zzbi(String str) {
        zzbg zzbgVar = new zzbg();
        this.f29837b = zzbgVar;
        this.f29838c = zzbgVar;
        this.f29836a = str;
    }

    public final void a(int i2) {
        String strValueOf = String.valueOf(i2);
        zzbf zzbfVar = new zzbf();
        this.f29838c.f29835c = zzbfVar;
        this.f29838c = zzbfVar;
        zzbfVar.f29834b = strValueOf;
        zzbfVar.f29833a = "errorCode";
    }

    public final void b(Object obj, String str) {
        zzbg zzbgVar = new zzbg();
        this.f29838c.f29835c = zzbgVar;
        this.f29838c = zzbgVar;
        zzbgVar.f29834b = obj;
        zzbgVar.f29833a = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.f29836a);
        sb.append('{');
        zzbg zzbgVar = this.f29837b.f29835c;
        String str = "";
        while (zzbgVar != null) {
            Object obj = zzbgVar.f29834b;
            sb.append(str);
            String str2 = zzbgVar.f29833a;
            if (str2 != null) {
                sb.append(str2);
                sb.append('=');
            }
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                String strDeepToString = Arrays.deepToString(new Object[]{obj});
                sb.append((CharSequence) strDeepToString, 1, strDeepToString.length() - 1);
            }
            zzbgVar = zzbgVar.f29835c;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }
}
