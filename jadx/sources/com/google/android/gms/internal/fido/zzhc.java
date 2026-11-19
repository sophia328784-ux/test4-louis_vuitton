package com.google.android.gms.internal.fido;

import defpackage.lc0;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzhc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f29905a;

    static {
        Charset.forName("US-ASCII");
        Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f29905a = bArr;
        ByteBuffer.wrap(bArr);
        zzgz zzgzVar = new zzgz();
        try {
            int i2 = zzgzVar.f29902a;
            if (i2 > 0) {
                zzgzVar.f29902a = i2;
            } else {
                zzgzVar.f29902a = 0;
            }
        } catch (zzhd e2) {
            lc0.u(e2);
        }
    }
}
