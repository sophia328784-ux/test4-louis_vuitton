package androidx.compose.ui.platform;

import androidx.compose.ui.node.OwnerScope;
import androidx.compose.ui.semantics.ScrollAxisRange;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/compose/ui/platform/ScrollObservationScope;", "Landroidx/compose/ui/node/OwnerScope;", "", "semanticsNodeId", "", "allScopes", "", "oldXValue", "oldYValue", "Landroidx/compose/ui/semantics/ScrollAxisRange;", "horizontalScrollAxisRange", "verticalScrollAxisRange", "<init>", "(ILjava/util/List;Ljava/lang/Float;Ljava/lang/Float;Landroidx/compose/ui/semantics/ScrollAxisRange;Landroidx/compose/ui/semantics/ScrollAxisRange;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ScrollObservationScope implements OwnerScope {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f10146b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f10147c;
    public Float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Float f10148e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ScrollAxisRange f10149f;
    public ScrollAxisRange g;

    public ScrollObservationScope(int i2, List<ScrollObservationScope> list, Float f2, Float f3, ScrollAxisRange scrollAxisRange, ScrollAxisRange scrollAxisRange2) {
        this.f10146b = i2;
        this.f10147c = list;
        this.d = f2;
        this.f10148e = f3;
        this.f10149f = scrollAxisRange;
        this.g = scrollAxisRange2;
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public final boolean T0() {
        return this.f10147c.contains(this);
    }
}
