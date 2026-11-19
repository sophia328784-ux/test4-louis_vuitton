package com.google.android.gms.internal.fido;

import defpackage.fc;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzhp implements Comparable {
    public static int c(byte b2) {
        return (b2 >> 5) & 7;
    }

    public static void d(String str) {
        new zzhn(str);
    }

    public static zzhp e(byte... bArr) {
        bArr.getClass();
        zzhs zzhsVar = new zzhs(new ByteArrayInputStream(Arrays.copyOf(bArr, bArr.length)));
        try {
            return zzhq.a(zzhsVar);
        } finally {
            try {
                zzhsVar.close();
            } catch (IOException unused) {
            }
        }
    }

    public static zzhp f(ByteArrayInputStream byteArrayInputStream) {
        zzhs zzhsVar = new zzhs(byteArrayInputStream);
        try {
            return zzhq.a(zzhsVar);
        } finally {
            try {
                zzhsVar.close();
            } catch (IOException unused) {
            }
        }
    }

    public int a() {
        return 0;
    }

    public final zzhp b(Class cls) throws zzho {
        if (cls.isInstance(this)) {
            return (zzhp) cls.cast(this);
        }
        throw new zzho(fc.i("Expected a ", cls.getName(), " value, but got ", getClass().getName()));
    }

    public abstract int d0();
}
