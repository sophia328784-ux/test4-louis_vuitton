package io.reactivex.rxjava3.observers;

import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AppendOnlyLinkedArrayList;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* JADX INFO: loaded from: classes4.dex */
public final class SerializedObserver<T> implements Observer<T>, Disposable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Observer f71137b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f71138c;
    public Disposable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f71139e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public AppendOnlyLinkedArrayList f71140f;
    public volatile boolean g;

    public SerializedObserver(Observer<? super T> observer, boolean z) {
        this.f71137b = observer;
        this.f71138c = z;
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
        this.g = true;
        this.d.dispose();
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        return this.d.isDisposed();
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onComplete() {
        if (this.g) {
            return;
        }
        synchronized (this) {
            try {
                if (this.g) {
                    return;
                }
                if (!this.f71139e) {
                    this.g = true;
                    this.f71139e = true;
                    this.f71137b.onComplete();
                } else {
                    AppendOnlyLinkedArrayList appendOnlyLinkedArrayList = this.f71140f;
                    if (appendOnlyLinkedArrayList == null) {
                        appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList(4);
                        this.f71140f = appendOnlyLinkedArrayList;
                    }
                    appendOnlyLinkedArrayList.a(NotificationLite.COMPLETE);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onError(Throwable th) {
        if (this.g) {
            RxJavaPlugins.b(th);
            return;
        }
        synchronized (this) {
            try {
                boolean z = true;
                if (!this.g) {
                    if (this.f71139e) {
                        this.g = true;
                        AppendOnlyLinkedArrayList appendOnlyLinkedArrayList = this.f71140f;
                        if (appendOnlyLinkedArrayList == null) {
                            appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList(4);
                            this.f71140f = appendOnlyLinkedArrayList;
                        }
                        Object objD = NotificationLite.d(th);
                        if (this.f71138c) {
                            appendOnlyLinkedArrayList.a(objD);
                        } else {
                            appendOnlyLinkedArrayList.f71115b[0] = objD;
                        }
                        return;
                    }
                    this.g = true;
                    this.f71139e = true;
                    z = false;
                }
                if (z) {
                    RxJavaPlugins.b(th);
                } else {
                    this.f71137b.onError(th);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onNext(Object obj) {
        if (this.g) {
            return;
        }
        if (obj == null) {
            this.d.dispose();
            onError(ExceptionHelper.b("onNext called with a null value."));
            return;
        }
        synchronized (this) {
            try {
                if (this.g) {
                    return;
                }
                if (this.f71139e) {
                    AppendOnlyLinkedArrayList appendOnlyLinkedArrayList = this.f71140f;
                    if (appendOnlyLinkedArrayList == null) {
                        appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList(4);
                        this.f71140f = appendOnlyLinkedArrayList;
                    }
                    appendOnlyLinkedArrayList.a(obj);
                    return;
                }
                this.f71139e = true;
                this.f71137b.onNext(obj);
                while (true) {
                    synchronized (this) {
                        try {
                            AppendOnlyLinkedArrayList appendOnlyLinkedArrayList2 = this.f71140f;
                            if (appendOnlyLinkedArrayList2 == null) {
                                this.f71139e = false;
                                return;
                            }
                            this.f71140f = null;
                            Observer observer = this.f71137b;
                            int i2 = appendOnlyLinkedArrayList2.f71114a;
                            for (Object[] objArr = appendOnlyLinkedArrayList2.f71115b; objArr != null; objArr = objArr[i2]) {
                                for (int i3 = 0; i3 < i2; i3++) {
                                    Object[] objArr2 = objArr[i3];
                                    if (objArr2 == null) {
                                        break;
                                    } else {
                                        if (NotificationLite.b(observer, objArr2)) {
                                            return;
                                        }
                                    }
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onSubscribe(Disposable disposable) {
        if (DisposableHelper.g(this.d, disposable)) {
            this.d = disposable;
            this.f71137b.onSubscribe(this);
        }
    }

    public SerializedObserver(Observer<? super T> observer) {
        this(observer, false);
    }
}
