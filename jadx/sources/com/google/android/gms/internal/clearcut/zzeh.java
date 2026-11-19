package com.google.android.gms.internal.clearcut;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzeh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Class f29721a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzex f29722b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzex f29723c;
    public static final zzez d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        f29721a = cls;
        f29722b = c(false);
        f29723c = c(true);
        d = new zzez();
    }

    public static void a(zzbu zzbuVar, Object obj, Object obj2) {
        ((zzbv) zzbuVar).getClass();
        zzej zzejVar = ((zzcg.zzd) obj2).zzjv.f29666a;
        if (zzejVar.isEmpty()) {
            return;
        }
        zzcg.zzd zzdVar = (zzcg.zzd) obj;
        zzby<Object> zzbyVar = zzdVar.zzjv;
        if (zzbyVar.f29667b) {
            zzbyVar = (zzby) zzbyVar.clone();
            zzdVar.zzjv = zzbyVar;
        }
        for (int i2 = 0; i2 < zzejVar.f29726c.size(); i2++) {
            zzbyVar.e(zzejVar.d(i2));
        }
        Iterator it = zzejVar.f().iterator();
        while (it.hasNext()) {
            zzbyVar.e((Map.Entry) it.next());
        }
    }

    public static void b(zzex zzexVar, Object obj, Object obj2) {
        ((zzez) zzexVar).getClass();
        zzcg zzcgVar = (zzcg) obj;
        zzey zzeyVar = zzcgVar.zzjp;
        zzey zzeyVar2 = ((zzcg) obj2).zzjp;
        if (!zzeyVar2.equals(zzey.f29737e)) {
            int i2 = zzeyVar.f29738a + zzeyVar2.f29738a;
            int[] iArrCopyOf = Arrays.copyOf(zzeyVar.f29739b, i2);
            System.arraycopy(zzeyVar2.f29739b, 0, iArrCopyOf, zzeyVar.f29738a, zzeyVar2.f29738a);
            Object[] objArrCopyOf = Arrays.copyOf(zzeyVar.f29740c, i2);
            System.arraycopy(zzeyVar2.f29740c, 0, objArrCopyOf, zzeyVar.f29738a, zzeyVar2.f29738a);
            zzeyVar = new zzey(i2, iArrCopyOf, objArrCopyOf, true);
        }
        zzcgVar.zzjp = zzeyVar;
    }

    public static zzex c(boolean z) {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls != null) {
            try {
                return (zzex) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
            } catch (Throwable unused2) {
            }
        }
        return null;
    }

    public static boolean d(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }
}
