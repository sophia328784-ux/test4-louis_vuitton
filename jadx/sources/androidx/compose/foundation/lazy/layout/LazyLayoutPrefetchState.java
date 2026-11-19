package androidx.compose.foundation.lazy.layout;

import android.os.Trace;
import androidx.compose.foundation.lazy.layout.PrefetchHandleProvider.HandleAndRequestImpl;
import java.util.ArrayList;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001:\u0003\r\u000e\u000fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003B2\b\u0017\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u001b\b\u0002\u0010\n\u001a\u0015\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0006¢\u0006\u0002\b\t¢\u0006\u0004\b\u0002\u0010\u000bB&\b\u0017\u0012\u001b\b\u0002\u0010\n\u001a\u0015\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0006¢\u0006\u0002\b\t¢\u0006\u0004\b\u0002\u0010\f¨\u0006\u0010"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;", "", "<init>", "()V", "Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;", "prefetchScheduler", "Lkotlin/Function1;", "Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;", "", "Lkotlin/ExtensionFunctionType;", "onNestedPrefetch", "(Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;Lkotlin/jvm/functions/Function1;)V", "(Lkotlin/jvm/functions/Function1;)V", "PrefetchHandle", "PrefetchResultScope", "NestedPrefetchScopeImpl", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyLayoutPrefetchState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PrefetchScheduler f5502a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function1 f5503b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PrefetchMetrics f5504c;
    public PrefetchHandleProvider d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5505e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5506f;
    public int g;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;", "Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;", "", "nestedPrefetchItemCount", "<init>", "(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;I)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class NestedPrefetchScopeImpl implements NestedPrefetchScope {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f5507a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayList f5508b = new ArrayList();

        public NestedPrefetchScopeImpl(int i2) {
            this.f5507a = i2;
        }

        @Override // androidx.compose.foundation.lazy.layout.NestedPrefetchScope
        public final void a(int i2) {
            LazyLayoutPrefetchState lazyLayoutPrefetchState = LazyLayoutPrefetchState.this;
            PrefetchHandleProvider prefetchHandleProvider = lazyLayoutPrefetchState.d;
            if (prefetchHandleProvider == null) {
                return;
            }
            PrefetchMetrics prefetchMetrics = lazyLayoutPrefetchState.f5504c;
            PrefetchScheduler prefetchScheduler = prefetchHandleProvider.f5546c;
            this.f5508b.add(prefetchHandleProvider.new HandleAndRequestImpl(i2, prefetchMetrics, prefetchScheduler instanceof PriorityPrefetchScheduler ? (PriorityPrefetchScheduler) prefetchScheduler : null, null));
        }

        @Override // androidx.compose.foundation.lazy.layout.NestedPrefetchScope
        /* JADX INFO: renamed from: b, reason: from getter */
        public final int getF5507a() {
            return this.f5507a;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001\u0082\u0001\u0002\u0002\u0003ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0004À\u0006\u0001"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;", "", "Landroidx/compose/foundation/lazy/layout/DummyHandle;", "Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface PrefetchHandle {
        void c();

        void cancel();
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001\u0082\u0001\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;", "", "Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface PrefetchResultScope {
        long a(int i2);

        int b();

        /* JADX INFO: renamed from: getIndex */
        int getF5547a();
    }

    public LazyLayoutPrefetchState() {
        this.f5504c = new PrefetchMetrics();
        this.f5505e = -1;
        this.f5506f = -1;
    }

    public final PrefetchHandle a(int i2, long j2, boolean z, Function1 function1) {
        PrefetchHandleProvider prefetchHandleProvider = this.d;
        if (prefetchHandleProvider == null) {
            return DummyHandle.f5404a;
        }
        PrefetchScheduler prefetchScheduler = prefetchHandleProvider.f5546c;
        boolean z2 = prefetchScheduler instanceof PriorityPrefetchScheduler;
        PrefetchHandleProvider.HandleAndRequestImpl handleAndRequestImpl = new PrefetchHandleProvider.HandleAndRequestImpl(prefetchHandleProvider, i2, j2, this.f5504c, z2 ? (PriorityPrefetchScheduler) prefetchScheduler : null, function1, null);
        if (!z2) {
            prefetchScheduler.schedulePrefetch(handleAndRequestImpl);
        } else if (z) {
            ((PriorityPrefetchScheduler) prefetchScheduler).scheduleHighPriorityPrefetch(handleAndRequestImpl);
        } else {
            ((PriorityPrefetchScheduler) prefetchScheduler).scheduleLowPriorityPrefetch(handleAndRequestImpl);
        }
        Trace.setCounter("compose:lazy:schedule_prefetch:index", i2);
        return handleAndRequestImpl;
    }

    public /* synthetic */ LazyLayoutPrefetchState(PrefetchScheduler prefetchScheduler, Function1 function1, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : prefetchScheduler, (i2 & 2) != 0 ? null : function1);
    }

    @Deprecated
    public LazyLayoutPrefetchState(PrefetchScheduler prefetchScheduler, Function1<? super NestedPrefetchScope, Unit> function1) {
        this();
        this.f5502a = prefetchScheduler;
        this.f5503b = function1;
    }

    public LazyLayoutPrefetchState(Function1<? super NestedPrefetchScope, Unit> function1) {
        this();
        this.f5503b = function1;
    }

    public /* synthetic */ LazyLayoutPrefetchState(Function1 function1, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : function1);
    }
}
