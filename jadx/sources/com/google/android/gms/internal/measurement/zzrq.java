package com.google.android.gms.internal.measurement;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzrq extends zzso {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f30874c = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f30875b;

    public zzrq(OutputStream outputStream, ArrayList arrayList) {
        super(outputStream);
        this.f30875b = arrayList;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        Iterator it = this.f30875b.iterator();
        while (it.hasNext()) {
            try {
                ((zzta) it.next()).getClass();
            } catch (Throwable unused) {
            }
        }
        super.close();
    }

    @Override // com.google.android.gms.internal.measurement.zzso, java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        ((FilterOutputStream) this).out.write(bArr);
        for (zzta zztaVar : this.f30875b) {
            int length = bArr.length;
            zztaVar.d0();
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i2) throws IOException {
        ((FilterOutputStream) this).out.write(i2);
        Iterator it = this.f30875b.iterator();
        while (it.hasNext()) {
            ((zzta) it.next()).d0();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzso, java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i2, int i3) throws IOException {
        ((FilterOutputStream) this).out.write(bArr, i2, i3);
        Iterator it = this.f30875b.iterator();
        while (it.hasNext()) {
            ((zzta) it.next()).d0();
        }
    }
}
