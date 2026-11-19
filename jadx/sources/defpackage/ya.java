package defpackage;

import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.runtime.State;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVSkeletonKt;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.AudioGuideTrackDetailBottomSheetKt;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ya implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81333b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ State f81334c;

    public /* synthetic */ ya(State state, int i2) {
        this.f81333b = i2;
        this.f81334c = state;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f81333b;
        State state = this.f81334c;
        switch (i2) {
            case 0:
                float f2 = AudioGuideTrackDetailBottomSheetKt.f53032a;
                ((Density) obj).getClass();
                return new IntOffset(((long) ((int) ((Number) state.getF10755b()).floatValue())) & BodyPartID.bodyIdMax);
            case 1:
                GraphicsLayerScope graphicsLayerScope = (GraphicsLayerScope) obj;
                graphicsLayerScope.getClass();
                graphicsLayerScope.d(((Number) state.getF10755b()).floatValue());
                return Unit.f71739a;
            case 2:
                DrawScope drawScope = (DrawScope) obj;
                long j2 = ((Color) state.getF10755b()).f8872a;
                Color.f8866b.getClass();
                if (!Color.c(j2, Color.f8871i)) {
                    DrawScope.k0(drawScope, j2, 0L, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 126);
                }
                return Unit.f71739a;
            case 3:
                GraphicsLayerScope graphicsLayerScope2 = (GraphicsLayerScope) obj;
                CubicBezierEasing cubicBezierEasing = LVButtonKt.f48454a;
                graphicsLayerScope2.getClass();
                graphicsLayerScope2.m(((Number) state.getF10755b()).floatValue());
                return Unit.f71739a;
            case 4:
                DrawScope drawScope2 = (DrawScope) obj;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVSkeletonKt.f48504a;
                drawScope2.getClass();
                DrawScope.k0(drawScope2, ((Color) state.getF10755b()).f8872a, 0L, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 126);
                return Unit.f71739a;
            case 5:
                ((GraphicsLayerScope) obj).d(((Number) state.getF10755b()).floatValue());
                return Unit.f71739a;
            default:
                GraphicsLayerScope graphicsLayerScope3 = (GraphicsLayerScope) obj;
                float f3 = ThankYouScreenKt.f65243a;
                graphicsLayerScope3.getClass();
                graphicsLayerScope3.d(((Number) state.getF10755b()).floatValue());
                return Unit.f71739a;
        }
    }
}
