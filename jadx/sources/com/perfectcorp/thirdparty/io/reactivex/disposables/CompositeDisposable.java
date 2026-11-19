package com.perfectcorp.thirdparty.io.reactivex.disposables;

import com.perfectcorp.thirdparty.io.reactivex.exceptions.CompositeException;
import com.perfectcorp.thirdparty.io.reactivex.internal.disposables.DisposableContainer;
import com.perfectcorp.thirdparty.io.reactivex.internal.util.e;
import com.perfectcorp.thirdparty.io.reactivex.internal.util.g;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class CompositeDisposable implements Disposable, DisposableContainer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public g f42594b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile boolean f42595c;

    public CompositeDisposable(Iterable<? extends Disposable> iterable) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(iterable, "disposables is null");
        this.f42594b = new g();
        for (Disposable disposable : iterable) {
            com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(disposable, "A Disposable item in the disposables sequence is null");
            this.f42594b.b(disposable);
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.disposables.DisposableContainer
    public final boolean a(Disposable disposable) {
        if (!c(disposable)) {
            return false;
        }
        disposable.dispose();
        return true;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.disposables.DisposableContainer
    public final boolean b(Disposable disposable) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(disposable, "disposable is null");
        if (!this.f42595c) {
            synchronized (this) {
                try {
                    if (!this.f42595c) {
                        g gVar = this.f42594b;
                        if (gVar == null) {
                            gVar = new g();
                            this.f42594b = gVar;
                        }
                        gVar.b(disposable);
                        return true;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        disposable.dispose();
        return false;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.disposables.DisposableContainer
    public final boolean c(Disposable disposable) {
        Object obj;
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(disposable, "disposables is null");
        if (this.f42595c) {
            return false;
        }
        synchronized (this) {
            try {
                if (this.f42595c) {
                    return false;
                }
                g gVar = this.f42594b;
                if (gVar != null) {
                    Object[] objArr = gVar.f43161e;
                    int i2 = gVar.f43159b;
                    int iHashCode = disposable.hashCode() * (-1640531527);
                    int i3 = (iHashCode ^ (iHashCode >>> 16)) & i2;
                    Object obj2 = objArr[i3];
                    if (obj2 != null) {
                        if (!obj2.equals(disposable)) {
                            do {
                                i3 = (i3 + 1) & i2;
                                obj = objArr[i3];
                                if (obj == null) {
                                }
                            } while (!obj.equals(disposable));
                        }
                        gVar.a(i3, i2, objArr);
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
    public final void dispose() throws Throwable {
        if (this.f42595c) {
            return;
        }
        synchronized (this) {
            try {
                if (this.f42595c) {
                    return;
                }
                this.f42595c = true;
                g gVar = this.f42594b;
                ArrayList arrayList = null;
                this.f42594b = null;
                if (gVar == null) {
                    return;
                }
                for (Object obj : gVar.f43161e) {
                    if (obj instanceof Disposable) {
                        try {
                            ((Disposable) obj).dispose();
                        } catch (Throwable th) {
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                            }
                            arrayList.add(th);
                        }
                    }
                }
                if (arrayList != null) {
                    if (arrayList.size() != 1) {
                        throw new CompositeException(arrayList);
                    }
                    Throwable th2 = (Throwable) arrayList.get(0);
                    Throwable th3 = e.f43154a;
                    throw th2;
                }
            } catch (Throwable th4) {
                throw th4;
            }
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return this.f42595c;
    }

    public CompositeDisposable() {
    }

    public CompositeDisposable(Disposable... disposableArr) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(disposableArr, "disposables is null");
        this.f42594b = new g(disposableArr.length + 1);
        for (Disposable disposable : disposableArr) {
            com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(disposable, "A Disposable in the disposables array is null");
            this.f42594b.b(disposable);
        }
    }
}
