package com.perfectcorp.thirdparty.com.google.common.hash;

import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import defpackage.md;
import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
final class i extends b implements Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MessageDigest f42364b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f42365c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f42366e;

    public static final class a extends com.perfectcorp.thirdparty.com.google.common.hash.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MessageDigest f42367a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f42368b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f42369c;

        public a(MessageDigest messageDigest, int i2) {
            this.f42367a = messageDigest;
            this.f42368b = i2;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.hash.j
        public final HashCode a() {
            Preconditions.h("Cannot re-use a Hasher after calling hash() on it", !this.f42369c);
            this.f42369c = true;
            MessageDigest messageDigest = this.f42367a;
            int digestLength = messageDigest.getDigestLength();
            int i2 = this.f42368b;
            if (i2 != digestLength) {
                byte[] bArrCopyOf = Arrays.copyOf(messageDigest.digest(), i2);
                HashCode.a aVar = new HashCode.a();
                aVar.f42357c = bArrCopyOf;
                return aVar;
            }
            byte[] bArrDigest = messageDigest.digest();
            HashCode.a aVar2 = new HashCode.a();
            bArrDigest.getClass();
            aVar2.f42357c = bArrDigest;
            return aVar2;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.hash.a
        /* JADX INFO: renamed from: e */
        public final void d(byte b2) {
            Preconditions.h("Cannot re-use a Hasher after calling hash() on it", !this.f42369c);
            this.f42367a.update(b2);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.hash.a
        public final void f(byte[] bArr, int i2, int i3) {
            Preconditions.h("Cannot re-use a Hasher after calling hash() on it", !this.f42369c);
            this.f42367a.update(bArr, i2, i3);
        }
    }

    public i() {
        boolean z;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            this.f42364b = messageDigest;
            this.f42365c = messageDigest.getDigestLength();
            this.f42366e = "Hashing.md5()";
            try {
                messageDigest.clone();
                z = true;
            } catch (CloneNotSupportedException unused) {
                z = false;
            }
            this.d = z;
        } catch (NoSuchAlgorithmException e2) {
            md.h(e2);
            throw null;
        }
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.hash.HashFunction
    public final j a() {
        boolean z = this.d;
        int i2 = this.f42365c;
        MessageDigest messageDigest = this.f42364b;
        if (z) {
            try {
                return new a((MessageDigest) messageDigest.clone(), i2);
            } catch (CloneNotSupportedException unused) {
            }
        }
        try {
            return new a(MessageDigest.getInstance(messageDigest.getAlgorithm()), i2);
        } catch (NoSuchAlgorithmException e2) {
            md.h(e2);
            return null;
        }
    }

    public final String toString() {
        return this.f42366e;
    }
}
