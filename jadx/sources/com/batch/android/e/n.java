package com.batch.android.e;

import defpackage.az;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class n extends InputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f23122b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private InputStream f23123c;
    private int d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f23124e;

    public n(InputStream inputStream, int i2) throws IOException {
        this.f23122b = new int[i2];
        this.f23124e = i2 - 1;
        this.f23123c = inputStream;
        c(i2);
    }

    private void c(int i2) throws IOException {
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = this.f23123c.read();
            if (i4 == -1) {
                az.o("Stream terminated abruptly");
                return;
            }
            this.f23122b[i3] = i4;
        }
    }

    public int[] a() {
        return (int[]) this.f23122b.clone();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i2 = this.d;
        if (i2 > this.f23124e) {
            return this.f23123c.read();
        }
        int i3 = this.f23122b[i2];
        this.d = i2 + 1;
        return i3;
    }
}
