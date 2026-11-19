package androidx.camera.core.impl;

import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.CameraUnavailableException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractCameraPresenceSource implements Observable<List<CameraIdentifier>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f2149a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CopyOnWriteArrayList f2150b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List f2151c;
    public Throwable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2152e;

    public static class ObserverWrapper {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Executor f2153a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observable.Observer f2154b;

        public ObserverWrapper(Executor executor, Observable.Observer observer) {
            this.f2153a = executor;
            this.f2154b = observer;
        }
    }

    public AbstractCameraPresenceSource(List<String> list) {
        this.f2149a = new Object();
        this.f2150b = new CopyOnWriteArrayList();
        this.d = null;
        this.f2152e = false;
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            CameraIdentifier.f1888c.getClass();
            str.getClass();
            arrayList.add(CameraIdentifier.Companion.a(str, null, null));
        }
        this.f2151c = arrayList;
    }

    @Override // androidx.camera.core.impl.Observable
    public final void b(Executor executor, Observable.Observer observer) {
        List listUnmodifiableList;
        Throwable th;
        executor.getClass();
        observer.getClass();
        this.f2150b.add(new ObserverWrapper(executor, observer));
        synchronized (this.f2149a) {
            try {
                if (!this.f2152e && !this.f2150b.isEmpty()) {
                    this.f2152e = true;
                    c();
                }
                listUnmodifiableList = Collections.unmodifiableList(this.f2151c);
                th = this.d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        executor.execute(new a(th, new ObserverWrapper(executor, observer), listUnmodifiableList));
    }

    public abstract void c();

    @Override // androidx.camera.core.impl.Observable
    public final void d(Observable.Observer observer) {
        ObserverWrapper observerWrapper;
        observer.getClass();
        Iterator it = this.f2150b.iterator();
        do {
            if (!it.hasNext()) {
                observerWrapper = null;
                break;
            }
            observerWrapper = (ObserverWrapper) it.next();
        } while (!observerWrapper.f2154b.equals(observer));
        if (observerWrapper != null) {
            this.f2150b.remove(observerWrapper);
        }
        synchronized (this.f2149a) {
            try {
                if (this.f2152e && this.f2150b.isEmpty()) {
                    this.f2152e = false;
                    f();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract void f();

    public final void g(ArrayList arrayList, CameraUnavailableException cameraUnavailableException) {
        boolean z;
        List listUnmodifiableList;
        Throwable th;
        synchronized (this.f2149a) {
            z = true;
            try {
                if (cameraUnavailableException != null) {
                    if (this.d != null && this.f2151c.isEmpty()) {
                        z = false;
                    }
                    this.d = cameraUnavailableException;
                    this.f2151c = Collections.EMPTY_LIST;
                } else {
                    arrayList.getClass();
                    if (this.d == null && this.f2151c.equals(arrayList)) {
                        z = false;
                    }
                    this.d = null;
                    this.f2151c = arrayList;
                }
                listUnmodifiableList = Collections.unmodifiableList(this.f2151c);
                th = this.d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z) {
            this.f2150b.size();
            for (ObserverWrapper observerWrapper : this.f2150b) {
                observerWrapper.f2153a.execute(new a(th, observerWrapper, listUnmodifiableList));
            }
        }
    }

    public AbstractCameraPresenceSource() {
        this(Collections.EMPTY_LIST);
    }
}
