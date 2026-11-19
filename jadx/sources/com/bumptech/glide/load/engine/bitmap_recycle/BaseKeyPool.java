package com.bumptech.glide.load.engine.bitmap_recycle;

import com.bumptech.glide.load.engine.bitmap_recycle.Poolable;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes2.dex */
abstract class BaseKeyPool<T extends Poolable> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayDeque f24562a = new ArrayDeque(20);

    public final void a(Poolable poolable) {
        ArrayDeque arrayDeque = this.f24562a;
        if (arrayDeque.size() < 20) {
            arrayDeque.offer(poolable);
        }
    }
}
