package com.google.android.gms.internal.measurement;

import com.google.common.collect.Iterables;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzse implements zzro {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public OutputStream f30904a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public zzsm f30905b;

    @Override // com.google.android.gms.internal.measurement.zzro
    public final void a(ArrayList arrayList) {
        OutputStream outputStream = (OutputStream) Iterables.b(arrayList);
        if (outputStream instanceof zzsm) {
            this.f30905b = (zzsm) outputStream;
            this.f30904a = (OutputStream) arrayList.get(0);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzro
    public final void e0() throws IOException {
        if (this.f30905b == null) {
            throw new zzsk("Cannot sync underlying stream");
        }
        this.f30904a.flush();
        this.f30905b.f30909b.getFD().sync();
    }
}
