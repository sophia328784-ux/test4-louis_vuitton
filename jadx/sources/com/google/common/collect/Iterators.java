package com.google.common.collect;

import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import defpackage.b21;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Iterators {

    /* JADX INFO: renamed from: com.google.common.collect.Iterators$6, reason: invalid class name */
    class AnonymousClass6 extends TransformedIterator<Object, Object> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Function f33626c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass6(Iterator it, Function function) {
            super(it);
            this.f33626c = function;
        }

        @Override // com.google.common.collect.TransformedIterator
        public final Object a(Object obj) {
            return this.f33626c.apply(obj);
        }
    }

    public static final class ArrayItr<T> extends AbstractIndexedListIterator<T> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final UnmodifiableListIterator f33627e = new ArrayItr(new Object[0]);
        public final Object[] d;

        public ArrayItr(Object[] objArr) {
            super(objArr.length, 0);
            this.d = objArr;
        }

        @Override // com.google.common.collect.AbstractIndexedListIterator
        public final Object a(int i2) {
            return this.d[i2];
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class EmptyModifiableIterator implements Iterator<Object> {
        private static final /* synthetic */ EmptyModifiableIterator[] $VALUES;
        public static final EmptyModifiableIterator INSTANCE;

        static {
            EmptyModifiableIterator emptyModifiableIterator = new EmptyModifiableIterator("INSTANCE", 0);
            INSTANCE = emptyModifiableIterator;
            $VALUES = new EmptyModifiableIterator[]{emptyModifiableIterator};
        }

        public static EmptyModifiableIterator valueOf(String str) {
            return (EmptyModifiableIterator) Enum.valueOf(EmptyModifiableIterator.class, str);
        }

        public static EmptyModifiableIterator[] values() {
            return (EmptyModifiableIterator[]) $VALUES.clone();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public final Object next() {
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            Preconditions.p("no calls to next() since the last call to remove()", false);
        }
    }

    public static final class SingletonIterator<T> extends UnmodifiableIterator<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f33628b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f33629c;

        public SingletonIterator(Object obj) {
            this.f33628b = obj;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return !this.f33629c;
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (this.f33629c) {
                b21.x();
                return null;
            }
            this.f33629c = true;
            return this.f33628b;
        }
    }

    public static boolean a(Iterator it, Predicate predicate) {
        predicate.getClass();
        boolean z = false;
        while (it.hasNext()) {
            if (predicate.apply(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }
}
