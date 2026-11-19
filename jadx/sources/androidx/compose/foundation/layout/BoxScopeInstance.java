package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/layout/BoxScopeInstance;", "Landroidx/compose/foundation/layout/BoxScope;", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BoxScopeInstance implements BoxScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BoxScopeInstance f4938a = new BoxScopeInstance();

    @Override // androidx.compose.foundation.layout.BoxScope
    public final Modifier g(Modifier modifier, Alignment alignment) {
        return modifier.o(new BoxChildDataElement(alignment, false, InspectableValueKt.f10100a));
    }

    public final Modifier j(Modifier modifier) {
        Alignment.f8582a.getClass();
        return modifier.o(new BoxChildDataElement(Alignment.Companion.f8587f, true, InspectableValueKt.f10100a));
    }
}
