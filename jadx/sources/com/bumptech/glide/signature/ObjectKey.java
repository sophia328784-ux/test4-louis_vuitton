package com.bumptech.glide.signature;

import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.Preconditions;
import defpackage.o60;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes2.dex */
public final class ObjectKey implements Key {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f24971b;

    public ObjectKey(Object obj) {
        Preconditions.c(obj, "Argument must not be null");
        this.f24971b = obj;
    }

    @Override // com.bumptech.glide.load.Key
    public final void b(MessageDigest messageDigest) {
        messageDigest.update(this.f24971b.toString().getBytes(Key.f24395a));
    }

    @Override // com.bumptech.glide.load.Key
    public final boolean equals(Object obj) {
        if (obj instanceof ObjectKey) {
            return this.f24971b.equals(((ObjectKey) obj).f24971b);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public final int hashCode() {
        return this.f24971b.hashCode();
    }

    public final String toString() {
        return o60.r(new StringBuilder("ObjectKey{object="), this.f24971b, '}');
    }
}
