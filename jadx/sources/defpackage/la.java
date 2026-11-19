package defpackage;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Html_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.sightcall.graphik.composent.ButtonsKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationPushCardContent;
import com.vuitton.android.designkit.ui.theme.molecules.LVPushCardKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.cart.components.bottomsheets.NativeCartBottomSheetsKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.NoSearchResultsKt;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBffScreenKt;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class la implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75982b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f75983c;

    public /* synthetic */ la(String str, int i2) {
        this.f75982b = i2;
        this.f75983c = str;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f75982b;
        ComposableLambdaImpl composableLambdaImplB = null;
        String str = this.f75983c;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierE = ModifierExtKt.e(PaddingKt.k(new DTFunctionNameModifier("AudioGuideCreditsBottomSheet$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48417f, 1), "audioGuide_cardCredits_text");
                    int i3 = AnnotatedString.f10418f;
                    TextKt.d(Html_androidKt.b(str, null, 6), modifierE, LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, 0L, null, 0L, 0, false, 0, 0, null, null, LVAppDesignKitTheme.n(composer).g, composer, 0, 0, 262136);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                return ButtonsKt.LargeConfirmButton$lambda$0(str, (RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
            case 2:
                return ButtonsKt.VisionTextButton$lambda$0(str, (RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
            case 3:
                RowScope rowScope = (RowScope) obj;
                boolean z = true;
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                rowScope.getClass();
                if ((iIntValue2 & 6) == 0) {
                    iIntValue2 |= composer2.K(rowScope) ? 4 : 2;
                }
                if ((iIntValue2 & 19) == 18) {
                    z = false;
                }
                if (composer2.p(iIntValue2 & 1, z)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    ConfigurationPushCardContent configurationPushCardContentA = ConfigurationPushCardContent.a(LVAppDesignKitTheme.i(composer2).f48652b, LVAppDesignKitTheme.n(composer2).f48430k, 57);
                    if (str == null) {
                        composer2.L(-1090085653);
                        composer2.F();
                    } else {
                        composer2.L(-1090085652);
                        composableLambdaImplB = ComposableLambdaKt.b(-1686847133, new ma(str, 3), composer2);
                        composer2.F();
                    }
                    LVPushCardKt.b(rowScope, configurationPushCardContentA, null, composableLambdaImplB, StringResources_androidKt.c(composer2, R.string.context_size_pdp_title), StringResources_androidKt.c(composer2, R.string.context_size_pdp_description), null, composer2, iIntValue2 & 14, 34);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 4:
                Composer composer3 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 17) != 16)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    TextKt.c(this.f75983c, ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("DisclaimerBottomSheet$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "pdp_disclaimerDescription_bottomSheet_text"), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer3).f48427h, composer3, 0, 0, 131068);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 5:
                Composer composer4 = (Composer) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                float f2 = NativeCartBottomSheetsKt.f55062a;
                ((ColumnScope) obj).getClass();
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 17) != 16)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    TextKt.c(this.f75983c, PaddingKt.m(new DTFunctionNameModifier("NativeCartBottomSheetDisclaimer$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer4).f48417f, 7), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer4).f48427h, composer4, 0, 0, 131068);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 6:
                LazyItemScope lazyItemScope = (LazyItemScope) obj;
                Composer composer5 = (Composer) obj2;
                int iIntValue5 = ((Integer) obj3).intValue();
                lazyItemScope.getClass();
                if ((iIntValue5 & 6) == 0) {
                    iIntValue5 |= composer5.K(lazyItemScope) ? 4 : 2;
                }
                if (composer5.p(iIntValue5 & 1, (iIntValue5 & 19) != 18)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    NoSearchResultsKt.a(0, composer5, lazyItemScope.a(new DTFunctionNameModifier("pspEmptyResult$lambda$0")), str);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 7:
                Composer composer6 = (Composer) obj2;
                int iIntValue6 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer6.p(iIntValue6 & 1, (iIntValue6 & 17) != 16)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    RepairDetailBffScreenKt.m(StringResources_androidKt.c(composer6, R.string.dr_context_request_description_label), CollectionsKt.O(str), composer6, 0);
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 8:
                Composer composer7 = (Composer) obj2;
                ((Integer) obj3).getClass();
                float f3 = ThankYouScreenKt.f65243a;
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                Modifier modifierG = n00.g("ThankYouScreen$lambda$11$0$0", "thankYou_topBarTitle_text");
                Object objX = composer7.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = new z21(14);
                    composer7.q(objX);
                }
                TextKt.c(this.f75983c, SemanticsModifierKt.b(modifierG, false, (Function1) objX), LVAppDesignKitTheme.c(composer7).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer7).f48429j, composer7, 0, 0, 131064);
                return Unit.f71739a;
            case 9:
                Composer composer8 = (Composer) obj2;
                ((Integer) obj3).getClass();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                Modifier modifierE2 = ModifierExtKt.e(ClipKt.a(SizeKt.o(new DTFunctionNameModifier("ThematicPlpThemeCapsule_Uww_Ezs$lambda$6$0"), LVAppDesignKitTheme.d(composer8).t), RoundedCornerShapeKt.f5846a), "thematicPlp_themeCapsuleTitle_image");
                String str2 = this.f75983c;
                str2.getClass();
                ContentScale.f9447a.getClass();
                ImageLoaderKt.b(modifierE2, str2, ContentScale.Companion.f9449b, null, Integer.valueOf(R.drawable.placeholder_transparent), 0, false, null, null, null, composer8, KyberEngine.KyberPolyBytes, 2024);
                return Unit.f71739a;
            default:
                RowScope rowScope2 = (RowScope) obj;
                Composer composer9 = (Composer) obj2;
                int iIntValue7 = ((Integer) obj3).intValue();
                rowScope2.getClass();
                if ((iIntValue7 & 6) == 0) {
                    iIntValue7 |= composer9.K(rowScope2) ? 4 : 2;
                }
                if (composer9.p(iIntValue7 & 1, (iIntValue7 & 19) != 18)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    LVPushCardKt.b(rowScope2, LVAppDesignKitTheme.i(composer9).f48652b, null, ComposableLambdaKt.b(-859700997, new ma(str, 8), composer9), StringResources_androidKt.c(composer9, R.string.virtual_studio_pdp_button_title), StringResources_androidKt.c(composer9, R.string.virtual_studio_pdp_button_description), null, composer9, (iIntValue7 & 14) | 3072, 34);
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
        }
    }
}
