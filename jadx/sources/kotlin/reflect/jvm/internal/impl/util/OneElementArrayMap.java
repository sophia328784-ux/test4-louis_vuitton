package kotlin.reflect.jvm.internal.impl.util;

import defpackage.b21;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes4.dex */
public final class OneElementArrayMap<T> extends ArrayMap<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f74348b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f74349c;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.util.OneElementArrayMap$iterator$1, reason: invalid class name */
    public final class AnonymousClass1 implements Iterator<Object>, KMappedMarker {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f74350b = true;

        public AnonymousClass1() {
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f74350b;
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (this.f74350b) {
                this.f74350b = false;
                return OneElementArrayMap.this.f74348b;
            }
            b21.x();
            return null;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OneElementArrayMap(T t, int i2) {
        super(null);
        t.getClass();
        this.f74348b = t;
        this.f74349c = i2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.ArrayMap
    public final int f() {
        return 1;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.ArrayMap
    public final Object get(int i2) {
        if (i2 == this.f74349c) {
            return this.f74348b;
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.ArrayMap
    public final void h(int i2, Object obj) {
        throw new IllegalStateException();
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.ArrayMap, java.lang.Iterable
    public final Iterator iterator() {
        return new AnonymousClass1();
    }
}
