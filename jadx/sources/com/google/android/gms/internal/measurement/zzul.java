package com.google.android.gms.internal.measurement;

import com.google.common.collect.ImmutableList;
import com.google.common.util.concurrent.AsyncCallable;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes2.dex */
final class zzul implements AsyncCallable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public List f30974a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zztp f30975b;

    public /* synthetic */ zzul(zztp zztpVar) {
        this.f30975b = zztpVar;
    }

    @Override // com.google.common.util.concurrent.AsyncCallable
    public final ListenableFuture call() throws IOException {
        zztp zztpVar = this.f30975b;
        zzwi zzwiVarA = zztpVar.f30994h.a("Initialize ".concat(String.valueOf(zztpVar.f30989a)), zzxd.zza);
        try {
            synchronized (zztpVar.g) {
                try {
                    if (this.f30974a == null) {
                        this.f30974a = zztpVar.f30995i;
                        zztpVar.f30995i = Collections.EMPTY_LIST;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            ArrayList arrayList = new ArrayList(this.f30974a.size());
            zzus zzusVar = new zzus(this.f30975b);
            Iterator it = this.f30974a.iterator();
            while (it.hasNext()) {
                try {
                    arrayList.add(((AsyncFunction) it.next()).apply(zzusVar));
                } catch (Exception e2) {
                    arrayList.add(Futures.f(e2));
                }
            }
            ListenableFuture listenableFutureA = new Futures.FutureCombiner(true, ImmutableList.s(arrayList)).a(new Callable() { // from class: com.google.android.gms.internal.measurement.zzuk
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Object call() {
                    zzul zzulVar = this.zza;
                    synchronized (zzulVar.f30975b.g) {
                        zzulVar.f30974a = null;
                    }
                    return null;
                }
            }, MoreExecutors.b());
            zzwiVarA.zza(listenableFutureA);
            zzwiVarA.close();
            return listenableFutureA;
        } catch (Throwable th2) {
            try {
                zzwiVarA.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }
}
