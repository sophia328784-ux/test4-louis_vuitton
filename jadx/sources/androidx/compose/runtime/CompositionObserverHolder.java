package androidx.compose.runtime;

import androidx.compose.runtime.tooling.CompositionObserver;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B%\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/runtime/CompositionObserverHolder;", "", "Landroidx/compose/runtime/tooling/CompositionObserver;", "observer", "", "root", "Landroidx/compose/runtime/CompositionContext;", "parent", "<init>", "(Landroidx/compose/runtime/tooling/CompositionObserver;ZLandroidx/compose/runtime/CompositionContext;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CompositionObserverHolder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public CompositionObserver f7959a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f7960b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CompositionContext f7961c;

    public /* synthetic */ CompositionObserverHolder(CompositionObserver compositionObserver, boolean z, CompositionContext compositionContext, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : compositionObserver, (i2 & 2) != 0 ? false : z, compositionContext);
    }

    public final CompositionObserver a() {
        if (this.f7960b) {
            return this.f7959a;
        }
        CompositionObserverHolder d = this.f7961c.getD();
        CompositionObserver compositionObserver = d != null ? d.f7959a : null;
        if (!Intrinsics.c(compositionObserver, this.f7959a)) {
            this.f7959a = compositionObserver;
        }
        return compositionObserver;
    }

    public CompositionObserverHolder(CompositionObserver compositionObserver, boolean z, CompositionContext compositionContext) {
        this.f7959a = compositionObserver;
        this.f7960b = z;
        this.f7961c = compositionContext;
    }
}
