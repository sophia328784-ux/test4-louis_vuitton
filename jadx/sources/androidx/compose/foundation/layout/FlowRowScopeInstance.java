package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u00012\u00020\u0002¨\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/layout/FlowRowScopeInstance;", "Landroidx/compose/foundation/layout/RowScope;", "Landroidx/compose/foundation/layout/FlowRowScope;", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FlowRowScopeInstance implements RowScope, FlowRowScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FlowRowScopeInstance f5000a = new FlowRowScopeInstance();

    @Override // androidx.compose.foundation.layout.RowScope
    public final Modifier a(Modifier modifier, float f2, boolean z) {
        return RowScopeInstance.f5040a.a(modifier, f2, true);
    }

    @Override // androidx.compose.foundation.layout.RowScope
    public final Modifier b(Modifier modifier, Alignment.Vertical vertical) {
        return RowScopeInstance.f5040a.b(modifier, vertical);
    }
}
