package com.google.android.gms.common;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.md;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzj extends zzw {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29359b;

    public zzj(byte[] bArr) {
        Preconditions.a(bArr.length == 25);
        this.f29359b = Arrays.hashCode(bArr);
    }

    public static byte[] G2(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e2) {
            md.h(e2);
            return null;
        }
    }

    public abstract byte[] F2();

    public final boolean equals(Object obj) {
        IObjectWrapper iObjectWrapperG0;
        if (!(obj instanceof com.google.android.gms.common.internal.zzx)) {
            return false;
        }
        try {
            com.google.android.gms.common.internal.zzx zzxVar = (com.google.android.gms.common.internal.zzx) obj;
            if (zzxVar.h0() == this.f29359b && (iObjectWrapperG0 = zzxVar.g0()) != null) {
                return Arrays.equals(F2(), (byte[]) ObjectWrapper.G2(iObjectWrapperG0));
            }
        } catch (RemoteException unused) {
        }
        return false;
    }

    @Override // com.google.android.gms.common.internal.zzx
    public final IObjectWrapper g0() {
        return new ObjectWrapper(F2());
    }

    @Override // com.google.android.gms.common.internal.zzx
    public final int h0() {
        return this.f29359b;
    }

    public final int hashCode() {
        return this.f29359b;
    }
}
