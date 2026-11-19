package com.google.android.gms.internal.measurement;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzrp extends zzsn {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f30872c = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f30873b;

    public zzrp(InputStream inputStream, ArrayList arrayList) {
        super(inputStream);
        this.f30873b = arrayList;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        Iterator it = this.f30873b.iterator();
        while (it.hasNext()) {
            try {
                ((zzsz) it.next()).getClass();
            } catch (Throwable unused) {
            }
        }
        super.close();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int i2 = ((FilterInputStream) this).in.read();
        if (i2 != -1) {
            Iterator it = this.f30873b.iterator();
            while (it.hasNext()) {
                ((zzsz) it.next()).d0();
            }
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.measurement.zzsn, java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        int i2 = ((FilterInputStream) this).in.read(bArr);
        if (i2 != -1) {
            Iterator it = this.f30873b.iterator();
            while (it.hasNext()) {
                ((zzsz) it.next()).d0();
            }
        }
        return i2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i2, int i3) throws IOException {
        int i4 = ((FilterInputStream) this).in.read(bArr, i2, i3);
        if (i4 != -1) {
            Iterator it = this.f30873b.iterator();
            while (it.hasNext()) {
                ((zzsz) it.next()).d0();
            }
        }
        return i4;
    }
}
