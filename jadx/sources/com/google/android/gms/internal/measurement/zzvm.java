package com.google.android.gms.internal.measurement;

import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.AsyncCallable;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import com.google.common.util.concurrent.SettableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes2.dex */
public final class zzvm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzvg f31008a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicLong f31009b = new AtomicLong(-9223372034707292160L);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicReference f31010c = new AtomicReference(null);
    public final AtomicReference d = new AtomicReference(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Executor f31011e = MoreExecutors.e(MoreExecutors.b());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SettableFuture f31012f;

    public zzvm(AsyncCallable asyncCallable, Executor executor) {
        SettableFuture settableFuture = new SettableFuture();
        this.f31012f = settableFuture;
        zzvg zzvgVar = new zzvg(asyncCallable, executor);
        this.f31008a = zzvgVar;
        settableFuture.addListener(zzvgVar, MoreExecutors.b());
    }

    public final AbstractFuture a() {
        AtomicLong atomicLong;
        long j2;
        final int i2;
        ListenableFuture listenableFutureC;
        SettableFuture settableFuture = this.f31012f;
        if (settableFuture.isDone()) {
            return settableFuture;
        }
        do {
            atomicLong = this.f31009b;
            j2 = atomicLong.get();
            i2 = (int) (j2 >>> 32);
        } while (!atomicLong.compareAndSet(j2, (((long) (((int) j2) + 1)) & BodyPartID.bodyIdMax) | (((long) i2) << 32)));
        final SettableFuture settableFuture2 = new SettableFuture();
        ListenableFuture listenableFuture = (ListenableFuture) this.d.getAndSet(settableFuture2);
        if (listenableFuture == null) {
            AsyncCallable asyncCallable = new AsyncCallable() { // from class: com.google.android.gms.internal.measurement.zzvi
                @Override // com.google.common.util.concurrent.AsyncCallable
                public final /* synthetic */ ListenableFuture call() {
                    return this.f31003a.b(i2);
                }
            };
            int i3 = zzxa.f31062a;
            listenableFutureC = Futures.k(new zzwx(zzvy.a(), asyncCallable), MoreExecutors.b());
        } else {
            AsyncFunction asyncFunction = new AsyncFunction() { // from class: com.google.android.gms.internal.measurement.zzvh
                @Override // com.google.common.util.concurrent.AsyncFunction
                public final /* synthetic */ ListenableFuture apply(Object obj) {
                    return this.f31001a.b(i2);
                }
            };
            int i4 = zzxa.f31062a;
            listenableFutureC = Futures.c(listenableFuture, Throwable.class, new zzwy(zzvy.a(), asyncFunction), this.f31011e);
        }
        settableFuture2.setFuture(listenableFutureC);
        final zzvk zzvkVar = new zzvk(this, i2);
        settableFuture2.addListener(new Runnable() { // from class: com.google.android.gms.internal.measurement.zzvj
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzvm zzvmVar = this.zza;
                SettableFuture settableFuture3 = settableFuture2;
                zzvk zzvkVar2 = zzvkVar;
                zzvmVar.getClass();
                try {
                    Object objD = Futures.d(settableFuture3);
                    SettableFuture settableFuture4 = zzvmVar.f31012f;
                    settableFuture4.set(objD);
                    zzvkVar2.setFuture(settableFuture4);
                } catch (Throwable unused) {
                    zzvkVar2.setFuture(settableFuture3);
                }
            }
        }, MoreExecutors.b());
        return zzvkVar;
    }

    public final AbstractFuture b(int i2) {
        Executor executorZzb;
        AtomicLong atomicLong = this.f31009b;
        if (((int) (atomicLong.get() >>> 32)) > i2) {
            return (AbstractFuture) Futures.e();
        }
        zzvl zzvlVar = new zzvl(i2);
        while (true) {
            AtomicReference atomicReference = this.f31010c;
            zzvl zzvlVar2 = (zzvl) atomicReference.get();
            if (zzvlVar2 != null && zzvlVar2.f31007b > i2) {
                return (AbstractFuture) Futures.e();
            }
            do {
                if (atomicReference.compareAndSet(zzvlVar2, zzvlVar)) {
                    if (((int) (atomicLong.get() >>> 32)) > i2) {
                        zzvlVar.cancel(true);
                        while (!atomicReference.compareAndSet(zzvlVar, null) && atomicReference.get() == zzvlVar) {
                        }
                        return zzvlVar;
                    }
                    zzvg zzvgVar = this.f31008a;
                    AsyncCallable asyncCallableZza = zzvgVar.zza();
                    if (asyncCallableZza == null || (executorZzb = zzvgVar.zzb()) == null) {
                        zzvlVar.setFuture(this.f31012f);
                        return zzvlVar;
                    }
                    int i3 = zzxa.f31062a;
                    zzvlVar.setFuture(Futures.k(new zzwx(zzvy.a(), asyncCallableZza), executorZzb));
                    return zzvlVar;
                }
            } while (atomicReference.get() == zzvlVar2);
        }
    }
}
