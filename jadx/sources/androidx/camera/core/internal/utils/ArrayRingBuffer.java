package androidx.camera.core.internal.utils;

import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes.dex */
public class ArrayRingBuffer<T> implements RingBuffer<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2512a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayDeque f2513b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f2514c;
    public final RingBuffer.OnRemoveCallback d;

    public ArrayRingBuffer(int i2, RingBuffer.OnRemoveCallback<T> onRemoveCallback) {
        this.f2514c = new Object();
        this.f2512a = i2;
        this.f2513b = new ArrayDeque(i2);
        this.d = onRemoveCallback;
    }

    public final Object a() {
        Object objRemoveLast;
        synchronized (this.f2514c) {
            objRemoveLast = this.f2513b.removeLast();
        }
        return objRemoveLast;
    }

    public void b(Object obj) {
        Object objA;
        synchronized (this.f2514c) {
            try {
                objA = this.f2513b.size() >= this.f2512a ? a() : null;
                this.f2513b.addFirst(obj);
            } catch (Throwable th) {
                throw th;
            }
        }
        RingBuffer.OnRemoveCallback onRemoveCallback = this.d;
        if (onRemoveCallback == null || objA == null) {
            return;
        }
        onRemoveCallback.d(objA);
    }

    public final boolean c() {
        boolean zIsEmpty;
        synchronized (this.f2514c) {
            zIsEmpty = this.f2513b.isEmpty();
        }
        return zIsEmpty;
    }

    public ArrayRingBuffer(int i2) {
        this(i2, null);
    }
}
