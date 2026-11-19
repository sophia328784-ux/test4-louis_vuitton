package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.io.InputStream;
import kotlin.io.CloseableKt;

/* JADX INFO: loaded from: classes2.dex */
public final class zzna implements zzrt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f30761a;

    public zzna(boolean z) {
        this.f30761a = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzrt
    public final /* bridge */ /* synthetic */ Object a(zzrs zzrsVar) throws IOException {
        zznd zzndVarA;
        InputStream inputStreamB = zzst.b(zzrsVar);
        try {
            int i2 = 4096;
            if (this.f30761a) {
                if (inputStreamB instanceof zzsf) {
                    long length = ((zzsf) inputStreamB).d0().length();
                    if (length == 0) {
                        i2 = 512;
                    } else if (length < 4096) {
                        i2 = (int) length;
                    }
                }
                zzndVarA = zznd.a(zzacv.h(inputStreamB, i2), true);
            } else {
                zzndVarA = zznd.a(zzacv.h(inputStreamB, 4096), false);
            }
            CloseableKt.a(inputStreamB, null);
            return zzndVarA;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.a(inputStreamB, th);
                throw th2;
            }
        }
    }
}
