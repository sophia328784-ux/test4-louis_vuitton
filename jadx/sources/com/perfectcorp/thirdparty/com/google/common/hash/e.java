package com.perfectcorp.thirdparty.com.google.common.hash;

import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
public abstract class e {
    public static OutputStream a(j jVar) {
        a aVar = new a();
        jVar.getClass();
        aVar.f42363b = jVar;
        return aVar;
    }

    public static class a extends OutputStream {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public j f42363b;

        public final String toString() {
            return "Funnels.asOutputStream(" + this.f42363b + ")";
        }

        @Override // java.io.OutputStream
        public final void write(int i2) {
            this.f42363b.d((byte) i2);
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr) {
            this.f42363b.b(bArr);
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr, int i2, int i3) {
            this.f42363b.b(i2, i3, bArr);
        }
    }
}
