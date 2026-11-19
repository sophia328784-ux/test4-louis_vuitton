package com.bumptech.glide.load.resource.bytes;

import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public class BytesResource implements Resource<byte[]> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f24827b;

    public BytesResource(byte[] bArr) {
        Preconditions.c(bArr, "Argument must not be null");
        this.f24827b = bArr;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final void a() {
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Class b() {
        return byte[].class;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Object get() {
        return this.f24827b;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final int getSize() {
        return this.f24827b.length;
    }
}
