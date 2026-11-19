package defpackage;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.SliderColors;
import androidx.compose.material3.SliderDefaults;
import androidx.compose.material3.SliderState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.cart.components.packaging.PackagingScreenKt;
import com.vuitton.android.presentation.screen.immersivearticle.podcast.components.PodcastTrackSliderKt;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ql0 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79107b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ State f79108c;

    public /* synthetic */ ql0(State state, int i2) {
        this.f79107b = i2;
        this.f79108c = state;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f79107b;
        State state = this.f79108c;
        switch (i2) {
            case 0:
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((iIntValue & 6) == 0) {
                    iIntValue |= composer.K(paddingValues) ? 4 : 2;
                }
                if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ReinsuranceUiModel reinsuranceUiModel = (ReinsuranceUiModel) state.getF10755b();
                    if (reinsuranceUiModel == null) {
                        composer.L(-196384253);
                        composer.F();
                    } else {
                        composer.L(-196384252);
                        PackagingScreenKt.a(PaddingKt.h(new DTFunctionNameModifier("PackagingComposable$lambda$2$1"), paddingValues), reinsuranceUiModel, composer, 0);
                        composer.F();
                    }
                } else {
                    composer.D();
                }
                break;
            default:
                SliderState sliderState = (SliderState) obj;
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                float f2 = PodcastTrackSliderKt.f58900a;
                sliderState.getClass();
                if ((iIntValue2 & 6) == 0) {
                    iIntValue2 |= (iIntValue2 & 8) == 0 ? composer2.K(sliderState) : composer2.y(sliderState) ? 4 : 2;
                }
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 19) != 18)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    int i3 = iIntValue2;
                    SliderDefaults sliderDefaults = SliderDefaults.f7235a;
                    Modifier modifierA = ClipKt.a(SizeKt.f(new DTFunctionNameModifier("PodcastTrackSlider$lambda$10"), ((Dp) state.getF10755b()).f11006b), LVAppDesignKitTheme.j(composer2).d);
                    long j2 = LVAppDesignKitTheme.c(composer2).f48361b.m;
                    long j3 = LVAppDesignKitTheme.c(composer2).f48361b.f48380i;
                    Color.f8866b.getClass();
                    long j4 = Color.f8871i;
                    SliderColors sliderColorsF = SliderDefaults.f(MaterialTheme.a(composer2));
                    long j5 = j4 != 16 ? j4 : sliderColorsF.f7227a;
                    if (j2 == r12) {
                        j2 = sliderColorsF.f7228b;
                    }
                    long j6 = j2;
                    long j7 = j4 != 16 ? j4 : sliderColorsF.f7229c;
                    if (j3 == 16) {
                        j3 = sliderColorsF.d;
                    }
                    long j8 = j3;
                    long j9 = j4 != 16 ? j4 : sliderColorsF.f7230e;
                    long j10 = j4 != 16 ? j4 : sliderColorsF.f7231f;
                    long j11 = j4 != 16 ? j4 : sliderColorsF.g;
                    long j12 = j4 != 16 ? j4 : sliderColorsF.f7232h;
                    long j13 = j4 != 16 ? j4 : sliderColorsF.f7233i;
                    if (j4 == 16) {
                        j4 = sliderColorsF.f7234j;
                    }
                    SliderColors sliderColors = new SliderColors(j5, j6, j7, j8, j9, j10, j11, j12, j13, j4, null);
                    Object objX = composer2.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = new aj0(21);
                        composer2.q(objX);
                    }
                    sliderDefaults.b(sliderState, modifierA, false, sliderColors, (Function2) objX, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, 114843648 | SliderState.t | (i3 & 14), 36);
                } else {
                    composer2.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
