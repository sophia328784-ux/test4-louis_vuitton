package com.perfectcorp.thirdparty.io.reactivex.internal.disposables;

import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.exceptions.CompositeException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes3.dex */
public final class d implements Disposable, DisposableContainer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LinkedList f42603b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile boolean f42604c;

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
        if (!this.f42604c) {
            synchronized (this) {
                try {
                    if (!this.f42604c) {
                        LinkedList linkedList = this.f42603b;
                        if (linkedList == null) {
                            linkedList = new LinkedList();
                            this.f42603b = linkedList;
                        }
                        linkedList.add(disposable);
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
        LinkedList linkedList;
        if (this.f42604c) {
            return false;
        }
        synchronized (this) {
            try {
                if (!this.f42604c && (linkedList = this.f42603b) != null && linkedList.remove(disposable)) {
                    return true;
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
    public final void dispose() throws Throwable {
        if (this.f42604c) {
            return;
        }
        synchronized (this) {
            try {
                if (this.f42604c) {
                    return;
                }
                this.f42604c = true;
                LinkedList linkedList = this.f42603b;
                ArrayList arrayList = null;
                this.f42603b = null;
                if (linkedList != null) {
                    Iterator it = linkedList.iterator();
                    while (it.hasNext()) {
                        try {
                            ((Disposable) it.next()).dispose();
                        } catch (Throwable th) {
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                            }
                            arrayList.add(th);
                        }
                    }
                    if (arrayList != null) {
                        if (arrayList.size() != 1) {
                            throw new CompositeException(arrayList);
                        }
                        Throwable th2 = (Throwable) arrayList.get(0);
                        Throwable th3 = com.perfectcorp.thirdparty.io.reactivex.internal.util.e.f43154a;
                        throw th2;
                    }
                }
            } catch (Throwable th4) {
                throw th4;
            }
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return this.f42604c;
    }
}
