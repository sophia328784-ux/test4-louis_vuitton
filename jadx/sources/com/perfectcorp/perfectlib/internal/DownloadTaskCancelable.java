package com.perfectcorp.perfectlib.internal;

import com.perfectcorp.common.network.DownloadHandle;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.Cancelable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.CompositeDisposable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class DownloadTaskCancelable implements Cancelable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final DownloadTaskCancelable f40351e = new DownloadTaskCancelable(true, "NOP");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f40352a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CompositeDisposable f40353b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashSet f40354c;
    public final boolean d;

    public DownloadTaskCancelable(boolean z, String str) {
        this.f40353b = new CompositeDisposable();
        this.f40354c = new HashSet();
        this.d = z;
        this.f40352a = str;
    }

    public final void a(List list) {
        if (this.d) {
            return;
        }
        Log.g(3, "DownloadTaskCancelable", "[addDisposables] add " + list.size() + " disposables");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            this.f40353b.b((Disposable) it.next());
        }
    }

    public final void b(Disposable... disposableArr) {
        a(Arrays.asList(disposableArr));
    }

    public final void c() {
        boolean z = this.d;
        if (z) {
            return;
        }
        if (z ? false : this.f40353b.f42595c) {
            throw new SkipCallbackException("Cancelable had been canceled.");
        }
    }

    @Override // com.perfectcorp.perfectlib.Cancelable
    public final void cancel() throws Throwable {
        if (this.d) {
            return;
        }
        this.f40353b.dispose();
    }

    @Override // com.perfectcorp.perfectlib.Cancelable
    public final boolean isCanceled() {
        boolean z = this.d;
        if (!z) {
            if (z ? false : this.f40353b.f42595c) {
                synchronized (this.f40353b) {
                    try {
                        if (!this.f40354c.isEmpty()) {
                            Iterator it = this.f40354c.iterator();
                            while (it.hasNext()) {
                                if (((DownloadHandle) it.next()).isCancelled()) {
                                }
                            }
                            return false;
                        }
                        return true;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
        return false;
    }

    public final String toString() {
        return "DownloadTaskCancelable name:" + this.f40352a;
    }

    public DownloadTaskCancelable(String str) {
        this(false, str);
    }
}
