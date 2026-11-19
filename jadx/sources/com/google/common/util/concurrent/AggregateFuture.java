package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.UnmodifiableIterator;
import java.util.Collections;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes2.dex */
abstract class AggregateFuture<InputT, OutputT> extends AggregateFutureState<OutputT> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final LazyLogger f33799h = new LazyLogger(AggregateFuture.class);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ImmutableCollection f33800f;
    public final boolean g;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class ReleaseResourcesReason {
        private static final /* synthetic */ ReleaseResourcesReason[] $VALUES;
        public static final ReleaseResourcesReason ALL_INPUT_FUTURES_PROCESSED;
        public static final ReleaseResourcesReason OUTPUT_FUTURE_DONE;

        static {
            ReleaseResourcesReason releaseResourcesReason = new ReleaseResourcesReason("OUTPUT_FUTURE_DONE", 0);
            OUTPUT_FUTURE_DONE = releaseResourcesReason;
            ReleaseResourcesReason releaseResourcesReason2 = new ReleaseResourcesReason("ALL_INPUT_FUTURES_PROCESSED", 1);
            ALL_INPUT_FUTURES_PROCESSED = releaseResourcesReason2;
            $VALUES = new ReleaseResourcesReason[]{releaseResourcesReason, releaseResourcesReason2};
        }

        public static ReleaseResourcesReason valueOf(String str) {
            return (ReleaseResourcesReason) Enum.valueOf(ReleaseResourcesReason.class, str);
        }

        public static ReleaseResourcesReason[] values() {
            return (ReleaseResourcesReason[]) $VALUES.clone();
        }
    }

    public AggregateFuture(ImmutableCollection immutableCollection, boolean z) {
        int size = immutableCollection.size();
        this.f33802b = null;
        this.f33803c = size;
        this.f33800f = immutableCollection;
        this.g = z;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final void afterDone() {
        super.afterDone();
        ImmutableCollection immutableCollection = this.f33800f;
        CombinedFuture combinedFuture = (CombinedFuture) this;
        ReleaseResourcesReason.OUTPUT_FUTURE_DONE.getClass();
        combinedFuture.f33800f = null;
        combinedFuture.f33806i = null;
        if (isCancelled() && (immutableCollection != null)) {
            boolean zWasInterrupted = wasInterrupted();
            UnmodifiableIterator it = immutableCollection.iterator();
            while (it.hasNext()) {
                ((ListenableFuture) it.next()).cancel(zWasInterrupted);
            }
        }
    }

    public final void g(ImmutableCollection immutableCollection) {
        int iB = AggregateFutureState.d.b(this);
        Preconditions.p("Less than 0 remaining futures", iB >= 0);
        if (iB == 0) {
            if (immutableCollection != null) {
                UnmodifiableIterator it = immutableCollection.iterator();
                while (it.hasNext()) {
                    ListenableFuture listenableFuture = (ListenableFuture) it.next();
                    if (!listenableFuture.isCancelled()) {
                        try {
                            Uninterruptibles.a(listenableFuture);
                        } catch (ExecutionException e2) {
                            h(e2.getCause());
                        } catch (Throwable th) {
                            h(th);
                        }
                    }
                }
            }
            this.f33802b = null;
            CombinedFuture combinedFuture = (CombinedFuture) this;
            CombinedFuture.CombinedFutureInterruptibleTask combinedFutureInterruptibleTask = combinedFuture.f33806i;
            if (combinedFutureInterruptibleTask != null) {
                combinedFutureInterruptibleTask.execute();
            }
            ReleaseResourcesReason releaseResourcesReason = ReleaseResourcesReason.ALL_INPUT_FUTURES_PROCESSED;
            releaseResourcesReason.getClass();
            combinedFuture.f33800f = null;
            if (releaseResourcesReason == ReleaseResourcesReason.OUTPUT_FUTURE_DONE) {
                combinedFuture.f33806i = null;
            }
        }
    }

    public final void h(Throwable th) {
        th.getClass();
        if (this.g && !setException(th)) {
            Set set = this.f33802b;
            if (set == null) {
                Set setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
                setNewSetFromMap.getClass();
                if (!isCancelled()) {
                    Throwable thTryInternalFastPathGetFailure = tryInternalFastPathGetFailure();
                    Objects.requireNonNull(thTryInternalFastPathGetFailure);
                    while (thTryInternalFastPathGetFailure != null && setNewSetFromMap.add(thTryInternalFastPathGetFailure)) {
                        thTryInternalFastPathGetFailure = thTryInternalFastPathGetFailure.getCause();
                    }
                }
                AggregateFutureState.d.a(this, setNewSetFromMap);
                Set set2 = this.f33802b;
                Objects.requireNonNull(set2);
                set = set2;
            }
            Throwable cause = th;
            while (true) {
                if (cause == null) {
                    f33799h.a().log(Level.SEVERE, th instanceof Error ? "Input Future failed with Error" : "Got more than one input Future failure. Logging failures after the first", th);
                    return;
                } else if (!set.add(cause)) {
                    break;
                } else {
                    cause = cause.getCause();
                }
            }
        }
        if (th instanceof Error) {
            f33799h.a().log(Level.SEVERE, "Input Future failed with Error", th);
        }
    }

    public final void i() {
        Objects.requireNonNull(this.f33800f);
        if (this.f33800f.isEmpty()) {
            CombinedFuture.CombinedFutureInterruptibleTask combinedFutureInterruptibleTask = ((CombinedFuture) this).f33806i;
            if (combinedFutureInterruptibleTask != null) {
                combinedFutureInterruptibleTask.execute();
                return;
            }
            return;
        }
        ImmutableCollection immutableCollection = this.f33800f;
        if (!this.g) {
            b bVar = new b((CombinedFuture) this, null);
            UnmodifiableIterator it = immutableCollection.iterator();
            while (it.hasNext()) {
                ListenableFuture listenableFuture = (ListenableFuture) it.next();
                if (listenableFuture.isDone()) {
                    g(null);
                } else {
                    listenableFuture.addListener(bVar, DirectExecutor.INSTANCE);
                }
            }
            return;
        }
        UnmodifiableIterator it2 = immutableCollection.iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            ListenableFuture listenableFuture2 = (ListenableFuture) it2.next();
            int i3 = i2 + 1;
            if (listenableFuture2.isDone()) {
                j(listenableFuture2);
            } else {
                listenableFuture2.addListener(new b((CombinedFuture) this, i2, listenableFuture2), DirectExecutor.INSTANCE);
            }
            i2 = i3;
        }
    }

    public final void j(ListenableFuture listenableFuture) {
        try {
            if (listenableFuture.isCancelled()) {
                this.f33800f = null;
                cancel(false);
            } else {
                try {
                    Uninterruptibles.a(listenableFuture);
                } catch (ExecutionException e2) {
                    h(e2.getCause());
                } catch (Throwable th) {
                    h(th);
                }
            }
            g(null);
        } catch (Throwable th2) {
            g(null);
            throw th2;
        }
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final String pendingToString() {
        ImmutableCollection immutableCollection = this.f33800f;
        if (immutableCollection == null) {
            return super.pendingToString();
        }
        return "futures=" + immutableCollection;
    }
}
