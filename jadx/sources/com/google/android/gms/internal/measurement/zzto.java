package com.google.android.gms.internal.measurement;

import com.google.common.collect.ImmutableList;
import com.google.common.util.concurrent.AsyncCallable;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import defpackage.a8;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes2.dex */
public final class zzto implements AsyncFunction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f30939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f30940b;

    public zzto(List list, Executor executor) {
        this.f30939a = list;
        this.f30940b = executor;
    }

    @Override // com.google.common.util.concurrent.AsyncFunction
    public final ListenableFuture apply(Object obj) {
        zzth zzthVar = (zzth) obj;
        List list = this.f30939a;
        final int size = list.size();
        final ArrayList arrayList = new ArrayList(size);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((zztj) it.next()).d0());
        }
        AsyncFunction asyncFunction = new AsyncFunction() { // from class: com.google.android.gms.internal.measurement.zztn
            @Override // com.google.common.util.concurrent.AsyncFunction
            public final ListenableFuture apply(Object obj2) {
                final zzafc zzafcVar = (zzafc) obj2;
                final ArrayList arrayList2 = arrayList;
                Futures.FutureCombiner futureCombiner = new Futures.FutureCombiner(false, ImmutableList.s(arrayList2));
                final zzto zztoVar = this;
                final int i2 = size;
                AsyncCallable asyncCallable = new AsyncCallable() { // from class: com.google.android.gms.internal.measurement.zztl
                    @Override // com.google.common.util.concurrent.AsyncCallable
                    public final ListenableFuture call() {
                        ListenableFuture listenableFutureG = Futures.g(zzafcVar);
                        for (int i3 = 0; i3 < i2; i3++) {
                            if (((Boolean) Futures.d((Future) arrayList2.get(i3))).booleanValue()) {
                                final zztj zztjVar = (zztj) zztoVar.f30939a.get(i3);
                                AsyncFunction asyncFunction2 = new AsyncFunction() { // from class: com.google.android.gms.internal.measurement.zztm
                                    @Override // com.google.common.util.concurrent.AsyncFunction
                                    public final /* synthetic */ ListenableFuture apply(Object obj3) {
                                        return zztjVar.f0();
                                    }
                                };
                                int i4 = zzxa.f31062a;
                                listenableFutureG = Futures.m(listenableFutureG, new zzwy(zzvy.a(), asyncFunction2), MoreExecutors.b());
                            }
                        }
                        return listenableFutureG;
                    }
                };
                int i3 = zzxa.f31062a;
                return futureCombiner.b(new zzwx(zzvy.a(), asyncCallable), zztoVar.f30940b);
            }
        };
        int i2 = zzxa.f31062a;
        return Futures.m(zzthVar.a(new zzwy(zzvy.a(), asyncFunction), MoreExecutors.b()), new zzwy(zzvy.a(), new AsyncFunction() { // from class: com.google.android.gms.internal.measurement.zztk
            @Override // com.google.common.util.concurrent.AsyncFunction
            public final ListenableFuture apply(Object obj2) {
                int i3 = size;
                ArrayList arrayList2 = new ArrayList(i3);
                for (int i4 = 0; i4 < i3; i4++) {
                    if (((Boolean) Futures.d((Future) arrayList.get(i4))).booleanValue()) {
                        arrayList2.add(((zztj) this.f30939a.get(i4)).e0());
                    }
                }
                return new Futures.FutureCombiner(true, ImmutableList.s(arrayList2)).a(new a8(1), MoreExecutors.b());
            }
        }), MoreExecutors.b());
    }
}
