package com.google.android.gms.internal.measurement;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public final class zzsr implements zzrt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f30912a;

    static {
        new AtomicInteger();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzrt
    public final Object a(zzrs zzrsVar) throws IOException {
        if (this.f30912a) {
            if (zzrsVar.f30881b.isEmpty()) {
                return zzrsVar.f30880a.c(zzrsVar.d);
            }
            throw new zzsk("Short circuit would skip transforms.");
        }
        InputStream inputStreamB = zzst.b(zzrsVar);
        zzsj zzsjVar = new zzsj(inputStreamB);
        try {
            if (!(inputStreamB instanceof zzsf)) {
                throw new IOException("Not convertible and fallback to pipe is disabled.");
            }
            File fileD0 = ((zzsf) inputStreamB).d0();
            zzsjVar.close();
            return fileD0;
        } catch (Throwable th) {
            try {
                zzsjVar.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
