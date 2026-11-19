package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.internal.InlineClassHelperKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B0\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0017\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007¢\u0006\u0002\b\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/compose/foundation/layout/AspectRatioElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/layout/AspectRatioNode;", "", "aspectRatio", "", "matchHeightConstraintsFirst", "Lkotlin/Function1;", "Landroidx/compose/ui/platform/InspectorInfo;", "", "Lkotlin/ExtensionFunctionType;", "inspectorInfo", "<init>", "(FZLkotlin/jvm/functions/Function1;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class AspectRatioElement extends ModifierNodeElement<AspectRatioNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f4928b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f4929c;
    public final Function1 d;

    public AspectRatioElement(float f2, boolean z, Function1<? super InspectorInfo, Unit> function1) {
        this.f4928b = f2;
        this.f4929c = z;
        this.d = function1;
        if (f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return;
        }
        InlineClassHelperKt.a("aspectRatio " + f2 + " must be > 0");
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new AspectRatioNode(this.f4928b, this.f4929c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        AspectRatioElement aspectRatioElement = obj instanceof AspectRatioElement ? (AspectRatioElement) obj : null;
        if (aspectRatioElement != null && this.f4928b == aspectRatioElement.f4928b) {
            if (this.f4929c == ((AspectRatioElement) obj).f4929c) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        AspectRatioNode aspectRatioNode = (AspectRatioNode) node;
        aspectRatioNode.p = this.f4928b;
        aspectRatioNode.q = this.f4929c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f4929c) + (Float.hashCode(this.f4928b) * 31);
    }
}
