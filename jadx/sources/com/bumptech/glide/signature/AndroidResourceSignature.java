package com.bumptech.glide.signature;

import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.Util;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidResourceSignature implements Key {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f24967b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Key f24968c;

    public AndroidResourceSignature(int i2, Key key) {
        this.f24967b = i2;
        this.f24968c = key;
    }

    @Override // com.bumptech.glide.load.Key
    public final void b(MessageDigest messageDigest) {
        this.f24968c.b(messageDigest);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f24967b).array());
    }

    @Override // com.bumptech.glide.load.Key
    public final boolean equals(Object obj) {
        if (!(obj instanceof AndroidResourceSignature)) {
            return false;
        }
        AndroidResourceSignature androidResourceSignature = (AndroidResourceSignature) obj;
        return this.f24967b == androidResourceSignature.f24967b && this.f24968c.equals(androidResourceSignature.f24968c);
    }

    @Override // com.bumptech.glide.load.Key
    public final int hashCode() {
        return Util.h(this.f24967b, this.f24968c);
    }
}
