package defpackage;

import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.SharedTransitionScope;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.grid.LazyGridItemScope;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Html_androidKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.navigation3.scene.ComposableSingletons$SceneSetupNavEntryDecoratorKt;
import coil3.compose.ComposableSingletons$SubcomposeAsyncImageKt;
import coil3.compose.SubcomposeAsyncImageKt;
import coil3.compose.SubcomposeAsyncImageScope;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationPushCardContent;
import com.vuitton.android.designkit.ui.theme.molecules.LVPushCardKt;
import com.vuitton.android.designkit.ui.theme.templates.LVEmptyViewKt;
import com.vuitton.android.presentation.compose.VideoLoaderKt;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.contact.compose.ComposableSingletons$TermsAndConditionsBottomSheetKt;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.ComposableSingletons$TrackDetailTranscriptKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.components.ComposableSingletons$StaggeredGridViewKt;
import com.vuitton.android.presentation.screen.certificates.components.ComposableSingletons$TransferCertificateCardKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.ComposableSingletons$TermsAndConditionsComposableKt;
import com.vuitton.android.presentation.screen.pdp.bottomsheet.ComposableSingletons$VariationBottomSheetKt;
import com.vuitton.android.presentation.screen.pdp.components.sizeguide.ComposableSingletons$TableSizeKt;
import com.vuitton.android.presentation.screen.repairs.list.components.ComposableSingletons$RepairListBffScreenKt;
import com.vuitton.android.presentation.screen.repairs.list.components.ComposableSingletons$RepairListLoadingScreenKt;
import com.vuitton.android.presentation.screen.repairs.list.components.ComposableSingletons$RepairListScreenKt;
import com.vuitton.android.presentation.screen.search.components.ComposableSingletons$TrendingComposableKt;
import com.vuitton.android.presentation.screen.spotlight.components.ComposableSingletons$SpotlightHotspotsKt;
import com.vuitton.android.presentation.screen.spotlight.components.ComposableSingletons$SpotlightScreenKt;
import com.vuitton.android.presentation.screen.storemode.components.ComposableSingletons$StoreModeExpiredComposableKt;
import com.vuitton.android.presentation.screen.storemode.components.CreateWishlistCardKt;
import com.vuitton.android.presentation.screen.storemode.components.catalog.ComposableSingletons$StoreModeLevel1ScreenKt;
import com.vuitton.android.presentation.screen.storemode.components.plp.ComposableSingletons$StoreModeItemsKt;
import com.vuitton.android.presentation.screen.storemode.components.plp.StoreModeItemsKt;
import com.vuitton.android.presentation.screen.thankyou.components.ComposableSingletons$ThankYouScreenKt;
import com.vuitton.android.presentation.screen.wishlist.share.components.ComposableSingletons$SharedWishlistScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ho implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69756b;

    public /* synthetic */ ho(int i2) {
        this.f69756b = i2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f69756b;
        BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
        switch (i2) {
            case 0:
                Modifier modifierE = (Modifier) obj;
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ComposableSingletons$RepairListBffScreenKt composableSingletons$RepairListBffScreenKt = ComposableSingletons$RepairListBffScreenKt.f63905a;
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "lambda_390267844$lambda$0");
                }
                modifierE.getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                Modifier modifierE2 = (Modifier) obj;
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ComposableSingletons$RepairListBffScreenKt composableSingletons$RepairListBffScreenKt2 = ComposableSingletons$RepairListBffScreenKt.f63905a;
                if (modifierE2 != null) {
                    modifierE2 = a.e(modifierE2, "lambda_637229995$lambda$0");
                }
                modifierE2.getClass();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 2:
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer3 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                ComposableSingletons$RepairListLoadingScreenKt composableSingletons$RepairListLoadingScreenKt = ComposableSingletons$RepairListLoadingScreenKt.f63918a;
                paddingValues.getClass();
                if ((iIntValue3 & 6) == 0) {
                    iIntValue3 |= composer3.K(paddingValues) ? 4 : 2;
                }
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 19) != 18)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    Modifier modifierO = o60.e("lambda__1651228329$lambda$0", paddingValues).o(SizeKt.f5052c);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode = Long.hashCode(composer3.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                    Modifier modifierC = ComposedModifierKt.c(composer3, modifierO);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer3.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer3.B();
                    if (composer3.getS()) {
                        composer3.C(function0);
                    } else {
                        composer3.o();
                    }
                    Updater.c(composer3, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer3, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer3, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer3, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer3, modifierC, ComposeUiNode.Companion.d);
                    ProgressViewKt.a(boxScopeInstance.g(new DTFunctionNameModifier("lambda__1651228329$lambda$0"), Alignment.Companion.f8587f), 0L, false, composer3, 0, 6);
                    composer3.r();
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 3:
                Composer composer4 = (Composer) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                ComposableSingletons$RepairListScreenKt composableSingletons$RepairListScreenKt = ComposableSingletons$RepairListScreenKt.f63921a;
                ((LazyItemScope) obj).getClass();
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 17) != 16)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    SpacerKt.a(composer4, SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("lambda__2139550598$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer4).g, 7), 1.0f));
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 4:
                Modifier modifierE3 = (Modifier) obj;
                Composer composer5 = (Composer) obj2;
                int iIntValue5 = ((Integer) obj3).intValue();
                ComposableSingletons$RepairListScreenKt composableSingletons$RepairListScreenKt2 = ComposableSingletons$RepairListScreenKt.f63921a;
                if (modifierE3 != null) {
                    modifierE3 = a.e(modifierE3, "lambda__1634581602$lambda$0");
                }
                modifierE3.getClass();
                if (composer5.p(iIntValue5 & 1, (iIntValue5 & 17) != 16)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 5:
                Modifier modifierE4 = (Modifier) obj;
                Composer composer6 = (Composer) obj2;
                int iIntValue6 = ((Integer) obj3).intValue();
                ComposableSingletons$RepairListScreenKt composableSingletons$RepairListScreenKt3 = ComposableSingletons$RepairListScreenKt.f63921a;
                if (modifierE4 != null) {
                    modifierE4 = a.e(modifierE4, "lambda__309378257$lambda$0");
                }
                modifierE4.getClass();
                if (composer6.p(iIntValue6 & 1, (iIntValue6 & 17) != 16)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 6:
                Modifier modifierE5 = (Modifier) obj;
                Composer composer7 = (Composer) obj2;
                int iIntValue7 = ((Integer) obj3).intValue();
                ComposableSingletons$RepairListScreenKt composableSingletons$RepairListScreenKt4 = ComposableSingletons$RepairListScreenKt.f63921a;
                if (modifierE5 != null) {
                    modifierE5 = a.e(modifierE5, "lambda__1800758036$lambda$0");
                }
                modifierE5.getClass();
                if (composer7.p(iIntValue7 & 1, (iIntValue7 & 17) != 16)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 7:
                Modifier modifierE6 = (Modifier) obj;
                Composer composer8 = (Composer) obj2;
                int iIntValue8 = ((Integer) obj3).intValue();
                ComposableSingletons$RepairListScreenKt composableSingletons$RepairListScreenKt5 = ComposableSingletons$RepairListScreenKt.f63921a;
                if (modifierE6 != null) {
                    modifierE6 = a.e(modifierE6, "lambda__1300191643$lambda$0");
                }
                modifierE6.getClass();
                if (composer8.p(iIntValue8 & 1, (iIntValue8 & 17) != 16)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 8:
                Function2 function2 = (Function2) obj;
                Composer composer9 = (Composer) obj2;
                int iIntValue9 = ((Integer) obj3).intValue();
                ComposableSingletons$SceneSetupNavEntryDecoratorKt composableSingletons$SceneSetupNavEntryDecoratorKt = ComposableSingletons$SceneSetupNavEntryDecoratorKt.f18407a;
                if ((iIntValue9 & 6) == 0) {
                    iIntValue9 |= composer9.y(function2) ? 4 : 2;
                }
                if (composer9.p(iIntValue9 & 1, (iIntValue9 & 19) != 18)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    function2.invoke(composer9, Integer.valueOf(14 & iIntValue9));
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
            case 9:
                Composer composer10 = (Composer) obj2;
                int iIntValue10 = ((Integer) obj3).intValue();
                ComposableSingletons$SharedWishlistScreenKt composableSingletons$SharedWishlistScreenKt = ComposableSingletons$SharedWishlistScreenKt.f65765a;
                ((LazyItemScope) obj).getClass();
                if (composer10.p(iIntValue10 & 1, (iIntValue10 & 17) != 16)) {
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    SpacerKt.a(composer10, SizeKt.f(new DTFunctionNameModifier("lambda__688349578$lambda$0"), LVAppDesignKitTheme.l(composer10).f48415c));
                } else {
                    composer10.D();
                }
                return Unit.f71739a;
            case 10:
                Composer composer11 = (Composer) obj2;
                int iIntValue11 = ((Integer) obj3).intValue();
                ComposableSingletons$SpotlightHotspotsKt composableSingletons$SpotlightHotspotsKt = ComposableSingletons$SpotlightHotspotsKt.f64578a;
                ((BoxScope) obj).getClass();
                if (composer11.p(iIntValue11 & 1, (iIntValue11 & 17) != 16)) {
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    BoxKt.a(BackgroundKt.b(new DTFunctionNameModifier("lambda_1483934109$lambda$0").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer11).f48361b.f48374a, rectangleShapeKt$RectangleShape$1), composer11, 0);
                } else {
                    composer11.D();
                }
                return Unit.f71739a;
            case 11:
                Composer composer12 = (Composer) obj2;
                int iIntValue12 = ((Integer) obj3).intValue();
                ComposableSingletons$SpotlightHotspotsKt composableSingletons$SpotlightHotspotsKt2 = ComposableSingletons$SpotlightHotspotsKt.f64578a;
                ((BoxScope) obj).getClass();
                if (composer12.p(iIntValue12 & 1, (iIntValue12 & 17) != 16)) {
                    OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                    BoxKt.a(BackgroundKt.b(new DTFunctionNameModifier("lambda__2024682530$lambda$0").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer12).f48361b.f48374a, rectangleShapeKt$RectangleShape$1), composer12, 0);
                } else {
                    composer12.D();
                }
                return Unit.f71739a;
            case 12:
                ((Integer) obj3).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt = ComposableSingletons$SpotlightScreenKt.f64582a;
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                VideoLoaderKt.a(null, null, (Composer) obj2, 0, 3);
                return Unit.f71739a;
            case 13:
                Composer composer13 = (Composer) obj2;
                ((Integer) obj3).getClass();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt2 = ComposableSingletons$SpotlightScreenKt.f64582a;
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                BoxKt.a(BackgroundKt.b(new DTFunctionNameModifier("lambda_138236409$lambda$0").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer13).f48361b.f48374a, rectangleShapeKt$RectangleShape$1), composer13, 0);
                return Unit.f71739a;
            case 14:
                Composer composer14 = (Composer) obj2;
                ((Integer) obj3).getClass();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt3 = ComposableSingletons$SpotlightScreenKt.f64582a;
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                Modifier modifierB = BackgroundKt.b(new DTFunctionNameModifier("lambda__1217264006$lambda$0").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer14).f48361b.f48374a, rectangleShapeKt$RectangleShape$1);
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                int iHashCode2 = Long.hashCode(composer14.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer14.n();
                Modifier modifierC2 = ComposedModifierKt.c(composer14, modifierB);
                ComposeUiNode.b0.getClass();
                Function0 function1 = ComposeUiNode.Companion.f9641b;
                if (composer14.getF7976a() == null) {
                    ComposablesKt.b();
                    throw null;
                }
                composer14.B();
                if (composer14.getS()) {
                    composer14.C(function1);
                } else {
                    composer14.o();
                }
                Updater.c(composer14, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                Updater.c(composer14, persistentCompositionLocalMapN2, ComposeUiNode.Companion.f9643e);
                Updater.c(composer14, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                Updater.b(composer14, ComposeUiNode.Companion.f9645h);
                Updater.c(composer14, modifierC2, ComposeUiNode.Companion.d);
                VideoLoaderKt.a(boxScopeInstance.g(new DTFunctionNameModifier("lambda__1217264006$lambda$0"), Alignment.Companion.f8587f), null, composer14, 0, 2);
                composer14.r();
                return Unit.f71739a;
            case 15:
                Composer composer15 = (Composer) obj2;
                int iIntValue13 = ((Integer) obj3).intValue();
                ComposableSingletons$StaggeredGridViewKt composableSingletons$StaggeredGridViewKt = ComposableSingletons$StaggeredGridViewKt.f55385a;
                ((LazyGridItemScope) obj).getClass();
                if (composer15.p(iIntValue13 & 1, (iIntValue13 & 17) != 16)) {
                    OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                    SpacerKt.a(composer15, SizeKt.f(new DTFunctionNameModifier("lambda__299259027$lambda$0"), LVAppDesignKitTheme.l(composer15).g));
                } else {
                    composer15.D();
                }
                return Unit.f71739a;
            case 16:
                PaddingValues paddingValues2 = (PaddingValues) obj;
                Composer composer16 = (Composer) obj2;
                int iIntValue14 = ((Integer) obj3).intValue();
                ComposableSingletons$StoreModeExpiredComposableKt composableSingletons$StoreModeExpiredComposableKt = ComposableSingletons$StoreModeExpiredComposableKt.f64833a;
                paddingValues2.getClass();
                if ((iIntValue14 & 6) == 0) {
                    iIntValue14 |= composer16.K(paddingValues2) ? 4 : 2;
                }
                if (composer16.p(iIntValue14 & 1, (iIntValue14 & 19) != 18)) {
                    OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("lambda_1356946344$lambda$0");
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = CompositionLocalsKt.n;
                    LVEmptyViewKt.e(PaddingKt.m(dTFunctionNameModifier, PaddingKt.g(paddingValues2, (LayoutDirection) composer16.k(staticProvidableCompositionLocal)), Call.Parameters.DEFAULT_CAMERA_ZOOM, PaddingKt.f(paddingValues2, (LayoutDirection) composer16.k(staticProvidableCompositionLocal)), Call.Parameters.DEFAULT_CAMERA_ZOOM, 10), null, StringResources_androidKt.c(composer16, R.string.store_mode_wrong_qr_code_scanned), null, null, null, null, composer16, 0, 506);
                } else {
                    composer16.D();
                }
                return Unit.f71739a;
            case 17:
                LazyItemScope lazyItemScope = (LazyItemScope) obj;
                Composer composer17 = (Composer) obj2;
                int iIntValue15 = ((Integer) obj3).intValue();
                ComposableSingletons$StoreModeItemsKt composableSingletons$StoreModeItemsKt = ComposableSingletons$StoreModeItemsKt.f64896a;
                lazyItemScope.getClass();
                if ((iIntValue15 & 6) == 0) {
                    iIntValue15 |= composer17.K(lazyItemScope) ? 4 : 2;
                }
                if (composer17.p(iIntValue15 & 1, (iIntValue15 & 19) != 18)) {
                    OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                    StoreModeItemsKt.a(PaddingKt.m(lazyItemScope.a(new DTFunctionNameModifier("lambda_49410125$lambda$0")), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer17).m, 7), StringResources_androidKt.c(composer17, R.string.store_mode_catalog_no_result_title), StringResources_androidKt.c(composer17, R.string.store_mode_catalog_no_result_message), composer17, 0, 0);
                } else {
                    composer17.D();
                }
                return Unit.f71739a;
            case 18:
                Composer composer18 = (Composer) obj2;
                int iIntValue16 = ((Integer) obj3).intValue();
                ComposableSingletons$StoreModeItemsKt composableSingletons$StoreModeItemsKt2 = ComposableSingletons$StoreModeItemsKt.f64896a;
                ((LazyGridItemScope) obj).getClass();
                if (composer18.p(iIntValue16 & 1, (iIntValue16 & 17) != 16)) {
                    OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                    StoreModeItemsKt.a(PaddingKt.m(new DTFunctionNameModifier("lambda__2131926464$lambda$0").o(SizeKt.f5052c), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer18).m, 7), StringResources_androidKt.c(composer18, R.string.store_mode_catalog_no_result_title), StringResources_androidKt.c(composer18, R.string.store_mode_catalog_no_result_message), composer18, 0, 0);
                } else {
                    composer18.D();
                }
                return Unit.f71739a;
            case 19:
                Composer composer19 = (Composer) obj2;
                int iIntValue17 = ((Integer) obj3).intValue();
                ComposableSingletons$StoreModeLevel1ScreenKt composableSingletons$StoreModeLevel1ScreenKt = ComposableSingletons$StoreModeLevel1ScreenKt.f64865a;
                ((LazyItemScope) obj).getClass();
                if (composer19.p(iIntValue17 & 1, (iIntValue17 & 17) != 16)) {
                    OpaqueKey opaqueKey20 = ComposerKt.f7940a;
                    CreateWishlistCardKt.a(composer19, 0);
                } else {
                    composer19.D();
                }
                return Unit.f71739a;
            case 20:
                SubcomposeAsyncImageScope subcomposeAsyncImageScope = (SubcomposeAsyncImageScope) obj;
                int i3 = 4;
                Composer composer20 = (Composer) obj2;
                int iIntValue18 = ((Integer) obj3).intValue();
                ComposableSingletons$SubcomposeAsyncImageKt composableSingletons$SubcomposeAsyncImageKt = ComposableSingletons$SubcomposeAsyncImageKt.f21295a;
                if ((iIntValue18 & 6) == 0) {
                    if (!composer20.K(subcomposeAsyncImageScope)) {
                        i3 = 2;
                    }
                    iIntValue18 |= i3;
                }
                if (composer20.p(iIntValue18 & 1, (iIntValue18 & 19) != 18)) {
                    OpaqueKey opaqueKey21 = ComposerKt.f7940a;
                    SubcomposeAsyncImageKt.b(subcomposeAsyncImageScope, null, null, null, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, false, composer20, iIntValue18 & 14);
                } else {
                    composer20.D();
                }
                return Unit.f71739a;
            case 21:
                Composer composer21 = (Composer) obj2;
                int iIntValue19 = ((Integer) obj3).intValue();
                ComposableSingletons$TableSizeKt composableSingletons$TableSizeKt = ComposableSingletons$TableSizeKt.f61428a;
                ((LazyItemScope) obj).getClass();
                if (composer21.p(iIntValue19 & 1, (iIntValue19 & 17) != 16)) {
                    OpaqueKey opaqueKey22 = ComposerKt.f7940a;
                    SpacerKt.a(composer21, SizeKt.s(new DTFunctionNameModifier("lambda__1862345231$lambda$0"), LVAppDesignKitTheme.l(composer21).f48416e));
                } else {
                    composer21.D();
                }
                return Unit.f71739a;
            case 22:
                Composer composer22 = (Composer) obj2;
                int iIntValue20 = ((Integer) obj3).intValue();
                ComposableSingletons$TermsAndConditionsBottomSheetKt composableSingletons$TermsAndConditionsBottomSheetKt = ComposableSingletons$TermsAndConditionsBottomSheetKt.f51128a;
                ((ColumnScope) obj).getClass();
                if (composer22.p(iIntValue20 & 1, (iIntValue20 & 17) != 16)) {
                    OpaqueKey opaqueKey23 = ComposerKt.f7940a;
                    TextKt.c(StringResources_androidKt.c(composer22, R.string.csc_contact_bottomsheet_chat_description_optout), PaddingKt.m(new DTFunctionNameModifier("lambda__783173891$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer22).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer22).f48427h, composer22, 0, 0, 131068);
                } else {
                    composer22.D();
                }
                return Unit.f71739a;
            case 23:
                PaddingValues paddingValues3 = (PaddingValues) obj;
                Composer composer23 = (Composer) obj2;
                int iIntValue21 = ((Integer) obj3).intValue();
                ComposableSingletons$TermsAndConditionsComposableKt composableSingletons$TermsAndConditionsComposableKt = ComposableSingletons$TermsAndConditionsComposableKt.f57076a;
                paddingValues3.getClass();
                if ((iIntValue21 & 6) == 0) {
                    iIntValue21 |= composer23.K(paddingValues3) ? 4 : 2;
                }
                if (composer23.p(iIntValue21 & 1, (iIntValue21 & 19) != 18)) {
                    OpaqueKey opaqueKey24 = ComposerKt.f7940a;
                    Modifier modifierD = ScrollKt.d(PaddingKt.k(PaddingKt.h(BackgroundKt.b(new DTFunctionNameModifier("lambda__1719744767$lambda$0").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer23).f48361b.f48374a, rectangleShapeKt$RectangleShape$1), paddingValues3), LVAppDesignKitTheme.l(composer23).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), ScrollKt.b(composer23), false, 14);
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer23, 0);
                    int iHashCode3 = Long.hashCode(composer23.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer23.n();
                    Modifier modifierC3 = ComposedModifierKt.c(composer23, modifierD);
                    ComposeUiNode.b0.getClass();
                    Function0 function3 = ComposeUiNode.Companion.f9641b;
                    if (composer23.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer23.B();
                    if (composer23.getS()) {
                        composer23.C(function3);
                    } else {
                        composer23.o();
                    }
                    Updater.c(composer23, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer23, persistentCompositionLocalMapN3, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer23, Integer.valueOf(iHashCode3), ComposeUiNode.Companion.g);
                    Updater.b(composer23, ComposeUiNode.Companion.f9645h);
                    Modifier modifierM = PaddingKt.m(SizeKt.v(a.f(composer23, modifierC3, ComposeUiNode.Companion.d, "lambda__1719744767$lambda$0"), null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer23).f48421k, 7);
                    int i4 = AnnotatedString.f10418f;
                    TextKt.d(Html_androidKt.b(StringResources_androidKt.c(composer23, R.string.dr_prass_legal_text_modal), null, 6), modifierM, LVAppDesignKitTheme.c(composer23).f48361b.f48382k, 0L, 0L, null, 0L, 0, false, 0, 0, null, null, LVAppDesignKitTheme.n(composer23).f48427h, composer23, 0, 0, 262136);
                    composer23.r();
                } else {
                    composer23.D();
                }
                return Unit.f71739a;
            case 24:
                Composer composer24 = (Composer) obj2;
                int iIntValue22 = ((Integer) obj3).intValue();
                ComposableSingletons$ThankYouScreenKt composableSingletons$ThankYouScreenKt = ComposableSingletons$ThankYouScreenKt.f65236a;
                ((SharedTransitionScope) obj).getClass();
                if (composer24.p(iIntValue22 & 1, (iIntValue22 & 17) != 16)) {
                    OpaqueKey opaqueKey25 = ComposerKt.f7940a;
                    AnimatedContentKt.b("", null, null, null, null, null, ComposableSingletons$ThankYouScreenKt.f65238c, composer24, 1572870, 62);
                } else {
                    composer24.D();
                }
                return Unit.f71739a;
            case 25:
                Composer composer25 = (Composer) obj2;
                int iIntValue23 = ((Integer) obj3).intValue();
                ComposableSingletons$TrackDetailTranscriptKt composableSingletons$TrackDetailTranscriptKt = ComposableSingletons$TrackDetailTranscriptKt.f53104a;
                ((LazyItemScope) obj).getClass();
                if (composer25.p(iIntValue23 & 1, (iIntValue23 & 17) != 16)) {
                    OpaqueKey opaqueKey26 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("lambda_2100081941$lambda$0");
                    Dp.Companion companion = Dp.f11004c;
                    SpacerKt.a(composer25, SizeKt.f(dTFunctionNameModifier2, 120.0f));
                } else {
                    composer25.D();
                }
                return Unit.f71739a;
            case 26:
                Composer composer26 = (Composer) obj2;
                int iIntValue24 = ((Integer) obj3).intValue();
                ComposableSingletons$TrackDetailTranscriptKt composableSingletons$TrackDetailTranscriptKt2 = ComposableSingletons$TrackDetailTranscriptKt.f53104a;
                ((LazyItemScope) obj).getClass();
                if (composer26.p(iIntValue24 & 1, (iIntValue24 & 17) != 16)) {
                    OpaqueKey opaqueKey27 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("lambda_1959927052$lambda$0");
                    Dp.Companion companion2 = Dp.f11004c;
                    SpacerKt.a(composer26, SizeKt.f(dTFunctionNameModifier3, 120.0f));
                } else {
                    composer26.D();
                }
                return Unit.f71739a;
            case 27:
                RowScope rowScope = (RowScope) obj;
                Composer composer27 = (Composer) obj2;
                int iIntValue25 = ((Integer) obj3).intValue();
                ComposableSingletons$TransferCertificateCardKt composableSingletons$TransferCertificateCardKt = ComposableSingletons$TransferCertificateCardKt.f55686a;
                rowScope.getClass();
                if ((iIntValue25 & 6) == 0) {
                    iIntValue25 |= composer27.K(rowScope) ? 4 : 2;
                }
                if (composer27.p(iIntValue25 & 1, (iIntValue25 & 19) != 18)) {
                    OpaqueKey opaqueKey28 = ComposerKt.f7940a;
                    LVPushCardKt.b(rowScope, ConfigurationPushCardContent.a(LVAppDesignKitTheme.i(composer27).f48651a, null, 61), PainterResources_androidKt.a(R.drawable.certificate_transfer_push_card_image, composer27, 0), null, StringResources_androidKt.c(composer27, R.string.mycertificates_activation_push_title), StringResources_androidKt.c(composer27, R.string.mycertificates_activation_push_subtitle), null, composer27, (14 & iIntValue25) | 512, 36);
                } else {
                    composer27.D();
                }
                return Unit.f71739a;
            case 28:
                Composer composer28 = (Composer) obj2;
                int iIntValue26 = ((Integer) obj3).intValue();
                ComposableSingletons$TrendingComposableKt composableSingletons$TrendingComposableKt = ComposableSingletons$TrendingComposableKt.f64166a;
                ((LazyItemScope) obj).getClass();
                if (composer28.p(iIntValue26 & 1, (iIntValue26 & 17) != 16)) {
                    OpaqueKey opaqueKey29 = ComposerKt.f7940a;
                    SpacerKt.a(composer28, SizeKt.f(new DTFunctionNameModifier("lambda__129222290$lambda$0"), LVAppDesignKitTheme.l(composer28).f48416e));
                } else {
                    composer28.D();
                }
                return Unit.f71739a;
            default:
                RowScope rowScope2 = (RowScope) obj;
                Composer composer29 = (Composer) obj2;
                int iIntValue27 = ((Integer) obj3).intValue();
                ComposableSingletons$VariationBottomSheetKt composableSingletons$VariationBottomSheetKt = ComposableSingletons$VariationBottomSheetKt.f61340a;
                rowScope2.getClass();
                if ((iIntValue27 & 6) == 0) {
                    iIntValue27 |= composer29.K(rowScope2) ? 4 : 2;
                }
                if (composer29.p(iIntValue27 & 1, (iIntValue27 & 19) != 18)) {
                    OpaqueKey opaqueKey30 = ComposerKt.f7940a;
                    LVPushCardKt.b(rowScope2, LVAppDesignKitTheme.i(composer29).f48652b, PainterResources_androidKt.a(R.drawable.shadefinder, composer29, 0), null, StringResources_androidKt.c(composer29, R.string.shadefinder_entry_title), StringResources_androidKt.c(composer29, R.string.shadefinder_entry_text), null, composer29, (iIntValue27 & 14) | 512, 36);
                } else {
                    composer29.D();
                }
                return Unit.f71739a;
        }
    }
}
