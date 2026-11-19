package defpackage;

import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.TopBarActionScope;
import com.vuitton.android.presentation.common.editorial.components.CarouselAssetKt;
import com.vuitton.android.presentation.common.editorial.components.carousell.CarouselLMultipleKt;
import com.vuitton.android.presentation.common.editorial.components.carousels.CarouselSItemKt;
import com.vuitton.android.presentation.common.editorial.models.CarouselItemTitlesUiModel;
import com.vuitton.android.presentation.common.editorial.models.CarouselLMultipleItemUiModel;
import com.vuitton.android.presentation.common.editorial.models.CarouselLSingleItemUiModel;
import com.vuitton.android.presentation.common.editorial.models.CarouselSItemUiModel;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class jj implements Function4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71409b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f71410c;
    public final /* synthetic */ Function d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f71411e;

    public /* synthetic */ jj(LVColorScheme lVColorScheme, boolean z, Function1 function1) {
        this.f71411e = lVColorScheme;
        this.f71410c = z;
        this.d = function1;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        int i2;
        int i3 = this.f71409b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Object obj5 = this.f71411e;
        Function function = this.d;
        switch (i3) {
            case 0:
                LVColorScheme lVColorScheme = (LVColorScheme) obj5;
                Function1 function1 = (Function1) function;
                ((Integer) obj).getClass();
                CarouselLMultipleItemUiModel carouselLMultipleItemUiModel = (CarouselLMultipleItemUiModel) obj2;
                Composer composer = (Composer) obj3;
                ((Integer) obj4).getClass();
                carouselLMultipleItemUiModel.getClass();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("CarouselLMultiple$lambda$1$1");
                boolean zY = composer.y(carouselLMultipleItemUiModel);
                Object objX = composer.x();
                if (zY || objX == composer$Companion$Empty$1) {
                    objX = new c1(carouselLMultipleItemUiModel, 27);
                    composer.q(objX);
                }
                Modifier modifierB = SemanticsModifierKt.b(dTFunctionNameModifier, false, (Function1) objX);
                AssetUiModel assetUiModel = carouselLMultipleItemUiModel.d;
                CarouselItemTitlesUiModel carouselItemTitlesUiModel = carouselLMultipleItemUiModel.f50786b;
                String str = carouselItemTitlesUiModel != null ? carouselItemTitlesUiModel.f50783a : null;
                String str2 = carouselItemTitlesUiModel != null ? carouselItemTitlesUiModel.f50784b : null;
                ContributionLinkUiModel contributionLinkUiModel = carouselLMultipleItemUiModel.f50787c;
                Dp.Companion companion = Dp.f11004c;
                CarouselLMultipleKt.a(modifierB, lVColorScheme, assetUiModel, str, str2, contributionLinkUiModel, RoundedCornerShapeKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM), this.f71410c, function1, composer, 0);
                break;
            case 1:
                Function1 function2 = (Function1) function;
                ContributionLinkUiModel contributionLinkUiModel2 = (ContributionLinkUiModel) obj5;
                ((Integer) obj).getClass();
                CarouselLSingleItemUiModel carouselLSingleItemUiModel = (CarouselLSingleItemUiModel) obj2;
                Composer composer2 = (Composer) obj3;
                ((Integer) obj4).getClass();
                carouselLSingleItemUiModel.getClass();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                AssetUiModel assetUiModel2 = carouselLSingleItemUiModel.f50790b;
                Dp.Companion companion2 = Dp.f11004c;
                RoundedCornerShape roundedCornerShapeA = RoundedCornerShapeKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                boolean zK = composer2.K(function2) | composer2.y(contributionLinkUiModel2);
                Object objX2 = composer2.x();
                if (zK || objX2 == composer$Companion$Empty$1) {
                    objX2 = new lj(function2, contributionLinkUiModel2, 3);
                    composer2.q(objX2);
                }
                CarouselAssetKt.a(null, assetUiModel2, 0.6666667f, roundedCornerShapeA, this.f71410c, (Function0) objX2, composer2, KyberEngine.KyberPolyBytes, 1);
                break;
            case 2:
                LVColorScheme lVColorScheme2 = (LVColorScheme) obj5;
                Function2 function3 = (Function2) function;
                int iIntValue = ((Integer) obj).intValue();
                CarouselSItemUiModel carouselSItemUiModel = (CarouselSItemUiModel) obj2;
                Composer composer3 = (Composer) obj3;
                int iIntValue2 = ((Integer) obj4).intValue();
                carouselSItemUiModel.getClass();
                if ((iIntValue2 & 6) == 0) {
                    i2 = (composer3.d(iIntValue) ? 4 : 2) | iIntValue2;
                } else {
                    i2 = iIntValue2;
                }
                if ((iIntValue2 & 48) == 0) {
                    i2 |= composer3.K(carouselSItemUiModel) ? 32 : 16;
                }
                if (composer3.p(i2 & 1, (i2 & 147) != 146)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("CarouselS_uYRUAWA$lambda$5$0$1");
                    Object objX3 = composer3.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new jh(9);
                        composer3.q(objX3);
                    }
                    Modifier modifierB2 = SemanticsModifierKt.b(dTFunctionNameModifier2, false, (Function1) objX3);
                    int i4 = i2 & 112;
                    boolean zK2 = ((i2 & 14) == 4) | (i4 == 32) | composer3.K(function3);
                    Object objX4 = composer3.x();
                    if (zK2 || objX4 == composer$Companion$Empty$1) {
                        objX4 = new zd(function3, carouselSItemUiModel, iIntValue, 1);
                        composer3.q(objX4);
                    }
                    CarouselSItemKt.a(modifierB2, carouselSItemUiModel, this.f71410c, lVColorScheme2, (Function1) objX4, composer3, i4);
                } else {
                    composer3.D();
                }
                break;
            default:
                Function0 function0 = (Function0) function;
                LVColorScheme lVColorScheme3 = (LVColorScheme) obj5;
                Composer composer4 = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((TopBarActionScope) obj).getClass();
                ((LVColorScheme) obj2).getClass();
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                if (function0 != null) {
                    composer4.L(1501415594);
                    boolean zK3 = composer4.K(function0);
                    Object objX5 = composer4.x();
                    if (zK3 || objX5 == composer$Companion$Empty$1) {
                        objX5 = new ee0(function0, 17);
                        composer4.q(objX5);
                    }
                    IconButtonKt.a((Function0) objX5, null, false, null, null, ComposableLambdaKt.b(1914396283, new fy(lVColorScheme3, this.f71410c), composer4), composer4, 1572864, 62);
                    composer4.F();
                } else {
                    composer4.L(1502451552);
                    composer4.F();
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ jj(Function0 function0, LVColorScheme lVColorScheme, boolean z) {
        this.d = function0;
        this.f71411e = lVColorScheme;
        this.f71410c = z;
    }

    public /* synthetic */ jj(boolean z, LVColorScheme lVColorScheme, Function2 function2) {
        this.f71410c = z;
        this.f71411e = lVColorScheme;
        this.d = function2;
    }

    public /* synthetic */ jj(boolean z, Function1 function1, ContributionLinkUiModel contributionLinkUiModel) {
        this.f71410c = z;
        this.d = function1;
        this.f71411e = contributionLinkUiModel;
    }
}
