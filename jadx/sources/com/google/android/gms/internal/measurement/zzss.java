package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class zzss implements zzrt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzafj f30913a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzadf f30914b;

    public zzss(zzafj zzafjVar) {
        zzadf zzadfVar = zzadf.f30397b;
        int i2 = zzacf.f30358a;
        this.f30914b = zzadf.f30398c;
        this.f30913a = zzafjVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzrt
    public final /* bridge */ /* synthetic */ Object a(zzrs zzrsVar) throws IOException {
        InputStream inputStreamB = zzst.b(zzrsVar);
        try {
            zzadu zzaduVarA = this.f30913a.a(inputStreamB, this.f30914b);
            if (inputStreamB != null) {
                inputStreamB.close();
            }
            return zzaduVarA;
        } catch (Throwable th) {
            if (inputStreamB != null) {
                try {
                    inputStreamB.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }
}
