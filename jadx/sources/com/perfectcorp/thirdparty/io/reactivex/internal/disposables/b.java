package com.perfectcorp.thirdparty.io.reactivex.internal.disposables;

import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.plugins.a;
import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes3.dex */
public final class b implements Disposable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f42600a = new b("DISPOSED", 0);

    public static void a(AtomicReference atomicReference) {
        Disposable disposable;
        Disposable disposable2 = (Disposable) atomicReference.get();
        b bVar = f42600a;
        if (disposable2 == bVar || (disposable = (Disposable) atomicReference.getAndSet(bVar)) == bVar || disposable == null) {
            return;
        }
        disposable.dispose();
    }

    public static boolean b(Disposable disposable) {
        return disposable == f42600a;
    }

    public static boolean c(Disposable disposable, Disposable disposable2) {
        if (disposable2 == null) {
            a.a(new NullPointerException("next is null"));
            return false;
        }
        if (disposable == null) {
            return true;
        }
        disposable2.dispose();
        a.a(new com.perfectcorp.thirdparty.io.reactivex.exceptions.b("Disposable already set!"));
        return false;
    }

    public static boolean d(AtomicReference atomicReference, Disposable disposable) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(disposable, "d is null");
        while (!atomicReference.compareAndSet(null, disposable)) {
            if (atomicReference.get() != null) {
                disposable.dispose();
                if (atomicReference.get() == f42600a) {
                    return false;
                }
                a.a(new com.perfectcorp.thirdparty.io.reactivex.exceptions.b("Disposable already set!"));
                return false;
            }
        }
        return true;
    }

    public static void e(AtomicReference atomicReference, Disposable disposable) {
        while (true) {
            Disposable disposable2 = (Disposable) atomicReference.get();
            if (disposable2 != f42600a) {
                while (!atomicReference.compareAndSet(disposable2, disposable)) {
                    if (atomicReference.get() != disposable2) {
                    }
                }
                return;
            } else {
                if (disposable != null) {
                    disposable.dispose();
                    return;
                }
                return;
            }
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
    public final void dispose() {
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return true;
    }
}
