package com.perfectcorp.thirdparty.io.reactivex.internal.functions;

import com.perfectcorp.perfectlib.z0;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import com.perfectcorp.thirdparty.io.reactivex.functions.BiFunction;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.functions.Predicate;
import defpackage.md;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Functions {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Function f42605a = new l();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Runnable f42606b = new h();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Action f42607c = new e();
    public static final Consumer d = new f();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Predicate f42608e = new q();

    public static final class a<T1, T2, R> implements Function<Object[], R> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public BiFunction f42609b;

        @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
        public final /* synthetic */ Object apply(Object obj) {
            Object[] objArr = (Object[]) obj;
            if (objArr.length == 2) {
                return this.f42609b.apply(objArr[0], objArr[1]);
            }
            md.g(objArr.length, "Array of size 2 expected but got ");
            return null;
        }
    }

    public static final class b<T1, T2, T3, R> implements Function<Object[], R> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public z0 f42610b;

        @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
        public final /* synthetic */ Object apply(Object obj) {
            Object[] objArr = (Object[]) obj;
            if (objArr.length == 3) {
                return this.f42610b.a(objArr[0], objArr[1], objArr[2]);
            }
            md.g(objArr.length, "Array of size 3 expected but got ");
            return null;
        }
    }

    public static final class c<T> implements Callable<List<T>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f42611a;

        public c(int i2) {
            this.f42611a = i2;
        }

        @Override // java.util.concurrent.Callable
        public final /* synthetic */ Object call() throws Exception {
            return new ArrayList(this.f42611a);
        }
    }

    public static final class d<T, U> implements Function<T, U> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Class f42612b;

        @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
        public final Object apply(Object obj) {
            return this.f42612b.cast(obj);
        }
    }

    public static final class e implements Action {
        @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
        public final void run() {
        }

        public final String toString() {
            return "EmptyAction";
        }
    }

    public static final class f implements Consumer<Object> {
        @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
        public final void accept(Object obj) {
        }

        public final String toString() {
            return "EmptyConsumer";
        }
    }

    public static final class h implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
        }

        public final String toString() {
            return "EmptyRunnable";
        }
    }

    public static final class i<T> implements Predicate<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f42613b;

        @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Predicate
        public final boolean test(Object obj) {
            Object obj2 = this.f42613b;
            if (obj != obj2) {
                return obj != null && obj.equals(obj2);
            }
            return true;
        }
    }

    public static final class l implements Function<Object, Object> {
        @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
        public final Object apply(Object obj) {
            return obj;
        }

        public final String toString() {
            return "IdentityFunction";
        }
    }

    public static final class m<T, U> implements Function<T, U>, Callable<U> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private U f42614a;

        public m(U u) {
            this.f42614a = u;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
        public final U apply(T t) throws Exception {
            return this.f42614a;
        }

        @Override // java.util.concurrent.Callable
        public final U call() throws Exception {
            return this.f42614a;
        }
    }

    public static final class p implements Callable<Object> {
        @Override // java.util.concurrent.Callable
        public final Object call() {
            return null;
        }
    }

    public static final class q implements Predicate<Object> {
        @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Predicate
        public final boolean test(Object obj) {
            return true;
        }
    }

    static {
        new p();
    }

    public static Function a(z0 z0Var) {
        b bVar = new b();
        bVar.f42610b = z0Var;
        return bVar;
    }

    public static Function b(BiFunction biFunction) {
        a aVar = new a();
        aVar.f42609b = biFunction;
        return aVar;
    }

    public static Function c(Class cls) {
        d dVar = new d();
        dVar.f42612b = cls;
        return dVar;
    }

    public static Callable d(int i2) {
        return new c(i2);
    }

    public static Callable e(Object obj) {
        return new m(obj);
    }

    public static Predicate f(Object obj) {
        i iVar = new i();
        iVar.f42613b = obj;
        return iVar;
    }
}
