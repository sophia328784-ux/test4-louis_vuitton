package androidx.compose.foundation;

import androidx.compose.ui.draw.DrawModifier;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/IndicationModifier;", "Landroidx/compose/ui/draw/DrawModifier;", "Landroidx/compose/foundation/IndicationInstance;", "indicationInstance", "<init>", "(Landroidx/compose/foundation/IndicationInstance;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class IndicationModifier implements DrawModifier {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final IndicationInstance f4232b;

    public IndicationModifier(IndicationInstance indicationInstance) {
        this.f4232b = indicationInstance;
    }

    @Override // androidx.compose.ui.draw.DrawModifier
    public final void j(LayoutNodeDrawScope layoutNodeDrawScope) {
        this.f4232b.a(layoutNodeDrawScope);
    }
}
