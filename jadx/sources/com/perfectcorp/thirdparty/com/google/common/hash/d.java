package com.perfectcorp.thirdparty.com.google.common.hash;

import java.io.Serializable;
import java.util.zip.CRC32;
import java.util.zip.Checksum;

/* JADX INFO: loaded from: classes3.dex */
final class d extends b implements Serializable {

    public final class a extends com.perfectcorp.thirdparty.com.google.common.hash.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Checksum f42362a;

        public a(d dVar, Checksum checksum) {
            checksum.getClass();
            this.f42362a = checksum;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.hash.j
        public final HashCode a() {
            int value = (int) this.f42362a.getValue();
            HashCode.b bVar = new HashCode.b();
            bVar.f42358c = value;
            return bVar;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.hash.a
        /* JADX INFO: renamed from: e */
        public final void d(byte b2) {
            this.f42362a.update(b2);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.hash.a
        public final void f(byte[] bArr, int i2, int i3) {
            this.f42362a.update(bArr, i2, i3);
        }
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.hash.HashFunction
    public final j a() {
        return new a(this, new CRC32());
    }

    public final String toString() {
        return "Hashing.crc32()";
    }
}
