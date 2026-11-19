package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.internal.InlineClassHelperKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/layout/ColumnScopeInstance;", "Landroidx/compose/foundation/layout/ColumnScope;", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ColumnScopeInstance implements ColumnScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ColumnScopeInstance f4944a = new ColumnScopeInstance();

    @Override // androidx.compose.foundation.layout.ColumnScope
    public final Modifier a(Modifier modifier, float f2, boolean z) {
        if (f2 <= 0.0d) {
            InlineClassHelperKt.a("invalid weight; must be greater than zero");
        }
        if (f2 > Float.MAX_VALUE) {
            f2 = Float.MAX_VALUE;
        }
        return modifier.o(new LayoutWeightElement(f2, z));
    }

    @Override // androidx.compose.foundation.layout.ColumnScope
    public final Modifier b(Modifier modifier, Alignment.Horizontal horizontal) {
        return modifier.o(new HorizontalAlignElement(horizontal));
    }
}
