package defpackage;

import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.FocusableKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.common.editorial.components.productcarousel.ProductCarouselItemKt;
import com.vuitton.android.presentation.compose.animation.Nav3TransitionsKt;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import com.vuitton.android.presentation.screen.catalog.models.PLPEntryUiModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.PowerManagementAdapter;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.PowerManagementBottomSheet;
import com.vuitton.android.presentation.screen.filter.model.FilterType;
import com.vuitton.android.presentation.screen.immersivearticle.podcast.components.PodcastTrackSliderKt;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeItemUiModel;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.components.OsaContactFormBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.personalselections.list.components.PersonalSelectionsListLoadingScreenKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.ProductFocusDialogKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpPowerMode;
import com.vuitton.foundation.model.domain.model.product.ProductModel;
import com.vuitton.foundation.model.domain.model.product.universal.Variation;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class aj0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f528b;

    public /* synthetic */ aj0(int i2) {
        this.f528b = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f528b) {
            case 0:
                ((Integer) obj).intValue();
                OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel = (OrderReturnOrExchangeItemUiModel) obj2;
                orderReturnOrExchangeItemUiModel.getClass();
                return orderReturnOrExchangeItemUiModel.f60302a.f60413b;
            case 1:
                ((Integer) obj2).getClass();
                OsaContactFormBottomSheetScreenKt.d((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 2:
                AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj;
                ((Integer) obj2).getClass();
                animatedContentTransitionScope.getClass();
                return Nav3TransitionsKt.b(animatedContentTransitionScope);
            case 3:
                return Integer.valueOf(((IntrinsicMeasurable) obj).H(((Integer) obj2).intValue()));
            case 4:
                return Integer.valueOf(((IntrinsicMeasurable) obj).S(((Integer) obj2).intValue()));
            case 5:
                return Integer.valueOf(((IntrinsicMeasurable) obj).l(((Integer) obj2).intValue()));
            case 6:
                return Integer.valueOf(((IntrinsicMeasurable) obj).M(((Integer) obj2).intValue()));
            case 7:
                ((Boolean) obj2).booleanValue();
                ((PLPEntryUiModel) obj).getClass();
                return Unit.f71739a;
            case 8:
                Composer composer = (Composer) obj;
                ((Integer) obj2).getClass();
                composer.L(1019827353);
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PLPHeader$lambda$6");
                boolean zK = composer.K(null);
                Object objX = composer.x();
                if (zK || objX == Composer.Companion.f7939a) {
                    objX = new fj0(21);
                    composer.q(objX);
                }
                Modifier modifierD = DrawModifierKt.d(dTFunctionNameModifier, (Function1) objX);
                composer.F();
                return modifierD;
            case 9:
                ((Integer) obj2).intValue();
                ((PlpProductUiModel) obj).getClass();
                return Unit.f71739a;
            case 10:
                ((Integer) obj2).intValue();
                ((PlpProductUiModel) obj).getClass();
                return Unit.f71739a;
            case 11:
                Composer composer2 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer2.L(1129520849);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("PLPScreen_J1OVMuw$lambda$5$38$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, 7);
                composer2.F();
                return modifierM;
            case 12:
                ((String) obj).getClass();
                ((FilterType) obj2).getClass();
                return Unit.f71739a;
            case 13:
                ((Boolean) obj2).booleanValue();
                ((PLPEntryUiModel) obj).getClass();
                return Unit.f71739a;
            case 14:
                Composer composer3 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer3.L(336534389);
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                Modifier modifierE = WindowInsetsPadding_androidKt.e(new DTFunctionNameModifier("PSPScreen$lambda$4"));
                composer3.F();
                return modifierE;
            case 15:
                Composer composer4 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer4.L(78801921);
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                Modifier modifierB = WindowInsetsPadding_androidKt.b(new DTFunctionNameModifier("PackagingComposable$lambda$1"));
                composer4.F();
                return modifierB;
            case 16:
                AnimatedContentTransitionScope animatedContentTransitionScope2 = (AnimatedContentTransitionScope) obj;
                ((Integer) obj2).getClass();
                animatedContentTransitionScope2.getClass();
                return Nav3TransitionsKt.b(animatedContentTransitionScope2);
            case 17:
                Composer composer5 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer5.L(-433976458);
                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                Modifier modifierC = FocusableKt.c(new DTFunctionNameModifier("PdpSlider$lambda$1$0$0"), null, 3);
                composer5.F();
                return modifierC;
            case 18:
                Composer composer6 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer6.L(-824881745);
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                Modifier modifierA = ModifierExtKt.a(new DTFunctionNameModifier("PdpSlider$lambda$1$0$1"), null, null, 7);
                composer6.F();
                return modifierA;
            case 19:
                Composer composer7 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer7.L(-2110175657);
                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                Modifier modifierB2 = WindowInsetsPadding_androidKt.b(new DTFunctionNameModifier("PerfumeSamplesComposable$lambda$3"));
                composer7.F();
                return modifierB2;
            case 20:
                ((Integer) obj2).getClass();
                PersonalSelectionsListLoadingScreenKt.a((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 21:
                float f2 = PodcastTrackSliderKt.f58900a;
                ((DrawScope) obj).getClass();
                return Unit.f71739a;
            case 22:
                Composer composer8 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer8.L(1633223309);
                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                Modifier modifierK = PaddingKt.k(BackgroundKt.b(ClipKt.a(new DTFunctionNameModifier("PortalCover$lambda$1$0"), LVAppDesignKitTheme.j(composer8).f48411c), Color.b(LVAppDesignKitTheme.h(composer8).f48403c, LVAppDesignKitTheme.c(composer8).f48361b.u), RectangleShapeKt.f8913a), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer8).f48417f, 1);
                composer8.F();
                return modifierK;
            case 23:
                int i2 = PowerManagementAdapter.f56146f;
                ((LVLightUpPowerMode) obj).getClass();
                ((LVLightUpPowerMode) obj2).getClass();
                return Unit.f71739a;
            case 24:
                PowerManagementBottomSheet.Companion companion = PowerManagementBottomSheet.S;
                ((LVLightUpPowerMode) obj).getClass();
                return Unit.f71739a;
            case 25:
                Composer composer9 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer9.L(-658029286);
                OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                Modifier modifierD2 = WindowInsetsPadding_androidKt.d(new DTFunctionNameModifier("PrivacyPreComplianceScreen$lambda$0$0"));
                composer9.F();
                return modifierD2;
            case 26:
                ((Integer) obj2).getClass();
                ProductCarouselItemKt.b((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 27:
                ((Integer) obj2).intValue();
                ((PlpProductUiModel) obj).getClass();
                return Unit.f71739a;
            case 28:
                ((Integer) obj2).getClass();
                ProductFocusDialogKt.a((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            default:
                Variation variation = (Variation) obj2;
                ProductModel.O.getClass();
                String[] strArr = ProductModel.P;
                String str = ((Variation) obj).f68029b;
                return Integer.valueOf((ArraysKt.f(str, strArr) && ArraysKt.f(variation.f68029b, strArr)) ? ArraysKt.E(strArr, str) - ArraysKt.E(strArr, variation.f68029b) : str.compareTo(variation.f68029b));
        }
    }

    public /* synthetic */ aj0(int i2, int i3) {
        this.f528b = i3;
    }
}
