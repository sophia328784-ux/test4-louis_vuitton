package com.perfectcorp.common.downloader;

import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes3.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final s f39189a;

    public b(int i2, ThreadFactory threadFactory) {
        this.f39189a = new s(new q(), threadFactory);
    }

    public final HashSet a(ListenableFuture listenableFuture) {
        HashSet hashSetH;
        s sVar = this.f39189a;
        synchronized (sVar.f39255b) {
            Objects.requireNonNull(listenableFuture, "key == null");
            hashSetH = sVar.f39255b.h(sVar.f39256c, listenableFuture);
        }
        return hashSetH;
    }

    public final void b(Collection collection) {
        s sVar = this.f39189a;
        synchronized (sVar.f39255b) {
            try {
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    sVar.execute((Runnable) it.next());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
