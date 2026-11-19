package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5154b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Placeable f5155c;
    public final /* synthetic */ Modifier.Node d;

    public /* synthetic */ d(Modifier.Node node, Placeable placeable, int i2) {
        this.f5154b = i2;
        this.d = node;
        this.f5155c = placeable;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f5154b;
        Placeable placeable = this.f5155c;
        Modifier.Node node = this.d;
        switch (i2) {
            case 0:
                OffsetNode offsetNode = (OffsetNode) node;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                boolean z = offsetNode.r;
                float f2 = offsetNode.p;
                if (z) {
                    Placeable.PlacementScope.y(placementScope, placeable, placementScope.B0(f2), placementScope.B0(offsetNode.q));
                } else {
                    placementScope.j(placeable, placementScope.B0(f2), placementScope.B0(offsetNode.q), Call.Parameters.DEFAULT_CAMERA_ZOOM);
                }
                break;
            case 1:
                OffsetPxNode offsetPxNode = (OffsetPxNode) node;
                Placeable.PlacementScope placementScope2 = (Placeable.PlacementScope) obj;
                long j2 = ((IntOffset) offsetPxNode.p.invoke(placementScope2)).f11014a;
                boolean z2 = offsetPxNode.q;
                Placeable placeable2 = this.f5155c;
                if (z2) {
                    Placeable.PlacementScope.z(placementScope2, placeable2, (int) (j2 >> 32), (int) (j2 & BodyPartID.bodyIdMax));
                } else {
                    Placeable.PlacementScope.F(placementScope2, placeable2, (int) (j2 >> 32), (int) (j2 & BodyPartID.bodyIdMax), null, 12);
                }
                break;
            default:
                PaddingNode paddingNode = (PaddingNode) node;
                Placeable.PlacementScope placementScope3 = (Placeable.PlacementScope) obj;
                boolean z3 = paddingNode.t;
                float f3 = paddingNode.p;
                if (z3) {
                    Placeable.PlacementScope.y(placementScope3, placeable, placementScope3.B0(f3), placementScope3.B0(paddingNode.q));
                } else {
                    placementScope3.j(placeable, placementScope3.B0(f3), placementScope3.B0(paddingNode.q), Call.Parameters.DEFAULT_CAMERA_ZOOM);
                }
                break;
        }
        return Unit.f71739a;
    }
}
