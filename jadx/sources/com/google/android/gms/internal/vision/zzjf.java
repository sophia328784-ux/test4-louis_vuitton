package com.google.android.gms.internal.vision;

import defpackage.lc0;
import defpackage.md;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzjf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f31225a = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f31226b;

    static {
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f31226b = bArr;
        ByteBuffer.wrap(bArr);
        zzih zzihVar = new zzih();
        zzihVar.f31196c = Integer.MAX_VALUE;
        zzihVar.f31194a = 0;
        try {
            zzihVar.f31196c = 0;
            int i2 = zzihVar.f31194a + zzihVar.f31195b;
            zzihVar.f31194a = i2;
            int i3 = zzihVar.f31196c;
            if (i2 <= i3) {
                zzihVar.f31195b = 0;
                return;
            }
            int i4 = i2 - i3;
            zzihVar.f31195b = i4;
            zzihVar.f31194a = i2 - i4;
        } catch (zzjk e2) {
            lc0.u(e2);
        }
    }

    public static int a(long j2) {
        return (int) (j2 ^ (j2 >>> 32));
    }

    public static zzkk b(Object obj, Object obj2) {
        zzjb.zzb zzbVarD = ((zzkk) obj).d();
        zzkk zzkkVar = (zzkk) obj2;
        if (zzbVarD.f31219b.getClass().isInstance(zzkkVar)) {
            zzbVarD.g((zzjb) ((zzhf) zzkkVar));
            return zzbVarD.j();
        }
        md.n("mergeFrom(MessageLite) can only merge messages of the same type.");
        return null;
    }
}
