package androidx.camera.core.impl.utils.futures;

import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
class ListFuture<V> implements ListenableFuture<List<V>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayList f2455b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ArrayList f2456c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AtomicInteger f2457e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ListenableFuture f2458f = CallbackToFutureAdapter.a(new CallbackToFutureAdapter.Resolver<List<Object>>() { // from class: androidx.camera.core.impl.utils.futures.ListFuture.1
        @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
        public final Object i(CallbackToFutureAdapter.Completer completer) {
            ListFuture listFuture = ListFuture.this;
            Preconditions.f("The result can only set once!", listFuture.g == null);
            listFuture.g = completer;
            return "ListFuture[" + this + "]";
        }
    });
    public CallbackToFutureAdapter.Completer g;

    public ListFuture(ArrayList arrayList, boolean z, Executor executor) {
        this.f2455b = arrayList;
        this.f2456c = new ArrayList(arrayList.size());
        this.d = z;
        this.f2457e = new AtomicInteger(arrayList.size());
        addListener(new Runnable() { // from class: androidx.camera.core.impl.utils.futures.ListFuture.2
            @Override // java.lang.Runnable
            public void run() {
                ListFuture listFuture = ListFuture.this;
                listFuture.f2456c = null;
                listFuture.f2455b = null;
            }
        }, CameraXExecutors.a());
        if (this.f2455b.isEmpty()) {
            this.g.b(new ArrayList(this.f2456c));
            return;
        }
        for (int i2 = 0; i2 < this.f2455b.size(); i2++) {
            this.f2456c.add(null);
        }
        ArrayList arrayList2 = this.f2455b;
        for (final int i3 = 0; i3 < arrayList2.size(); i3++) {
            final ListenableFuture listenableFuture = (ListenableFuture) arrayList2.get(i3);
            listenableFuture.addListener(new Runnable() { // from class: androidx.camera.core.impl.utils.futures.ListFuture.3
                @Override // java.lang.Runnable
                public void run() {
                    CallbackToFutureAdapter.Completer completer;
                    ArrayList arrayList3;
                    ListFuture listFuture = ListFuture.this;
                    int i4 = i3;
                    ListenableFuture listenableFuture2 = listenableFuture;
                    boolean z2 = listFuture.d;
                    AtomicInteger atomicInteger = listFuture.f2457e;
                    ArrayList arrayList4 = listFuture.f2456c;
                    ListenableFuture listenableFuture3 = listFuture.f2458f;
                    if (listenableFuture3.isDone() || arrayList4 == null) {
                        Preconditions.f("Future was done before all dependencies completed", z2);
                        return;
                    }
                    try {
                        try {
                            try {
                                try {
                                    Preconditions.f("Tried to set value from future which is not done", listenableFuture2.isDone());
                                    arrayList4.set(i4, Futures.d(listenableFuture2));
                                    int iDecrementAndGet = atomicInteger.decrementAndGet();
                                    Preconditions.f("Less than 0 remaining futures", iDecrementAndGet >= 0);
                                    if (iDecrementAndGet == 0) {
                                        ArrayList arrayList5 = listFuture.f2456c;
                                        if (arrayList5 != null) {
                                            listFuture.g.b(new ArrayList(arrayList5));
                                        } else {
                                            Preconditions.f(null, listenableFuture3.isDone());
                                        }
                                    }
                                } catch (CancellationException unused) {
                                    if (z2) {
                                        listFuture.cancel(false);
                                    }
                                    int iDecrementAndGet2 = atomicInteger.decrementAndGet();
                                    Preconditions.f("Less than 0 remaining futures", iDecrementAndGet2 >= 0);
                                    if (iDecrementAndGet2 == 0) {
                                        ArrayList arrayList6 = listFuture.f2456c;
                                        if (arrayList6 != null) {
                                            completer = listFuture.g;
                                            arrayList3 = new ArrayList(arrayList6);
                                            completer.b(arrayList3);
                                            return;
                                        }
                                        Preconditions.f(null, listenableFuture3.isDone());
                                    }
                                }
                            } catch (Error e2) {
                                listFuture.g.d(e2);
                                int iDecrementAndGet3 = atomicInteger.decrementAndGet();
                                Preconditions.f("Less than 0 remaining futures", iDecrementAndGet3 >= 0);
                                if (iDecrementAndGet3 == 0) {
                                    ArrayList arrayList7 = listFuture.f2456c;
                                    if (arrayList7 != null) {
                                        completer = listFuture.g;
                                        arrayList3 = new ArrayList(arrayList7);
                                        completer.b(arrayList3);
                                        return;
                                    }
                                    Preconditions.f(null, listenableFuture3.isDone());
                                }
                            }
                        } catch (RuntimeException e3) {
                            if (z2) {
                                listFuture.g.d(e3);
                            }
                            int iDecrementAndGet4 = atomicInteger.decrementAndGet();
                            Preconditions.f("Less than 0 remaining futures", iDecrementAndGet4 >= 0);
                            if (iDecrementAndGet4 == 0) {
                                ArrayList arrayList8 = listFuture.f2456c;
                                if (arrayList8 != null) {
                                    completer = listFuture.g;
                                    arrayList3 = new ArrayList(arrayList8);
                                    completer.b(arrayList3);
                                    return;
                                }
                                Preconditions.f(null, listenableFuture3.isDone());
                            }
                        } catch (ExecutionException e4) {
                            if (z2) {
                                listFuture.g.d(e4.getCause());
                            }
                            int iDecrementAndGet5 = atomicInteger.decrementAndGet();
                            Preconditions.f("Less than 0 remaining futures", iDecrementAndGet5 >= 0);
                            if (iDecrementAndGet5 == 0) {
                                ArrayList arrayList9 = listFuture.f2456c;
                                if (arrayList9 != null) {
                                    completer = listFuture.g;
                                    arrayList3 = new ArrayList(arrayList9);
                                    completer.b(arrayList3);
                                    return;
                                }
                                Preconditions.f(null, listenableFuture3.isDone());
                            }
                        }
                    } catch (Throwable th) {
                        int iDecrementAndGet6 = atomicInteger.decrementAndGet();
                        Preconditions.f("Less than 0 remaining futures", iDecrementAndGet6 >= 0);
                        if (iDecrementAndGet6 == 0) {
                            ArrayList arrayList10 = listFuture.f2456c;
                            if (arrayList10 != null) {
                                listFuture.g.b(new ArrayList(arrayList10));
                            } else {
                                Preconditions.f(null, listenableFuture3.isDone());
                            }
                        }
                        throw th;
                    }
                }
            }, executor);
        }
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void addListener(Runnable runnable, Executor executor) {
        this.f2458f.addListener(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        ArrayList arrayList = this.f2455b;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((ListenableFuture) it.next()).cancel(z);
            }
        }
        return this.f2458f.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException {
        ArrayList<ListenableFuture> arrayList = this.f2455b;
        ListenableFuture listenableFuture = this.f2458f;
        if (arrayList != null && !listenableFuture.isDone()) {
            loop0: for (ListenableFuture listenableFuture2 : arrayList) {
                while (!listenableFuture2.isDone()) {
                    try {
                        listenableFuture2.get();
                    } catch (Error e2) {
                        throw e2;
                    } catch (InterruptedException e3) {
                        throw e3;
                    } catch (Throwable unused) {
                        if (this.d) {
                            return (List) listenableFuture.get();
                        }
                    }
                }
            }
        }
        return (List) listenableFuture.get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f2458f.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f2458f.isDone();
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j2, TimeUnit timeUnit) {
        return (List) this.f2458f.get(j2, timeUnit);
    }
}
