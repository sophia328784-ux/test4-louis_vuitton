package defpackage;

import androidx.compose.material3.SheetState;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.TransformOriginKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ih implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69972b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SheetState f69973c;

    public /* synthetic */ ih(SheetState sheetState, int i2) {
        this.f69972b = i2;
        this.f69973c = sheetState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f69972b;
        SheetState sheetState = this.f69973c;
        GraphicsLayerScope graphicsLayerScope = (GraphicsLayerScope) obj;
        switch (i2) {
            case 0:
                float fA = ((SnapshotMutableFloatStateImpl) sheetState.f7211e.f7523j).a();
                float fE = sheetState.f7211e.e().e();
                float f2 = fA < fE ? fE - fA : 0.0f;
                graphicsLayerScope.x(f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM ? (Float.intBitsToFloat((int) (graphicsLayerScope.getS() & BodyPartID.bodyIdMax)) + f2) / Float.intBitsToFloat((int) (graphicsLayerScope.getS() & BodyPartID.bodyIdMax)) : 1.0f);
                graphicsLayerScope.C0(TransformOriginKt.a(0.5f, Call.Parameters.DEFAULT_CAMERA_ZOOM));
                break;
            default:
                float fA2 = ((SnapshotMutableFloatStateImpl) sheetState.f7211e.f7523j).a();
                float fE2 = sheetState.f7211e.e().e();
                float f3 = fA2 < fE2 ? fE2 - fA2 : 0.0f;
                graphicsLayerScope.x(f3 > Call.Parameters.DEFAULT_CAMERA_ZOOM ? 1.0f / ((Float.intBitsToFloat((int) (graphicsLayerScope.getS() & BodyPartID.bodyIdMax)) + f3) / Float.intBitsToFloat((int) (BodyPartID.bodyIdMax & graphicsLayerScope.getS()))) : 1.0f);
                graphicsLayerScope.C0(TransformOriginKt.a(0.5f, Call.Parameters.DEFAULT_CAMERA_ZOOM));
                break;
        }
        return Unit.f71739a;
    }
}
