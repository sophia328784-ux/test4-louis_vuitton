package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.internal.InlineClassHelperKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.Dp;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BP\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0017\u0010\u000e\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Landroidx/compose/foundation/layout/PaddingElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/layout/PaddingNode;", "Landroidx/compose/ui/unit/Dp;", "start", "top", "end", "bottom", "", "rtlAware", "Lkotlin/Function1;", "Landroidx/compose/ui/platform/InspectorInfo;", "", "Lkotlin/ExtensionFunctionType;", "inspectorInfo", "<init>", "(FFFFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class PaddingElement extends ModifierNodeElement<PaddingNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f5022b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f5023c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f5024e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f5025f;
    public final Function1 g;

    public PaddingElement(float f2, float f3, float f4, float f5, boolean z, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this.f5022b = f2;
        this.f5023c = f3;
        this.d = f4;
        this.f5024e = f5;
        this.f5025f = z;
        this.g = function1;
        boolean z2 = true;
        boolean z3 = (f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM || Float.isNaN(f2)) & (f3 >= Call.Parameters.DEFAULT_CAMERA_ZOOM || Float.isNaN(f3)) & (f4 >= Call.Parameters.DEFAULT_CAMERA_ZOOM || Float.isNaN(f4));
        if (f5 < Call.Parameters.DEFAULT_CAMERA_ZOOM && !Float.isNaN(f5)) {
            z2 = false;
        }
        if (!z3 || !z2) {
            InlineClassHelperKt.a("Padding must be non-negative");
        }
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new PaddingNode(this.f5022b, this.f5023c, this.d, this.f5024e, this.f5025f, null);
    }

    public final boolean equals(Object obj) {
        PaddingElement paddingElement = obj instanceof PaddingElement ? (PaddingElement) obj : null;
        return paddingElement != null && Dp.b(this.f5022b, paddingElement.f5022b) && Dp.b(this.f5023c, paddingElement.f5023c) && Dp.b(this.d, paddingElement.d) && Dp.b(this.f5024e, paddingElement.f5024e) && this.f5025f == paddingElement.f5025f;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        PaddingNode paddingNode = (PaddingNode) node;
        paddingNode.p = this.f5022b;
        paddingNode.q = this.f5023c;
        paddingNode.r = this.d;
        paddingNode.s = this.f5024e;
        paddingNode.t = this.f5025f;
    }

    public final int hashCode() {
        Dp.Companion companion = Dp.f11004c;
        return Boolean.hashCode(this.f5025f) + pq0.b(pq0.b(pq0.b(Float.hashCode(this.f5022b) * 31, 31, this.f5023c), 31, this.d), 31, this.f5024e);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public PaddingElement(float f2, float f3, float f4, float f5, boolean z, Function1 function1, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        float f6;
        float f7;
        float f8;
        float f9;
        if ((i2 & 1) != 0) {
            Dp.Companion companion = Dp.f11004c;
            f6 = 0.0f;
        } else {
            f6 = f2;
        }
        if ((i2 & 2) != 0) {
            Dp.Companion companion2 = Dp.f11004c;
            f7 = 0.0f;
        } else {
            f7 = f3;
        }
        if ((i2 & 4) != 0) {
            Dp.Companion companion3 = Dp.f11004c;
            f8 = 0.0f;
        } else {
            f8 = f4;
        }
        if ((i2 & 8) != 0) {
            Dp.Companion companion4 = Dp.f11004c;
            f9 = 0.0f;
        } else {
            f9 = f5;
        }
        this(f6, f7, f8, f9, z, function1, null);
    }
}
