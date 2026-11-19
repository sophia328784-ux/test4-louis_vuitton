package com.bumptech.glide.util;

/* JADX INFO: loaded from: classes2.dex */
public abstract class GlideSuppliers {

    public interface GlideSupplier<T> {
        Object get();
    }

    public static GlideSupplier a(final GlideSupplier glideSupplier) {
        return new GlideSupplier<Object>() { // from class: com.bumptech.glide.util.GlideSuppliers.1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public volatile Object f24985b;

            @Override // com.bumptech.glide.util.GlideSuppliers.GlideSupplier
            public final Object get() {
                if (this.f24985b == null) {
                    synchronized (this) {
                        try {
                            if (this.f24985b == null) {
                                Object obj = glideSupplier.get();
                                Preconditions.c(obj, "Argument must not be null");
                                this.f24985b = obj;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return this.f24985b;
            }
        };
    }
}
