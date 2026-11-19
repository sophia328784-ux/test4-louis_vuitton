package io.reactivex.rxjava3.subjects;

import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.util.AppendOnlyLinkedArrayList;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* JADX INFO: loaded from: classes4.dex */
final class SerializedSubject<T> extends Subject<T> implements AppendOnlyLinkedArrayList.NonThrowingPredicate<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PublishSubject f71170b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f71171c;
    public AppendOnlyLinkedArrayList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile boolean f71172e;

    public SerializedSubject(PublishSubject publishSubject) {
        this.f71170b = publishSubject;
    }

    public final void d() {
        AppendOnlyLinkedArrayList appendOnlyLinkedArrayList;
        while (true) {
            synchronized (this) {
                try {
                    appendOnlyLinkedArrayList = this.d;
                    if (appendOnlyLinkedArrayList == null) {
                        this.f71171c = false;
                        return;
                    }
                    this.d = null;
                } catch (Throwable th) {
                    throw th;
                }
            }
            int i2 = appendOnlyLinkedArrayList.f71114a;
            for (Object[] objArr = appendOnlyLinkedArrayList.f71115b; objArr != null; objArr = objArr[i2]) {
                for (int i3 = 0; i3 < i2; i3++) {
                    Object[] objArr2 = objArr[i3];
                    if (objArr2 == null) {
                        break;
                    } else {
                        if (NotificationLite.b(this.f71170b, objArr2)) {
                            break;
                        }
                    }
                }
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onComplete() {
        if (this.f71172e) {
            return;
        }
        synchronized (this) {
            try {
                if (this.f71172e) {
                    return;
                }
                this.f71172e = true;
                if (!this.f71171c) {
                    this.f71171c = true;
                    this.f71170b.onComplete();
                    return;
                }
                AppendOnlyLinkedArrayList appendOnlyLinkedArrayList = this.d;
                if (appendOnlyLinkedArrayList == null) {
                    appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList(4);
                    this.d = appendOnlyLinkedArrayList;
                }
                appendOnlyLinkedArrayList.a(NotificationLite.COMPLETE);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onError(Throwable th) {
        if (this.f71172e) {
            RxJavaPlugins.b(th);
            return;
        }
        synchronized (this) {
            try {
                boolean z = true;
                if (!this.f71172e) {
                    this.f71172e = true;
                    if (this.f71171c) {
                        AppendOnlyLinkedArrayList appendOnlyLinkedArrayList = this.d;
                        if (appendOnlyLinkedArrayList == null) {
                            appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList(4);
                            this.d = appendOnlyLinkedArrayList;
                        }
                        appendOnlyLinkedArrayList.f71115b[0] = NotificationLite.d(th);
                        return;
                    }
                    this.f71171c = true;
                    z = false;
                }
                if (z) {
                    RxJavaPlugins.b(th);
                } else {
                    this.f71170b.onError(th);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onNext(Object obj) {
        if (this.f71172e) {
            return;
        }
        synchronized (this) {
            try {
                if (this.f71172e) {
                    return;
                }
                if (!this.f71171c) {
                    this.f71171c = true;
                    this.f71170b.onNext(obj);
                    d();
                } else {
                    AppendOnlyLinkedArrayList appendOnlyLinkedArrayList = this.d;
                    if (appendOnlyLinkedArrayList == null) {
                        appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList(4);
                        this.d = appendOnlyLinkedArrayList;
                    }
                    appendOnlyLinkedArrayList.a(obj);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onSubscribe(Disposable disposable) {
        boolean z = true;
        if (!this.f71172e) {
            synchronized (this) {
                try {
                    if (!this.f71172e) {
                        if (this.f71171c) {
                            AppendOnlyLinkedArrayList appendOnlyLinkedArrayList = this.d;
                            if (appendOnlyLinkedArrayList == null) {
                                appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList(4);
                                this.d = appendOnlyLinkedArrayList;
                            }
                            appendOnlyLinkedArrayList.a(NotificationLite.c(disposable));
                            return;
                        }
                        this.f71171c = true;
                        z = false;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (z) {
            disposable.dispose();
        } else {
            this.f71170b.onSubscribe(disposable);
            d();
        }
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.f71170b.subscribe(observer);
    }

    @Override // io.reactivex.rxjava3.functions.Predicate
    public final boolean test(Object obj) {
        return NotificationLite.b(this.f71170b, obj);
    }
}
