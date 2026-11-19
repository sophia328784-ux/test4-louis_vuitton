package androidx.compose.runtime;

import androidx.compose.runtime.tooling.CompositionData;
import androidx.compose.runtime.tooling.CompositionInstance;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/runtime/GapCompositionDataImpl;", "Landroidx/compose/runtime/tooling/CompositionData;", "Landroidx/compose/runtime/tooling/CompositionInstance;", "Landroidx/compose/runtime/Composition;", "composition", "<init>", "(Landroidx/compose/runtime/Composition;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GapCompositionDataImpl implements CompositionData, CompositionInstance {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Composition f7994b;

    public GapCompositionDataImpl(Composition composition) {
        this.f7994b = composition;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof GapCompositionDataImpl) {
            return Intrinsics.c(this.f7994b, ((GapCompositionDataImpl) obj).f7994b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f7994b.hashCode() * 31;
    }
}
