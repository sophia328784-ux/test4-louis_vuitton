package kotlin.reflect.jvm.internal.impl.util;

import java.util.Arrays;
import java.util.Iterator;
import kotlin.collections.AbstractIterator;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public final class ArrayMapImpl<T> extends ArrayMap<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object[] f74327b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f74328c;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public ArrayMapImpl() {
        super(null);
        this.f74327b = new Object[20];
        this.f74328c = 0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.ArrayMap
    public final int f() {
        return this.f74328c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.ArrayMap
    public final Object get(int i2) {
        return ArraysKt.C(i2, this.f74327b);
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.ArrayMap
    public final void h(int i2, Object obj) {
        obj.getClass();
        Object[] objArr = this.f74327b;
        if (objArr.length <= i2) {
            int length = objArr.length;
            do {
                length *= 2;
            } while (length <= i2);
            this.f74327b = Arrays.copyOf(this.f74327b, length);
        }
        Object[] objArr2 = this.f74327b;
        if (objArr2[i2] == null) {
            this.f74328c++;
        }
        objArr2[i2] = obj;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.ArrayMap, java.lang.Iterable
    public final Iterator iterator() {
        return new AbstractIterator<Object>() { // from class: kotlin.reflect.jvm.internal.impl.util.ArrayMapImpl.iterator.1
            public int d = -1;

            @Override // kotlin.collections.AbstractIterator
            public final void a() {
                int i2;
                Object[] objArr;
                do {
                    i2 = this.d + 1;
                    this.d = i2;
                    objArr = ArrayMapImpl.this.f74327b;
                    if (i2 >= objArr.length) {
                        break;
                    }
                } while (objArr[i2] == null);
                if (i2 >= objArr.length) {
                    this.f71742b = 2;
                    return;
                }
                Object obj = objArr[i2];
                obj.getClass();
                this.f71743c = obj;
                this.f71742b = 1;
            }
        };
    }
}
