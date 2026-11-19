package defpackage;

import androidx.compose.animation.core.Animatable;
import androidx.compose.material3.ModalBottomSheetKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class sa implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79755b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Animatable f79756c;

    public /* synthetic */ sa(Animatable animatable, int i2) {
        this.f79755b = i2;
        this.f79756c = animatable;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f79755b;
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        Animatable animatable = this.f79756c;
        switch (i2) {
            case 0:
                ((Density) obj).getClass();
                return new IntOffset(((long) MathKt.c(((Number) animatable.d()).floatValue())) << 32);
            case 1:
                GraphicsLayerScope graphicsLayerScope = (GraphicsLayerScope) obj;
                float fFloatValue = ((Number) animatable.d()).floatValue();
                float fD = ModalBottomSheetKt.d(graphicsLayerScope, fFloatValue);
                float fE = ModalBottomSheetKt.e(graphicsLayerScope, fFloatValue);
                graphicsLayerScope.x(fE != Call.Parameters.DEFAULT_CAMERA_ZOOM ? fD / fE : 1.0f);
                graphicsLayerScope.C0(ModalBottomSheetKt.f7060c);
                return Unit.f71739a;
            case 2:
                ((Density) obj).getClass();
                return new IntOffset(((long) Math.max(0, MathKt.c(((Number) animatable.d()).floatValue()))) & BodyPartID.bodyIdMax);
            case 3:
                GraphicsLayerScope graphicsLayerScope2 = (GraphicsLayerScope) obj;
                graphicsLayerScope2.getClass();
                graphicsLayerScope2.g(Float.intBitsToFloat((int) (BodyPartID.bodyIdMax & graphicsLayerScope2.getS())) * ((Number) animatable.d()).floatValue());
                if (((Number) animatable.d()).floatValue() < 1.0f) {
                    f2 = 1.0f;
                }
                graphicsLayerScope2.d(f2);
                graphicsLayerScope2.o(false);
                return Unit.f71739a;
            default:
                ((Density) obj).getClass();
                return new IntOffset(((long) MathKt.c(((Number) animatable.d()).floatValue())) & BodyPartID.bodyIdMax);
        }
    }
}
