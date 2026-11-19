package androidx.compose.foundation.layout;

import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/layout/FlowRowOverflow;", "Landroidx/compose/foundation/layout/FlowLayoutOverflow;", "Companion", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FlowRowOverflow extends FlowLayoutOverflow {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Companion f4999f = new Companion(null);
    public static final FlowRowOverflow g;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/layout/FlowRowOverflow$Companion;", "", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new FlowRowOverflow(FlowLayoutOverflow.OverflowType.Visible);
        g = new FlowRowOverflow(FlowLayoutOverflow.OverflowType.Clip);
    }

    public FlowRowOverflow(FlowLayoutOverflow.OverflowType overflowType) {
        super(overflowType, 0, 0, null, null, null);
    }

    public FlowRowOverflow(FlowLayoutOverflow.OverflowType overflowType, int i2, int i3, Function1 function1, Function1 function2, DefaultConstructorMarker defaultConstructorMarker) {
        super(overflowType, i2, i3, function1, function2, null);
    }
}
