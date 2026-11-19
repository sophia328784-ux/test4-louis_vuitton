package androidx.compose.foundation.lazy;

import androidx.compose.animation.core.SpringSpec;
import androidx.compose.foundation.lazy.layout.LazyLayoutAnimateItemElement;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.ui.Modifier;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/foundation/lazy/LazyItemScopeImpl;", "Landroidx/compose/foundation/lazy/LazyItemScope;", "<init>", "()V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyItemScopeImpl implements LazyItemScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableIntState f5171a = SnapshotIntStateKt.a(Integer.MAX_VALUE);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableIntState f5172b = SnapshotIntStateKt.a(Integer.MAX_VALUE);

    @Override // androidx.compose.foundation.lazy.LazyItemScope
    public final Modifier a(DTFunctionNameModifier dTFunctionNameModifier) {
        return dTFunctionNameModifier.o(new ParentSizeElement(1.0f, this.f5171a, this.f5172b, "fillParentMaxSize"));
    }

    @Override // androidx.compose.foundation.lazy.LazyItemScope
    public final Modifier b(DTFunctionNameModifier dTFunctionNameModifier) {
        return dTFunctionNameModifier.o(new ParentSizeElement(1.0f, null, this.f5172b, "fillParentMaxHeight", 2, null));
    }

    @Override // androidx.compose.foundation.lazy.LazyItemScope
    public final Modifier c(Modifier modifier, SpringSpec springSpec, SpringSpec springSpec2, SpringSpec springSpec3) {
        return modifier.o(new LazyLayoutAnimateItemElement(springSpec, springSpec2, springSpec3));
    }

    @Override // androidx.compose.foundation.lazy.LazyItemScope
    public final Modifier d(Modifier modifier) {
        return modifier.o(new ParentSizeElement(1.0f, this.f5171a, null, "fillParentMaxWidth", 4, null));
    }
}
