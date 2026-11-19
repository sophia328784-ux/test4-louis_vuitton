package com.google.common.base;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Suppliers {

    public static final class MemoizingSupplier<T> implements Supplier<T>, Serializable {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public transient Object f33501b = new Object();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Supplier f33502c;
        public volatile transient boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public transient Object f33503e;

        public MemoizingSupplier(Supplier supplier) {
            supplier.getClass();
            this.f33502c = supplier;
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.f33501b = new Object();
        }

        @Override // com.google.common.base.Supplier
        public final Object get() {
            if (!this.d) {
                synchronized (this.f33501b) {
                    try {
                        if (!this.d) {
                            Object obj = this.f33502c.get();
                            this.f33503e = obj;
                            this.d = true;
                            return obj;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return this.f33503e;
        }

        public final String toString() {
            return defpackage.a.n(new StringBuilder("Suppliers.memoize("), this.d ? defpackage.a.n(new StringBuilder("<supplier that returned "), this.f33503e, ">") : this.f33502c, ")");
        }
    }

    public static final class NonSerializableMemoizingSupplier<T> implements Supplier<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f33504b = new Object();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public volatile Supplier f33505c;
        public Object d;

        public NonSerializableMemoizingSupplier(Supplier supplier) {
            supplier.getClass();
            this.f33505c = supplier;
        }

        @Override // com.google.common.base.Supplier
        public final Object get() {
            if (this.f33505c != null) {
                synchronized (this.f33504b) {
                    try {
                        if (this.f33505c != null) {
                            Object obj = this.f33505c.get();
                            this.d = obj;
                            this.f33505c = null;
                            return obj;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return this.d;
        }

        public final String toString() {
            Object objN = this.f33505c;
            StringBuilder sb = new StringBuilder("Suppliers.memoize(");
            if (objN == null) {
                objN = defpackage.a.n(new StringBuilder("<supplier that returned "), this.d, ">");
            }
            return defpackage.a.n(sb, objN, ")");
        }
    }

    public interface SupplierFunction<T> extends Function<Supplier<T>, T> {
    }

    public static final class SupplierOfInstance<T> implements Supplier<T>, Serializable {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f33506b;

        public SupplierOfInstance(Object obj) {
            this.f33506b = obj;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof SupplierOfInstance) {
                return this.f33506b.equals(((SupplierOfInstance) obj).f33506b);
            }
            return false;
        }

        @Override // com.google.common.base.Supplier
        public final Object get() {
            return this.f33506b;
        }

        public final int hashCode() {
            return Objects.hash(this.f33506b);
        }

        public final String toString() {
            return defpackage.a.n(new StringBuilder("Suppliers.ofInstance("), this.f33506b, ")");
        }
    }

    public static Supplier a(Supplier supplier) {
        if ((supplier instanceof NonSerializableMemoizingSupplier) || (supplier instanceof MemoizingSupplier)) {
            return supplier;
        }
        return supplier instanceof Serializable ? new MemoizingSupplier(supplier) : new NonSerializableMemoizingSupplier(supplier);
    }

    public static Supplier b(Object obj) {
        return new SupplierOfInstance(obj);
    }
}
