package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzsw implements zzrt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public zzro[] f30918a;

    @Override // com.google.android.gms.internal.measurement.zzrt
    public final Object a(zzrs zzrsVar) throws IOException {
        ArrayList arrayListA = zzrsVar.a(zzrsVar.f30880a.d(zzrsVar.d));
        zzro[] zzroVarArr = this.f30918a;
        if (zzroVarArr != null) {
            zzroVarArr[0].a(arrayListA);
        }
        return (OutputStream) arrayListA.get(0);
    }
}
