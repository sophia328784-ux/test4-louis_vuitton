package com.google.android.gms.internal.measurement;

import android.net.Uri;
import android.os.Process;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes2.dex */
public final class zzsv implements zzrt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzafc f30916a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public zzro[] f30917b;

    public zzsv(zzafc zzafcVar) {
        this.f30916a = zzafcVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzrt
    public final Object a(zzrs zzrsVar) throws IOException {
        Uri uri = zzrsVar.d;
        AtomicLong atomicLong = zzsu.f30915a;
        int iMyPid = Process.myPid();
        long id = Thread.currentThread().getId();
        long jCurrentTimeMillis = System.currentTimeMillis();
        long andIncrement = zzsu.f30915a.getAndIncrement();
        int length = String.valueOf(iMyPid).length();
        int length2 = String.valueOf(id).length();
        StringBuilder sb = new StringBuilder(length + 15 + length2 + 1 + String.valueOf(jCurrentTimeMillis).length() + 1 + String.valueOf(andIncrement).length());
        sb.append(".mobstore_tmp-");
        sb.append(iMyPid);
        sb.append("-");
        sb.append(id);
        sb.append("-");
        sb.append(jCurrentTimeMillis);
        sb.append("-");
        sb.append(andIncrement);
        Uri uriBuild = uri.buildUpon().path(String.valueOf(uri.getPath()).concat(sb.toString())).build();
        zzsx zzsxVar = zzrsVar.f30880a;
        ArrayList arrayListA = zzrsVar.a(zzsxVar.d(uriBuild));
        zzro[] zzroVarArr = this.f30917b;
        if (zzroVarArr != null) {
            zzroVarArr[0].a(arrayListA);
        }
        try {
            OutputStream outputStream = (OutputStream) arrayListA.get(0);
            try {
                this.f30916a.d(outputStream);
                zzro[] zzroVarArr2 = this.f30917b;
                if (zzroVarArr2 != null) {
                    zzroVarArr2[0].e0();
                }
                if (outputStream != null) {
                    outputStream.close();
                }
                zzsxVar.f(uriBuild, uri);
                return null;
            } catch (Throwable th) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Exception e2) {
            try {
                zzsxVar.e(uriBuild);
            } catch (FileNotFoundException unused) {
            }
            if (e2 instanceof IOException) {
                throw ((IOException) e2);
            }
            throw new IOException(e2);
        }
    }
}
