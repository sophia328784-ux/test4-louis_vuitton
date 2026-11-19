package com.perfectcorp.thirdparty.io.reactivex.internal.util;

import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import java.io.Serializable;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes3.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static f f43155a = new f("COMPLETE", 0);

    public static final class a implements Serializable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Disposable f43156b;

        public a(Disposable disposable) {
            this.f43156b = disposable;
        }

        public final String toString() {
            return "NotificationLite.Disposable[" + this.f43156b + "]";
        }
    }

    public static final class b implements Serializable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Throwable f43157b;

        public b(Throwable th) {
            this.f43157b = th;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            Object obj2 = ((b) obj).f43157b;
            Throwable th = this.f43157b;
            if (th != obj2) {
                return th != null && th.equals(obj2);
            }
            return true;
        }

        public final int hashCode() {
            return this.f43157b.hashCode();
        }

        public final String toString() {
            return "NotificationLite.Error[" + this.f43157b + "]";
        }
    }

    public static f a() {
        return f43155a;
    }

    public static Object b(Disposable disposable) {
        return new a(disposable);
    }

    public static Object c(Throwable th) {
        return new b(th);
    }

    public static boolean d(com.perfectcorp.thirdparty.io.reactivex.e eVar, Object obj) {
        if (obj == f43155a) {
            eVar.onComplete();
            return true;
        }
        if (obj instanceof b) {
            eVar.onError(((b) obj).f43157b);
            return true;
        }
        if (obj instanceof a) {
            eVar.onSubscribe(((a) obj).f43156b);
            return false;
        }
        eVar.onNext(obj);
        return false;
    }

    public static boolean e(Object obj) {
        return obj == f43155a;
    }

    public static Throwable f(Object obj) {
        return ((b) obj).f43157b;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "NotificationLite.Complete";
    }
}
