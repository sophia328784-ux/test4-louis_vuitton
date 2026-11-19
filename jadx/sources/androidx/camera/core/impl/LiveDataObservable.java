package androidx.camera.core.impl;

import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.lifecycle.MutableLiveData;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.fw;
import defpackage.jr;
import defpackage.z90;
import defpackage.zi;
import java.util.HashMap;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class LiveDataObservable<T> implements Observable<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableLiveData f2308a = new MutableLiveData();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f2309b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public zi f2310c;

    public static final class Result<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f2311a;

        public Result(Object obj) {
            this.f2311a = obj;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("[Result: <");
            sb.append("Value: " + this.f2311a);
            sb.append(">]");
            return sb.toString();
        }
    }

    @Override // androidx.camera.core.impl.Observable
    public final ListenableFuture a() {
        return CallbackToFutureAdapter.a(new fw(this, 13));
    }

    @Override // androidx.camera.core.impl.Observable
    public final void b(Executor executor, Observable.Observer observer) {
        synchronized (this.f2309b) {
            boolean zIsEmpty = this.f2309b.isEmpty();
            this.f2309b.put(observer, executor);
            if (zIsEmpty) {
                CameraXExecutors.c().execute(new z90(this, 1));
            } else {
                executor.execute(new jr(this, observer, 27));
            }
        }
    }

    @Override // androidx.camera.core.impl.Observable
    public final void d(Observable.Observer observer) {
        synchronized (this.f2309b) {
            this.f2309b.remove(observer);
            if (this.f2309b.isEmpty()) {
                CameraXExecutors.c().execute(new z90(this, 0));
            }
        }
    }
}
