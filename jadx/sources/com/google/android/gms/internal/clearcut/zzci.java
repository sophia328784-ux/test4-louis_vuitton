package com.google.android.gms.internal.clearcut;

import defpackage.lc0;
import defpackage.md;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzci {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f29677a = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f29678b;

    static {
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f29678b = bArr;
        ByteBuffer.wrap(bArr);
        zzbm zzbmVar = new zzbm();
        try {
            int i2 = zzbmVar.f29659a;
            if (i2 > 0) {
                zzbmVar.f29659a = i2;
            } else {
                zzbmVar.f29659a = 0;
            }
        } catch (zzco e2) {
            lc0.u(e2);
        }
    }

    public static zzdo a(Object obj, Object obj2) {
        zzcg.zza zzaVarB = ((zzdo) obj).b();
        zzdo zzdoVar = (zzdo) obj2;
        if (zzaVarB.f29674b.getClass().isInstance(zzdoVar)) {
            zzaVarB.f((zzcg) ((zzas) zzdoVar));
            return zzaVarB.h();
        }
        md.n("mergeFrom(MessageLite) can only merge messages of the same type.");
        return null;
    }

    public static int b(long j2) {
        return (int) (j2 ^ (j2 >>> 32));
    }
}
