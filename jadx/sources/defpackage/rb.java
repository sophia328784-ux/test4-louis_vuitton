package defpackage;

import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.ValueElementSequence;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class rb implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79302b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ float f79303c;
    public final /* synthetic */ float d;

    public /* synthetic */ rb(float f2, float f3, int i2) {
        this.f79302b = i2;
        this.f79303c = f2;
        this.d = f3;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f79302b;
        float f2 = this.d;
        float f3 = this.f79303c;
        switch (i2) {
            case 0:
                Density density = (Density) obj;
                density.getClass();
                return new IntOffset((((long) (-density.B0(f2))) & BodyPartID.bodyIdMax) | (((long) density.B0(f3)) << 32));
            case 1:
                InspectorInfo inspectorInfo = (InspectorInfo) obj;
                inspectorInfo.getClass();
                ValueElementSequence valueElementSequence = inspectorInfo.f10105b;
                valueElementSequence.b(new Dp(f3), "x");
                valueElementSequence.b(new Dp(f2), "y");
                return Unit.f71739a;
            default:
                InspectorInfo inspectorInfo2 = (InspectorInfo) obj;
                inspectorInfo2.getClass();
                ValueElementSequence valueElementSequence2 = inspectorInfo2.f10105b;
                valueElementSequence2.b(new Dp(f3), "horizontal");
                valueElementSequence2.b(new Dp(f2), "vertical");
                return Unit.f71739a;
        }
    }
}
