package kotlin.reflect.jvm.internal.impl.utils;

import defpackage.b21;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.collections.AbstractMutableSet;
import kotlin.collections.ArraysKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.jvm.internal.markers.KMutableIterator;

/* JADX INFO: loaded from: classes4.dex */
public final class SmartSet<T> extends AbstractMutableSet<T> {
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f74397b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f74398c;

    public static final class ArrayIterator<T> implements Iterator<T>, KMutableIterator {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Iterator f74399b;

        public ArrayIterator(T[] tArr) {
            tArr.getClass();
            this.f74399b = ArrayIteratorKt.a(tArr);
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f74399b.hasNext();
        }

        @Override // java.util.Iterator
        public final Object next() {
            return this.f74399b.next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static SmartSet a() {
            return new SmartSet(null);
        }
    }

    public static final class SingletonIterator<T> implements Iterator<T>, KMutableIterator {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f74400b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f74401c = true;

        public SingletonIterator(T t) {
            this.f74400b = t;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f74401c;
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (this.f74401c) {
                this.f74401c = false;
                return this.f74400b;
            }
            b21.x();
            return null;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public SmartSet(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        Object obj2;
        int i2 = this.f74398c;
        if (i2 == 0) {
            this.f74397b = obj;
        } else {
            Object obj3 = this.f74397b;
            if (i2 == 1) {
                if (Intrinsics.c(obj3, obj)) {
                    return false;
                }
                this.f74397b = new Object[]{this.f74397b, obj};
            } else if (i2 < 5) {
                obj3.getClass();
                Object[] objArr = (Object[]) obj3;
                if (ArraysKt.f(obj, objArr)) {
                    return false;
                }
                int i3 = this.f74398c;
                if (i3 == 4) {
                    LinkedHashSet linkedHashSetB = SetsKt.b(Arrays.copyOf(objArr, objArr.length));
                    linkedHashSetB.add(obj);
                    obj2 = linkedHashSetB;
                } else {
                    Object[] objArrCopyOf = Arrays.copyOf(objArr, i3 + 1);
                    objArrCopyOf[objArrCopyOf.length - 1] = obj;
                    obj2 = objArrCopyOf;
                }
                this.f74397b = obj2;
            } else {
                obj3.getClass();
                if (!TypeIntrinsics.d(obj3).add(obj)) {
                    return false;
                }
            }
        }
        this.f74398c++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f74397b = null;
        this.f74398c = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (f() == 0) {
            return false;
        }
        if (f() == 1) {
            return Intrinsics.c(this.f74397b, obj);
        }
        int iF = f();
        Object obj2 = this.f74397b;
        if (iF < 5) {
            obj2.getClass();
            return ArraysKt.f(obj, (Object[]) obj2);
        }
        obj2.getClass();
        return ((Set) obj2).contains(obj);
    }

    @Override // kotlin.collections.AbstractMutableSet
    public final int f() {
        return this.f74398c;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        if (f() == 0) {
            return Collections.EMPTY_SET.iterator();
        }
        if (f() == 1) {
            return new SingletonIterator(this.f74397b);
        }
        int iF = f();
        Object obj = this.f74397b;
        if (iF < 5) {
            obj.getClass();
            return new ArrayIterator((Object[]) obj);
        }
        obj.getClass();
        return TypeIntrinsics.d(obj).iterator();
    }
}
