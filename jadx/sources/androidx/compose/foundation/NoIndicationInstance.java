package androidx.compose.foundation;

import androidx.compose.ui.node.LayoutNodeDrawScope;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/NoIndicationInstance;", "Landroidx/compose/foundation/IndicationInstance;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class NoIndicationInstance implements IndicationInstance {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final NoIndicationInstance f4281a = new NoIndicationInstance();

    @Override // androidx.compose.foundation.IndicationInstance
    public final void a(LayoutNodeDrawScope layoutNodeDrawScope) {
        layoutNodeDrawScope.R1();
    }
}
