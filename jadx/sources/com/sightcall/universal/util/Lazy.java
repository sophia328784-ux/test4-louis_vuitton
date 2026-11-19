package com.sightcall.universal.util;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Lazy<T> {
    private final AtomicReference<T> value = new AtomicReference<>();

    public final T get() {
        if (this.value.get() == null) {
            synchronized (this.value) {
                try {
                    if (this.value.get() == null) {
                        this.value.set(init());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.value.get();
    }

    public abstract T init();

    public void set(T t) {
        this.value.set(t);
    }
}
