package io.reactivex.rxjava3.disposables;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.internal.util.OpenHashSet;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class CompositeDisposable implements Disposable, DisposableContainer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public OpenHashSet f70028b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile boolean f70029c;

    public CompositeDisposable(Iterable<? extends Disposable> iterable) {
        Objects.requireNonNull(iterable, "disposables is null");
        this.f70028b = new OpenHashSet();
        for (Disposable disposable : iterable) {
            Objects.requireNonNull(disposable, "A Disposable item in the disposables sequence is null");
            this.f70028b.a(disposable);
        }
    }

    public static void e(OpenHashSet openHashSet) {
        if (openHashSet == null) {
            return;
        }
        ArrayList arrayList = null;
        for (Object obj : openHashSet.f71125e) {
            if (obj instanceof Disposable) {
                try {
                    ((Disposable) obj).dispose();
                } catch (Throwable th) {
                    Exceptions.a(th);
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
            throw ExceptionHelper.e((Throwable) arrayList.get(0));
        }
    }

    @Override // io.reactivex.rxjava3.disposables.DisposableContainer
    public final boolean a(Disposable disposable) {
        if (!c(disposable)) {
            return false;
        }
        disposable.dispose();
        return true;
    }

    @Override // io.reactivex.rxjava3.disposables.DisposableContainer
    public final boolean b(Disposable disposable) {
        Objects.requireNonNull(disposable, "disposable is null");
        if (!this.f70029c) {
            synchronized (this) {
                try {
                    if (!this.f70029c) {
                        OpenHashSet openHashSet = this.f70028b;
                        if (openHashSet == null) {
                            openHashSet = new OpenHashSet();
                            this.f70028b = openHashSet;
                        }
                        openHashSet.a(disposable);
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

    @Override // io.reactivex.rxjava3.disposables.DisposableContainer
    public final boolean c(Disposable disposable) {
        Object obj;
        Objects.requireNonNull(disposable, "disposable is null");
        if (this.f70029c) {
            return false;
        }
        synchronized (this) {
            try {
                if (this.f70029c) {
                    return false;
                }
                OpenHashSet openHashSet = this.f70028b;
                if (openHashSet != null) {
                    Object[] objArr = openHashSet.f71125e;
                    int i2 = openHashSet.f71123b;
                    int iHashCode = disposable.hashCode() * (-1640531527);
                    int i3 = (iHashCode ^ (iHashCode >>> 16)) & i2;
                    Object obj2 = objArr[i3];
                    if (obj2 != null) {
                        if (obj2.equals(disposable)) {
                            openHashSet.b(i3, i2, objArr);
                        } else {
                            do {
                                i3 = (i3 + 1) & i2;
                                obj = objArr[i3];
                                if (obj == null) {
                                }
                            } while (!obj.equals(disposable));
                            openHashSet.b(i3, i2, objArr);
                        }
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d() {
        if (this.f70029c) {
            return;
        }
        synchronized (this) {
            try {
                if (this.f70029c) {
                    return;
                }
                OpenHashSet openHashSet = this.f70028b;
                this.f70028b = null;
                e(openHashSet);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
        if (this.f70029c) {
            return;
        }
        synchronized (this) {
            try {
                if (this.f70029c) {
                    return;
                }
                this.f70029c = true;
                OpenHashSet openHashSet = this.f70028b;
                this.f70028b = null;
                e(openHashSet);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final int g() {
        if (this.f70029c) {
            return 0;
        }
        synchronized (this) {
            try {
                if (this.f70029c) {
                    return 0;
                }
                OpenHashSet openHashSet = this.f70028b;
                return openHashSet != null ? openHashSet.f71124c : 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        return this.f70029c;
    }

    public CompositeDisposable(Disposable... disposableArr) {
        Objects.requireNonNull(disposableArr, "disposables is null");
        this.f70028b = new OpenHashSet(disposableArr.length + 1);
        for (Disposable disposable : disposableArr) {
            Objects.requireNonNull(disposable, "A Disposable in the disposables array is null");
            this.f70028b.a(disposable);
        }
    }

    public CompositeDisposable() {
    }
}
