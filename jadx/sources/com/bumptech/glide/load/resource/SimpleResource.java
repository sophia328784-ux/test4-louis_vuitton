package com.bumptech.glide.load.resource;

import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public class SimpleResource<T> implements Resource<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f24746b;

    public SimpleResource(T t) {
        Preconditions.c(t, "Argument must not be null");
        this.f24746b = t;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final void a() {
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Class b() {
        return this.f24746b.getClass();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Object get() {
        return this.f24746b;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final int getSize() {
        return 1;
    }
}
