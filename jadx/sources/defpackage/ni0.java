package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.text.Spannable;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.snapping.FinalSnappingItem;
import androidx.compose.foundation.gestures.snapping.LazyListSnapLayoutInfoProviderKt;
import androidx.compose.foundation.gestures.snapping.PagerSnapLayoutInfoProviderKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.grid.LazyGridItemScope;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.android.style.TypefaceSpan;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.platform.a;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVFlowerLoaderKt;
import com.vuitton.android.designkit.components.components.ZoomableContentScope;
import com.vuitton.android.designkit.ui.theme.GradientKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.ShadowKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVDisclaimerKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.designkit.ui.theme.molecules.LVPushCardKt;
import com.vuitton.android.designkit.ui.theme.templates.LVEmptyViewKt;
import com.vuitton.android.presentation.common.editorial.components.pushcard.PushCardKt;
import com.vuitton.android.presentation.common.editorial.components.pushcard.PushCardType;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.IconUiModel;
import com.vuitton.android.presentation.model.common.IconUiModelKt;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTracker;
import com.vuitton.android.presentation.screen.catalog.thematicplp.helper.ColorHelperKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeComponentsKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeReasonScreenKt;
import com.vuitton.android.presentation.screen.orders.components.list.OrderListScreenKt;
import com.vuitton.android.presentation.screen.orders.models.ConfirmReturnResponseUiModel;
import com.vuitton.android.presentation.screen.orders.models.ExchangeSubmitResponseUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import com.vuitton.android.presentation.screen.orders.models.OrderViewState;
import com.vuitton.android.presentation.screen.osa.form.storeselection.models.OsaLocationFormViewState;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpCareAndSustainabilityKt;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpCustomizationContainerKt;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpDescriptionKt;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.VirtualStudioCardKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.components.ContextualSizingPushCardKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ModelSizeVariationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.PdpVirtualStudioConfigValues;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.ShadeFinderIntroComposableKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.ShadeFinderScanScreenKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ShadeFinderScanState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ShadeFinderViewState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.ShadeFinderTracker;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorViewState;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionAssetUiModel;
import com.vuitton.android.presentation.screen.repairs.components.RepairShippingConfirmationComposableKt;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBffScreenKt;
import com.vuitton.android.presentation.screen.repairs.models.RepairsViewState;
import com.vuitton.android.presentation.screen.repairs.models.bff.AssessmentUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.HeaderUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.RepairsBffViewState;
import com.vuitton.android.presentation.screen.repairs.models.bff.ShippingInformationUiModel;
import com.vuitton.android.presentation.screen.storemode.components.catalog.StoreModeLevel1ScreenKt;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeCategoryL1UiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeCategoryL2UiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistSummaryUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistViewState;
import com.vuitton.android.presentation.screen.wishlist.share.components.SharedWishlistScreenKt;
import com.vuitton.android.presentation.utils.AccessibilityUtils;
import com.vuitton.android.presentation.utils.ProductUtils;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ni0 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76532b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f76533c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ni0(Object obj, Object obj2, int i2) {
        this.f76532b = i2;
        this.f76533c = obj;
        this.d = obj2;
    }

    private final Object a(Object obj, Object obj2, Object obj3) {
        RepairsBffViewState repairsBffViewState = (RepairsBffViewState) this.f76533c;
        Function0 function0 = (Function0) this.d;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ((LazyItemScope) obj).getClass();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (repairsBffViewState.f64086e.size() + repairsBffViewState.d.size() == 1) {
                SpacerKt.a(composer, SizeKt.f(pq0.j(61168707, composer, "RepairListBffScreen$lambda$2$0$0$5"), LVAppDesignKitTheme.d(composer).E));
                composer.F();
            } else {
                composer.L(61368595);
                composer.F();
            }
            String strC = StringResources_androidKt.c(composer, R.string.dr_cta_tuto_repairs);
            Modifier modifierD = SizeKt.d(PaddingKt.k(new DTFunctionNameModifier("RepairListBffScreen$lambda$2$0$0$5"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).g, 1), 1.0f);
            Alignment.f8582a.getClass();
            LVLinkKt.a(SizeKt.x(modifierD, Alignment.Companion.o, 2), strC, false, null, false, function0, composer, 0, 28);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object b(Object obj, Object obj2, Object obj3) {
        RepairsViewState repairsViewState = (RepairsViewState) this.f76533c;
        Function0 function0 = (Function0) this.d;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ((LazyItemScope) obj).getClass();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (repairsViewState.f64016e.size() + repairsViewState.d.size() == 1) {
                SpacerKt.a(composer, SizeKt.f(pq0.j(-1480834271, composer, "RepairListScreen$lambda$2$0$0$5"), LVAppDesignKitTheme.d(composer).E));
                composer.F();
            } else {
                composer.L(-1480634383);
                composer.F();
            }
            String strC = StringResources_androidKt.c(composer, R.string.dr_cta_tuto_repairs);
            Modifier modifierD = SizeKt.d(PaddingKt.k(new DTFunctionNameModifier("RepairListScreen$lambda$2$0$0$5"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).g, 1), 1.0f);
            Alignment.f8582a.getClass();
            LVLinkKt.a(SizeKt.x(modifierD, Alignment.Companion.o, 2), strC, false, null, false, function0, composer, 0, 28);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object c(Object obj, Object obj2, Object obj3) {
        AssessmentViewState assessmentViewState = (AssessmentViewState) this.f76533c;
        Function0 function0 = (Function0) this.d;
        PaddingValues paddingValues = (PaddingValues) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        paddingValues.getClass();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(paddingValues) ? 4 : 2;
        }
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("RepairsShippingConfirmationScreen$lambda$1");
            FillElement fillElement = SizeKt.f5052c;
            Modifier modifierD = ScrollKt.d(PaddingKt.h(BackgroundKt.b(dTFunctionNameModifier.o(fillElement), LVAppDesignKitTheme.c(composer).f48361b.f48375b, RectangleShapeKt.f8913a), paddingValues), ScrollKt.b(composer), false, 14);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer, 0);
            int iHashCode = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
            Modifier modifierC = ComposedModifierKt.c(composer, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (composer.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer.B();
            if (composer.getS()) {
                composer.C(function1);
            } else {
                composer.o();
            }
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(composer, columnMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(composer, persistentCompositionLocalMapN, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(composer, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(composer, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            Updater.c(composer, modifierC, function6);
            if (assessmentViewState.f57357b) {
                composer.L(208743521);
                Modifier modifierO = new DTFunctionNameModifier("RepairsShippingConfirmationScreen$lambda$1").o(fillElement);
                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                int iHashCode2 = Long.hashCode(composer.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer.n();
                Modifier modifierC2 = ComposedModifierKt.c(composer, modifierO);
                if (composer.getF7976a() == null) {
                    ComposablesKt.b();
                    throw null;
                }
                composer.B();
                if (composer.getS()) {
                    composer.C(function1);
                } else {
                    composer.o();
                }
                Updater.c(composer, measurePolicyD, function2);
                Updater.c(composer, persistentCompositionLocalMapN2, function3);
                cj.s(iHashCode2, composer, function4, composer, function5);
                Updater.c(composer, modifierC2, function6);
                ProgressViewKt.a(null, 0L, false, composer, 0, 7);
                composer.r();
                composer.F();
            } else {
                TextKt.c(StringResources_androidKt.c(composer, R.string.dr_title_confirmation_page), PaddingKt.j(pq0.j(208988359, composer, "RepairsShippingConfirmationScreen$lambda$1"), LVAppDesignKitTheme.l(composer).f48416e, LVAppDesignKitTheme.l(composer).f48417f), LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).f48425e, composer, 0, 0, 131064);
                composer = composer;
                RepairShippingConfirmationComposableKt.d(assessmentViewState, function0, composer, 0);
                composer.F();
            }
            composer.r();
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object d(Object obj, Object obj2, Object obj3) {
        ShadeFinderTracker shadeFinderTracker = (ShadeFinderTracker) this.f76533c;
        Function0 function0 = (Function0) this.d;
        PaddingValues paddingValues = (PaddingValues) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        paddingValues.getClass();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(paddingValues) ? 4 : 2;
        }
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = ScrollKt.d(o60.e("ShadeFinderIntroComposable$lambda$0$2", paddingValues).o(SizeKt.f5052c), ScrollKt.b(composer), false, 14);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, composer, 0);
            int iHashCode = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
            Modifier modifierC = ComposedModifierKt.c(composer, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (composer.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer.B();
            if (composer.getS()) {
                composer.C(function1);
            } else {
                composer.o();
            }
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(composer, columnMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(composer, persistentCompositionLocalMapN, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(composer, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(composer, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            Updater.c(composer, modifierC, function6);
            Modifier modifierK = PaddingKt.k(new DTFunctionNameModifier("ShadeFinderIntroComposable$lambda$0$2"), LVAppDesignKitTheme.l(composer).f48420j, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, composer, 0);
            int iHashCode2 = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer.n();
            Modifier modifierC2 = ComposedModifierKt.c(composer, modifierK);
            if (composer.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer.B();
            if (composer.getS()) {
                composer.C(function1);
            } else {
                composer.o();
            }
            Updater.c(composer, columnMeasurePolicyA2, function2);
            Updater.c(composer, persistentCompositionLocalMapN2, function3);
            cj.s(iHashCode2, composer, function4, composer, function5);
            Modifier modifierK2 = PaddingKt.k(ModifierExtKt.a(a.f(composer, modifierC2, function6, "ShadeFinderIntroComposable$lambda$0$2"), null, null, 7), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).g, 1);
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierA = AspectRatioKt.a(SizeKt.o(modifierK2, 100.0f), 1.0f, true);
            BiasAlignment.Horizontal horizontal2 = Alignment.Companion.o;
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
            IconKt.a(PainterResources_androidKt.a(R.drawable.ic_shadefinder_phone, composer, 0), null, columnScopeInstance.b(modifierA, horizontal2), LVAppDesignKitTheme.c(composer).f48361b.m, composer, 56, 0);
            Modifier modifierB = columnScopeInstance.b(PaddingKt.m(new DTFunctionNameModifier("ShadeFinderIntroComposable$lambda$0$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48416e, 7), horizontal2);
            String strC = StringResources_androidKt.c(composer, R.string.global_shade_finder_instructions_description);
            TextStyle textStyle = LVAppDesignKitTheme.n(composer).f48427h;
            long j2 = LVAppDesignKitTheme.c(composer).f48361b.m;
            TextAlign.f10959b.getClass();
            TextKt.c(strC, modifierB, j2, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle, composer, 0, 0, 130040);
            ShadeFinderIntroComposableKt.a(R.string.global_shade_finder_instructions_step_1_description, R.drawable.ic_shadefinder_sun, composer, 0);
            ShadeFinderIntroComposableKt.a(R.string.global_shade_finder_instructions_step_2_description, R.drawable.ic_shadefinder_scan, composer, 0);
            ShadeFinderIntroComposableKt.a(R.string.global_shade_finder_instructions_step_3_description, R.drawable.ic_shadefinder_face, composer, 0);
            composer.r();
            SpacerKt.a(composer, columnScopeInstance.a(new DTFunctionNameModifier("ShadeFinderIntroComposable$lambda$0$2"), 1.0f, true));
            ConfigurationButton configurationButton = LVAppDesignKitTheme.b(composer).f48450f;
            Modifier modifierM = PaddingKt.m(tr.d("ShadeFinderIntroComposable$lambda$0$2", 1.0f), LVAppDesignKitTheme.l(composer).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48417f, LVAppDesignKitTheme.l(composer).m, 2);
            String strC2 = StringResources_androidKt.c(composer, R.string.home_start);
            boolean zY = composer.y(shadeFinderTracker) | composer.K(function0);
            Object objX = composer.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new rv0(shadeFinderTracker, function0, 0);
                composer.q(objX);
            }
            LVButtonKt.b(0, 504, composer, modifierM, configurationButton, null, null, strC2, (Function0) objX, false, false, false);
            composer.r();
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object e(Object obj, Object obj2, Object obj3) {
        ShadeFinderViewState shadeFinderViewState = (ShadeFinderViewState) this.f76533c;
        Context context = (Context) this.d;
        PaddingValues paddingValues = (PaddingValues) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        paddingValues.getClass();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(paddingValues) ? 4 : 2;
        }
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z = shadeFinderViewState.f62178a;
            ShadeFinderScanState shadeFinderScanState = shadeFinderViewState.f62180c;
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
            if (z) {
                composer.L(-979340149);
                String string = context.getString(R.string.alt_loading_status);
                string.getClass();
                AccessibilityUtils.a(context, string);
                Modifier modifierB = BackgroundKt.b(new DTFunctionNameModifier("ShadeFinderScanScreen$lambda$2").o(SizeKt.f5052c), Color.b(LVAppDesignKitTheme.h(composer).d, LVAppDesignKitTheme.c(composer).f48361b.u), RectangleShapeKt.f8913a);
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                int iHashCode = Long.hashCode(composer.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
                Modifier modifierC = ComposedModifierKt.c(composer, modifierB);
                ComposeUiNode.b0.getClass();
                Function0 function0 = ComposeUiNode.Companion.f9641b;
                if (composer.getF7976a() == null) {
                    ComposablesKt.b();
                    throw null;
                }
                composer.B();
                if (composer.getS()) {
                    composer.C(function0);
                } else {
                    composer.o();
                }
                Function2 function2 = ComposeUiNode.Companion.f9644f;
                Updater.c(composer, measurePolicyD, function2);
                Function2 function3 = ComposeUiNode.Companion.f9643e;
                Updater.c(composer, persistentCompositionLocalMapN, function3);
                Integer numValueOf = Integer.valueOf(iHashCode);
                Function2 function4 = ComposeUiNode.Companion.g;
                Updater.c(composer, numValueOf, function4);
                Function1 function1 = ComposeUiNode.Companion.f9645h;
                Updater.b(composer, function1);
                Function2 function5 = ComposeUiNode.Companion.d;
                Updater.c(composer, modifierC, function5);
                Modifier modifierD = SizeKt.d(boxScopeInstance.g(PaddingKt.m(PaddingKt.h(new DTFunctionNameModifier("ShadeFinderScanScreen$lambda$2"), paddingValues), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).m, 7), Alignment.Companion.f8589i), 1.0f);
                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, composer, 48);
                int iHashCode2 = Long.hashCode(composer.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer.n();
                Modifier modifierC2 = ComposedModifierKt.c(composer, modifierD);
                if (composer.getF7976a() == null) {
                    ComposablesKt.b();
                    throw null;
                }
                composer.B();
                if (composer.getS()) {
                    composer.C(function0);
                } else {
                    composer.o();
                }
                Updater.c(composer, columnMeasurePolicyA, function2);
                Updater.c(composer, persistentCompositionLocalMapN2, function3);
                cj.s(iHashCode2, composer, function4, composer, function1);
                LVFlowerLoaderKt.a(SizeKt.o(a.f(composer, modifierC2, function5, "ShadeFinderScanScreen$lambda$2"), LVAppDesignKitTheme.d(composer).u), null, false, composer, 0, 6);
                TextKt.c(StringResources_androidKt.c(composer, R.string.shade_finder_scanning_loading_page_title), PaddingKt.m(new DTFunctionNameModifier("ShadeFinderScanScreen$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(composer).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).f48427h, composer, 0, 0, 131064);
                composer.r();
                composer.r();
                composer.F();
            } else {
                DTFunctionNameModifier dTFunctionNameModifierJ = pq0.j(-978061926, composer, "ShadeFinderScanScreen$lambda$2");
                FillElement fillElement = SizeKt.f5052c;
                Modifier modifierO = dTFunctionNameModifierJ.o(fillElement);
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                int iHashCode3 = Long.hashCode(composer.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer.n();
                Modifier modifierC3 = ComposedModifierKt.c(composer, modifierO);
                ComposeUiNode.b0.getClass();
                Function0 function6 = ComposeUiNode.Companion.f9641b;
                if (composer.getF7976a() == null) {
                    ComposablesKt.b();
                    throw null;
                }
                composer.B();
                if (composer.getS()) {
                    composer.C(function6);
                } else {
                    composer.o();
                }
                Function2 function7 = ComposeUiNode.Companion.f9644f;
                Updater.c(composer, measurePolicyD2, function7);
                Function2 function8 = ComposeUiNode.Companion.f9643e;
                Updater.c(composer, persistentCompositionLocalMapN3, function8);
                Integer numValueOf2 = Integer.valueOf(iHashCode3);
                Function2 function9 = ComposeUiNode.Companion.g;
                Updater.c(composer, numValueOf2, function9);
                Function1 function10 = ComposeUiNode.Companion.f9645h;
                Updater.b(composer, function10);
                Function2 function11 = ComposeUiNode.Companion.d;
                Updater.c(composer, modifierC3, function11);
                BoxKt.a(GradientKt.a(new DTFunctionNameModifier("ShadeFinderScanScreen$lambda$2").o(fillElement), GradientKt.f48343b), composer, 0);
                Modifier modifierM = PaddingKt.m(WindowInsetsPadding_androidKt.b(boxScopeInstance.g(new DTFunctionNameModifier("ShadeFinderScanScreen$lambda$2"), Alignment.Companion.f8589i)), LVAppDesignKitTheme.l(composer).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10);
                ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, composer, 48);
                int iHashCode4 = Long.hashCode(composer.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer.n();
                Modifier modifierC4 = ComposedModifierKt.c(composer, modifierM);
                if (composer.getF7976a() == null) {
                    ComposablesKt.b();
                    throw null;
                }
                composer.B();
                if (composer.getS()) {
                    composer.C(function6);
                } else {
                    composer.o();
                }
                Updater.c(composer, columnMeasurePolicyA2, function7);
                Updater.c(composer, persistentCompositionLocalMapN4, function8);
                cj.s(iHashCode4, composer, function9, composer, function10);
                TextKt.c(StringResources_androidKt.c(composer, R.string.shade_finder_scanning_title), PaddingKt.m(a.f(composer, modifierC4, function11, "ShadeFinderScanScreen$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48417f, 7), LVAppDesignKitTheme.c(composer).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).f48427h, composer, 0, 0, 131064);
                ShadeFinderScanScreenKt.a(0, composer, StringResources_androidKt.b(R.string.numbered_list, new Object[]{1}, composer), StringResources_androidKt.c(composer, R.string.shade_finder_lighting), shadeFinderScanState.f62175a);
                ShadeFinderScanScreenKt.a(0, composer, StringResources_androidKt.b(R.string.numbered_list, new Object[]{2}, composer), StringResources_androidKt.c(composer, R.string.shade_finder_straight_look), shadeFinderScanState.f62176b);
                ShadeFinderScanScreenKt.a(0, composer, StringResources_androidKt.b(R.string.numbered_list, new Object[]{3}, composer), StringResources_androidKt.c(composer, R.string.shade_finder_face_position), shadeFinderScanState.f62177c);
                SpacerKt.a(composer, SizeKt.f(new DTFunctionNameModifier("ShadeFinderScanScreen$lambda$2"), LVAppDesignKitTheme.l(composer).l));
                composer.r();
                composer.r();
                composer.F();
            }
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object f(Object obj, Object obj2, Object obj3) {
        Composer composer;
        ProductBackground productBackground = (ProductBackground) this.f76533c;
        String str = (String) this.d;
        ZoomableContentScope zoomableContentScope = (ZoomableContentScope) obj;
        Composer composer2 = (Composer) obj2;
        ((Integer) obj3).getClass();
        zoomableContentScope.getClass();
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Modifier modifierC = GraphicsLayerModifierKt.c(new DTFunctionNameModifier("SingleImageViewer$lambda$1"), zoomableContentScope.getF48292a(), zoomableContentScope.getF48292a(), Call.Parameters.DEFAULT_CAMERA_ZOOM, zoomableContentScope.getF48293b(), zoomableContentScope.getF48294c(), Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, null, 0, 524260);
        Alignment.f8582a.getClass();
        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
        int iHashCode = Long.hashCode(composer2.getT());
        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
        Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierC);
        ComposeUiNode.b0.getClass();
        Function0 function0 = ComposeUiNode.Companion.f9641b;
        if (composer2.getF7976a() == null) {
            ComposablesKt.b();
            throw null;
        }
        composer2.B();
        if (composer2.getS()) {
            composer2.C(function0);
        } else {
            composer2.o();
        }
        Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
        Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
        Updater.b(composer2, ComposeUiNode.Companion.f9645h);
        Updater.c(composer2, modifierC2, ComposeUiNode.Companion.d);
        if (productBackground != null) {
            composer = composer2;
            ImageKt.a(PainterResources_androidKt.a(ProductUtils.b(str, productBackground, ProductUtils.ProductImageRatio.R1_1), composer2, 0), null, pq0.j(-92816328, composer2, "SingleImageViewer$lambda$1").o(SizeKt.f5052c), null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, composer, 440, 120);
            composer.F();
        } else {
            composer = composer2;
            composer.L(-92488193);
            composer.F();
        }
        Modifier modifierG = BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("SingleImageViewer$lambda$1"), Alignment.Companion.f8587f);
        ContentScale.f9447a.getClass();
        Composer composer3 = composer;
        ImageLoaderKt.b(modifierG, str, ContentScale.Companion.f9451e, StringResources_androidKt.c(composer, R.string.content_description_product_image), null, 0, false, null, null, null, composer3, KyberEngine.KyberPolyBytes, 2032);
        composer3.r();
        return Unit.f71739a;
    }

    private final Object i(Object obj, Object obj2, Object obj3) {
        int i2;
        int i3;
        Spannable spannable = (Spannable) this.f76533c;
        a aVar = (a) this.d;
        SpanStyle spanStyle = (SpanStyle) obj;
        int iIntValue = ((Integer) obj2).intValue();
        int iIntValue2 = ((Integer) obj3).intValue();
        FontFamily fontFamily = spanStyle.fontFamily;
        FontWeight fontWeight = spanStyle.fontWeight;
        if (fontWeight == null) {
            FontWeight.f10727c.getClass();
            fontWeight = FontWeight.f10730h;
        }
        FontStyle fontStyle = spanStyle.fontStyle;
        if (fontStyle != null) {
            i2 = fontStyle.f10717a;
        } else {
            FontStyle.f10715b.getClass();
            i2 = 0;
        }
        FontStyle fontStyle2 = new FontStyle(i2);
        FontSynthesis fontSynthesis = spanStyle.fontSynthesis;
        if (fontSynthesis != null) {
            i3 = fontSynthesis.f10721a;
        } else {
            FontSynthesis.f10718b.getClass();
            i3 = FontSynthesis.f10720e;
        }
        spannable.setSpan(new TypefaceSpan((Typeface) aVar.g(fontFamily, fontWeight, fontStyle2, new FontSynthesis(i3))), iIntValue, iIntValue2, 33);
        return Unit.f71739a;
    }

    private final Object j(Object obj, Object obj2, Object obj3) {
        Composer composer;
        Composer composer2;
        Modifier modifier = (Modifier) this.f76533c;
        ThemeUiModel themeUiModel = (ThemeUiModel) this.d;
        Composer composer3 = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        Modifier modifierO = modifier.o(new DTFunctionNameModifier("StaggeredGridView_xYaah8o$lambda$2$0$1"));
        ((LazyGridItemScope) obj).getClass();
        if (composer3.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierJ = PaddingKt.j(SizeKt.d(modifierO, 1.0f), LVAppDesignKitTheme.l(composer3).g, LVAppDesignKitTheme.l(composer3).f48419i);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, composer3, 48);
            int iHashCode = Long.hashCode(composer3.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
            Modifier modifierC = ComposedModifierKt.c(composer3, modifierJ);
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
            Updater.c(composer3, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(composer3, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
            Updater.c(composer3, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(composer3, ComposeUiNode.Companion.f9645h);
            Updater.c(composer3, modifierC, ComposeUiNode.Companion.d);
            String str = themeUiModel != null ? themeUiModel.f55436b : null;
            if (str == null) {
                composer3.L(-2016880518);
                composer3.F();
                composer = composer3;
            } else {
                Modifier modifierE = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(PaddingKt.m(pq0.j(-2016880517, composer3, "StaggeredGridView_xYaah8o$lambda$2$0$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48417f, 7), "thematicPlp_staggeredGridTitle_text");
                TextAlign.f10959b.getClass();
                int i2 = TextAlign.f10961e;
                TextKt.c(str, modifierE, ColorHelperKt.a(themeUiModel.f55438e, composer3), 0L, null, 0L, null, new TextAlign(i2), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer3).f48424c, composer3, 0, 0, 130040);
                composer = composer3;
                composer.F();
            }
            String str2 = themeUiModel != null ? themeUiModel.f55437c : null;
            if (str2 == null) {
                composer.L(-2016308010);
                composer.F();
                composer2 = composer;
            } else {
                composer.L(-2016308009);
                Modifier modifierE2 = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(new DTFunctionNameModifier("StaggeredGridView_xYaah8o$lambda$2$0$1"), "thematicPlp_staggeredGridDescription_text");
                TextAlign.f10959b.getClass();
                composer2 = composer;
                TextKt.c(str2, modifierE2, ColorHelperKt.a(themeUiModel.f55438e, composer), 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).f48429j, composer2, 0, 0, 130040);
                composer2.F();
            }
            composer2.r();
        } else {
            composer3.D();
        }
        return Unit.f71739a;
    }

    private final Object k(Object obj, Object obj2, Object obj3) {
        Function0 function0 = (Function0) this.f76533c;
        WishlistSummaryUiModel wishlistSummaryUiModel = (WishlistSummaryUiModel) this.d;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        float f2 = StoreModeLevel1ScreenKt.f64871a;
        ((LazyItemScope) obj).getClass();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVPushCardKt.a(PaddingKt.m(PaddingKt.k(new DTFunctionNameModifier("StoreModeLevel1Content$lambda$0$0$1"), LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48417f, 7), false, function0, ComposableLambdaKt.b(-1040301736, new xe0(wishlistSummaryUiModel, 17), composer), composer, 3072, 2);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object m(Object obj, Object obj2, Object obj3) {
        StoreModeCategoryL1UiModel storeModeCategoryL1UiModel = (StoreModeCategoryL1UiModel) this.f76533c;
        Function1 function1 = (Function1) this.d;
        PaddingValues paddingValues = (PaddingValues) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        paddingValues.getClass();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(paddingValues) ? 4 : 2;
        }
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierB = WindowInsetsPadding_androidKt.b(PaddingKt.h(SizeKt.d(new DTFunctionNameModifier("StoreModeLevel2Screen$lambda$4"), 1.0f), paddingValues));
            boolean zY = composer.y(storeModeCategoryL1UiModel) | composer.K(function1);
            Object objX = composer.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new rp0(storeModeCategoryL1UiModel, function1, 28);
                composer.q(objX);
            }
            LazyDslKt.a(modifierB, null, null, null, null, null, false, null, (Function1) objX, composer, 0, 510);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:205:0x07a2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:206:0x07a4  */
    /* JADX WARN: Code duplicated, block: B:207:0x07a7  */
    /* JADX WARN: Code duplicated, block: B:295:0x0a2e  */
    /* JADX WARN: Code duplicated, block: B:298:0x0a34  */
    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        Object next;
        ModelSizeVariationUiModel modelSizeVariationUiModel;
        String str;
        String str2;
        String str3;
        Composer composer;
        SnapshotStateList snapshotStateList;
        int i2 = this.f76532b;
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        String str4 = null;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        boolean z = false;
        Object obj4 = this.d;
        Object obj5 = this.f76533c;
        switch (i2) {
            case 0:
                OrderViewState orderViewState = (OrderViewState) obj5;
                Function3 function3 = (Function3) obj4;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer2 = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((iIntValue & 6) == 0) {
                    iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                }
                if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    if (orderViewState.f60374a != null) {
                        composer2.L(-1548695851);
                        OrderListScreenKt.a(PaddingKt.h(new DTFunctionNameModifier("OrderListScreen$lambda$1"), paddingValues), orderViewState.f60374a, orderViewState.f60379h, orderViewState.f60382k.f60278c, function3, composer2, 0, 0);
                        composer2.F();
                    } else {
                        composer2.L(-1548378721);
                        composer2.F();
                    }
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 1:
                ConfirmReturnResponseUiModel confirmReturnResponseUiModel = (ConfirmReturnResponseUiModel) obj5;
                Function0 function0 = (Function0) obj4;
                Composer composer3 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    if (confirmReturnResponseUiModel == null || (confirmReturnResponseUiModel instanceof ConfirmReturnResponseUiModel.Loading)) {
                        composer3.L(1439766823);
                        OrderReturnOrExchangeComponentsKt.a(composer3, 0);
                        composer3.F();
                    } else if (confirmReturnResponseUiModel instanceof ConfirmReturnResponseUiModel.Validated) {
                        composer3.L(1439769611);
                        OrderReturnOrExchangeComponentsKt.m(0, 8, composer3, StringResources_androidKt.c(composer3, R.string.return_an_order_confirmation_title), StringResources_androidKt.c(composer3, R.string.return_an_order_confirmation_description), null, function0);
                        composer3.F();
                    } else {
                        if (!(confirmReturnResponseUiModel instanceof ConfirmReturnResponseUiModel.PartiallyValidated)) {
                            throw o60.v(composer3, 1439764292);
                        }
                        composer3.L(1439780836);
                        OrderReturnOrExchangeComponentsKt.m(0, 0, composer3, StringResources_androidKt.c(composer3, R.string.return_an_order_confirmation_partial_success_title), StringResources_androidKt.c(composer3, R.string.return_an_order_confirmation_partial_success_description), StringResources_androidKt.c(composer3, R.string.return_an_order_partial_error), function0);
                        composer3.F();
                    }
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 2:
                ExchangeSubmitResponseUiModel exchangeSubmitResponseUiModel = (ExchangeSubmitResponseUiModel) obj5;
                Function0 function1 = (Function0) obj4;
                Composer composer4 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer4.p(iIntValue3 & 1, (iIntValue3 & 17) != 16)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    if (exchangeSubmitResponseUiModel == null || (exchangeSubmitResponseUiModel instanceof ExchangeSubmitResponseUiModel.Loading)) {
                        composer4.L(2066393631);
                        OrderReturnOrExchangeComponentsKt.a(composer4, 0);
                        composer4.F();
                    } else if (exchangeSubmitResponseUiModel instanceof ExchangeSubmitResponseUiModel.Success) {
                        composer4.L(2066396373);
                        OrderReturnOrExchangeComponentsKt.m(0, 8, composer4, StringResources_androidKt.c(composer4, R.string.exchange_confirmation_title), StringResources_androidKt.c(composer4, R.string.exchange_confirmation_description), null, function1);
                        composer4.F();
                    } else {
                        composer4.L(-365945355);
                        composer4.F();
                    }
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 3:
                OrderReturnOrExchangeViewState orderReturnOrExchangeViewState = (OrderReturnOrExchangeViewState) obj5;
                Function0 function2 = (Function0) obj4;
                Composer composer5 = (Composer) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer5.p(iIntValue4 & 1, (iIntValue4 & 17) != 16)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    OrderReturnOrExchangeReasonScreenKt.c(orderReturnOrExchangeViewState, function2, composer5, 0);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 4:
                OsaLocationFormViewState osaLocationFormViewState = (OsaLocationFormViewState) obj5;
                Function0 function4 = (Function0) obj4;
                Composer composer6 = (Composer) obj2;
                ((Integer) obj3).getClass();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                Modifier modifierB = WindowInsetsPadding_androidKt.b(BackgroundKt.b(tr.d("OsaLocationFormFooter$lambda$2", 1.0f), LVAppDesignKitTheme.c(composer6).f48361b.f48374a, RectangleShapeKt.f8913a));
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                int iHashCode = Long.hashCode(composer6.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer6.n();
                Modifier modifierC = ComposedModifierKt.c(composer6, modifierB);
                ComposeUiNode.b0.getClass();
                Function0 function5 = ComposeUiNode.Companion.f9641b;
                if (composer6.getF7976a() == null) {
                    ComposablesKt.b();
                    throw null;
                }
                composer6.B();
                if (composer6.getS()) {
                    composer6.C(function5);
                } else {
                    composer6.o();
                }
                Updater.c(composer6, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(composer6, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                Updater.c(composer6, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(composer6, ComposeUiNode.Companion.f9645h);
                Updater.c(composer6, modifierC, ComposeUiNode.Companion.d);
                LVButtonKt.b(0, 376, composer6, com.vuitton.android.designkit.ui.common.ModifierExtKt.e(PaddingKt.l(tr.d("OsaLocationFormFooter$lambda$2", 1.0f), LVAppDesignKitTheme.l(composer6).f48416e, LVAppDesignKitTheme.l(composer6).f48415c, LVAppDesignKitTheme.l(composer6).f48416e, LVAppDesignKitTheme.l(composer6).f48417f), "osa_appointmentDetailNext_button"), LVAppDesignKitTheme.b(composer6).f48446a, null, null, StringResources_androidKt.c(composer6, R.string.dr_card1_cta_next), function4, false, osaLocationFormViewState.o, false);
                composer6.r();
                return Unit.f71739a;
            case 5:
                PagerState pagerState = (PagerState) obj5;
                LayoutDirection layoutDirection = (LayoutDirection) obj4;
                float fFloatValue = ((Float) obj).floatValue();
                float fFloatValue2 = ((Float) obj2).floatValue();
                float fFloatValue3 = ((Float) obj3).floatValue();
                boolean zB = PagerSnapLayoutInfoProviderKt.b(pagerState, fFloatValue);
                if (pagerState.n().getF5742e() == Orientation.Vertical || layoutDirection == LayoutDirection.Ltr) {
                    z = zB;
                } else if (!zB) {
                    z = true;
                }
                int f5740b = pagerState.n().getF5740b();
                float fA = f5740b == 0 ? 0.0f : PagerSnapLayoutInfoProviderKt.a(pagerState) / f5740b;
                float f3 = fA - ((int) fA);
                int iA = LazyListSnapLayoutInfoProviderKt.a(fFloatValue, pagerState.n);
                FinalSnappingItem.f4845a.getClass();
                if (iA == 0) {
                    if (Math.abs(f3) <= 0.5f ? Math.abs(fA) < Math.abs(Math.min(pagerState.n.u1(PagerStateKt.f5784a), pagerState.p() / 2.0f) / pagerState.p()) ? Math.abs(fFloatValue2) >= Math.abs(fFloatValue3) : !z : z) {
                        f2 = fFloatValue3;
                    } else {
                        f2 = fFloatValue2;
                    }
                } else if (iA == FinalSnappingItem.f4846b) {
                    f2 = fFloatValue3;
                } else if (iA == FinalSnappingItem.f4847c) {
                    f2 = fFloatValue2;
                }
                return Float.valueOf(f2);
            case 6:
                ProductUiModel productUiModel = (ProductUiModel) obj5;
                Function3 function6 = (Function3) obj4;
                Composer composer7 = (Composer) obj2;
                int iIntValue5 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer7.p(iIntValue5 & 1, (iIntValue5 & 17) != 16)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    PdpCustomizationContainerKt.c(PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(composer7).f48416e, LVAppDesignKitTheme.l(composer7).f48416e, LVAppDesignKitTheme.l(composer7).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), productUiModel.V, function6, composer7, 0);
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 7:
                PdpVirtualStudioConfigValues pdpVirtualStudioConfigValues = (PdpVirtualStudioConfigValues) obj5;
                Function1 function7 = (Function1) obj4;
                Composer composer8 = (Composer) obj2;
                int iIntValue6 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer8.p(iIntValue6 & 1, (iIntValue6 & 17) != 16)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    Modifier modifierM = PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(composer8).f48416e, LVAppDesignKitTheme.l(composer8).f48416e, LVAppDesignKitTheme.l(composer8).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                    String str5 = pdpVirtualStudioConfigValues.f61574a;
                    boolean zK = composer8.K(function7) | composer8.y(pdpVirtualStudioConfigValues);
                    Object objX = composer8.x();
                    if (zK || objX == composer$Companion$Empty$1) {
                        objX = new jm0(function7, pdpVirtualStudioConfigValues, 3);
                        composer8.q(objX);
                    }
                    VirtualStudioCardKt.a(modifierM, str5, (Function0) objX, composer8, 0);
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 8:
                ProductUiModel productUiModel2 = (ProductUiModel) obj5;
                Function1 function8 = (Function1) obj4;
                Composer composer9 = (Composer) obj2;
                int iIntValue7 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer9.p(iIntValue7 & 1, (iIntValue7 & 17) != 16)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    PdpDescriptionKt.a(PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(composer9).f48416e, LVAppDesignKitTheme.l(composer9).f48417f, LVAppDesignKitTheme.l(composer9).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), productUiModel2.f61740i, function8, composer9, 0);
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
            case 9:
                List list = (List) obj5;
                Function1 function9 = (Function1) obj4;
                Composer composer10 = (Composer) obj2;
                int iIntValue8 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer10.p(iIntValue8 & 1, (iIntValue8 & 17) != 16)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    PdpCareAndSustainabilityKt.a(PaddingKt.k(new DTFunctionNameModifier("PdpMainView$lambda$3$0$12"), LVAppDesignKitTheme.l(composer10).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), list, function9, composer10, 0, 0);
                } else {
                    composer10.D();
                }
                return Unit.f71739a;
            case 10:
                AICompanionTracker aICompanionTracker = (AICompanionTracker) obj5;
                Function0 function10 = (Function0) obj4;
                Composer composer11 = (Composer) obj2;
                int iIntValue9 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer11.p(iIntValue9 & 1, (iIntValue9 & 17) != 16)) {
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    Modifier modifierM2 = PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(composer11).f48416e, LVAppDesignKitTheme.l(composer11).f48417f, LVAppDesignKitTheme.l(composer11).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                    PushCardType pushCardType = PushCardType.DEFAULT;
                    String strC = StringResources_androidKt.c(composer11, R.string.companion_push_card_title);
                    String strC2 = StringResources_androidKt.c(composer11, R.string.companion_push_card_description);
                    IconUiModelKt.a(IconUiModel.AI_COMPANION);
                    Integer numValueOf = Integer.valueOf(R.drawable.ic_lv_ai);
                    boolean zY = composer11.y(aICompanionTracker) | composer11.K(function10);
                    Object objX2 = composer11.x();
                    if (zY || objX2 == composer$Companion$Empty$1) {
                        objX2 = new j(aICompanionTracker, function10, 5);
                        composer11.q(objX2);
                    }
                    PushCardKt.a(modifierM2, strC, strC2, false, numValueOf, null, pushCardType, (Function0) objX2, composer11, 1769472);
                } else {
                    composer11.D();
                }
                return Unit.f71739a;
            case 11:
                ProductUiModel productUiModel3 = (ProductUiModel) obj5;
                Function0 function11 = (Function0) obj4;
                Composer composer12 = (Composer) obj2;
                int iIntValue10 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer12.p(iIntValue10 & 1, (iIntValue10 & 17) != 16)) {
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    Iterator it = productUiModel3.Z.iterator();
                    do {
                        if (it.hasNext()) {
                            next = it.next();
                            str2 = ((ModelSizeVariationUiModel) next).f61533b;
                            str3 = productUiModel3.f61735b;
                            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                        } else {
                            next = null;
                        }
                        modelSizeVariationUiModel = (ModelSizeVariationUiModel) next;
                        Modifier modifierK = PaddingKt.k(new DTFunctionNameModifier("PdpMainView$lambda$3$0$4"), LVAppDesignKitTheme.l(composer12).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                        str = productUiModel3.h0;
                        if (str == null) {
                            str4 = str;
                        } else if (modelSizeVariationUiModel != null) {
                            str4 = modelSizeVariationUiModel.f61535e;
                        }
                        ContextualSizingPushCardKt.a(modifierK, str4, function11, composer12, 0);
                        OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                    } while (!str2.equals(str3));
                    modelSizeVariationUiModel = (ModelSizeVariationUiModel) next;
                    Modifier modifierK2 = PaddingKt.k(new DTFunctionNameModifier("PdpMainView$lambda$3$0$4"), LVAppDesignKitTheme.l(composer12).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    str = productUiModel3.h0;
                    if (str == null) {
                        str4 = str;
                    } else if (modelSizeVariationUiModel != null) {
                        str4 = modelSizeVariationUiModel.f61535e;
                    }
                    ContextualSizingPushCardKt.a(modifierK2, str4, function11, composer12, 0);
                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                } else {
                    composer12.D();
                }
                return Unit.f71739a;
            case 12:
                PersonalSelectionsCurationAdvisorViewState personalSelectionsCurationAdvisorViewState = (PersonalSelectionsCurationAdvisorViewState) obj5;
                Function0 function12 = (Function0) obj4;
                PaddingValues paddingValues2 = (PaddingValues) obj;
                Composer composer13 = (Composer) obj2;
                int iIntValue11 = ((Integer) obj3).intValue();
                paddingValues2.getClass();
                if ((iIntValue11 & 6) == 0) {
                    iIntValue11 |= composer13.K(paddingValues2) ? 4 : 2;
                }
                if (composer13.p(iIntValue11 & 1, (iIntValue11 & 19) != 18)) {
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                    if (personalSelectionsCurationAdvisorViewState instanceof PersonalSelectionsCurationAdvisorViewState.Loading) {
                        ProgressViewKt.a(PaddingKt.h(pq0.j(-522641350, composer13, "PersonalSelectionsCurationAdvisorComposable$lambda$1").o(SizeKt.f5052c), paddingValues2), 0L, false, composer13, 0, 6);
                        composer13.F();
                    } else if (personalSelectionsCurationAdvisorViewState instanceof PersonalSelectionsCurationAdvisorViewState.Expired) {
                        composer13.L(-522326359);
                        LVEmptyViewKt.e(PaddingKt.h(new DTFunctionNameModifier("PersonalSelectionsCurationAdvisorComposable$lambda$1"), paddingValues2), null, StringResources_androidKt.c(composer13, R.string.ips_expired_recommendation), null, null, null, null, composer13, 0, 506);
                        composer13.F();
                    } else {
                        if (!(personalSelectionsCurationAdvisorViewState instanceof PersonalSelectionsCurationAdvisorViewState.Error)) {
                            throw o60.v(composer13, -1679429419);
                        }
                        composer13.L(-521989048);
                        LVEmptyViewKt.e(PaddingKt.h(new DTFunctionNameModifier("PersonalSelectionsCurationAdvisorComposable$lambda$1"), paddingValues2), null, StringResources_androidKt.c(composer13, R.string.recommendation_error_ws_title), StringResources_androidKt.c(composer13, R.string.recommendation_error_ws_subtitle), null, StringResources_androidKt.c(composer13, R.string.button_try_again), function12, composer13, 0, 114);
                        composer13.F();
                    }
                } else {
                    composer13.D();
                }
                return Unit.f71739a;
            case 13:
                Function1 function13 = (Function1) obj5;
                SelectionAssetUiModel selectionAssetUiModel = (SelectionAssetUiModel) obj4;
                Composer composer14 = (Composer) obj2;
                int iIntValue12 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer14.p(iIntValue12 & 1, (iIntValue12 & 17) != 16)) {
                    OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                    Modifier modifierO = new DTFunctionNameModifier("PersonalSelectionsCurationAdvisorLookScreen$lambda$1$0$0").o(SizeKt.f5052c);
                    boolean zK2 = composer14.K(function13) | composer14.y(selectionAssetUiModel);
                    Object objX3 = composer14.x();
                    if (zK2 || objX3 == composer$Companion$Empty$1) {
                        objX3 = new on0(1, selectionAssetUiModel, function13);
                        composer14.q(objX3);
                    }
                    Modifier modifierA = AspectRatioKt.a(com.vuitton.android.designkit.ui.common.ModifierExtKt.c(modifierO, false, null, null, (Function0) objX3, 31), 0.8f, true);
                    String str6 = selectionAssetUiModel.f62576a.f51780b.f51778b;
                    str6.getClass();
                    ContentScale.f9447a.getClass();
                    ImageLoaderKt.b(modifierA, str6, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, composer14, KyberEngine.KyberPolyBytes, 2040);
                } else {
                    composer14.D();
                }
                return Unit.f71739a;
            case 14:
                Modifier modifierE = (Modifier) obj5;
                Bitmap bitmap = (Bitmap) obj4;
                PaddingValues paddingValues3 = (PaddingValues) obj;
                Composer composer15 = (Composer) obj2;
                int iIntValue13 = ((Integer) obj3).intValue();
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "QRCode2DScreen$lambda$1");
                }
                paddingValues3.getClass();
                if ((iIntValue13 & 6) == 0) {
                    iIntValue13 |= composer15.K(paddingValues3) ? 4 : 2;
                }
                if (composer15.p(iIntValue13 & 1, (iIntValue13 & 19) != 18)) {
                    OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                    Modifier modifierK3 = PaddingKt.k(PaddingKt.h(modifierE, paddingValues3).o(SizeKt.f5052c), LVAppDesignKitTheme.l(composer15).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, composer15, 54);
                    int iHashCode2 = Long.hashCode(composer15.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer15.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer15, modifierK3);
                    ComposeUiNode.b0.getClass();
                    Function0 function14 = ComposeUiNode.Companion.f9641b;
                    if (composer15.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer15.B();
                    if (composer15.getS()) {
                        composer15.C(function14);
                    } else {
                        composer15.o();
                    }
                    Updater.c(composer15, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer15, persistentCompositionLocalMapN2, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer15, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                    Updater.b(composer15, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer15, modifierC2, ComposeUiNode.Companion.d);
                    String strC3 = StringResources_androidKt.c(composer15, R.string.mylv_store_user_pass_lvpass_title);
                    Modifier modifierM3 = PaddingKt.m(new DTFunctionNameModifier("QRCode2DScreen$lambda$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer15).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer15).f48415c, 5);
                    TextStyle textStyle = LVAppDesignKitTheme.n(composer15).f48429j;
                    TextAlign.f10959b.getClass();
                    int i3 = TextAlign.f10961e;
                    TextKt.c(strC3, modifierM3, 0L, 0L, null, 0L, null, new TextAlign(i3), 0L, 0, false, 0, 0, null, textStyle, composer15, 0, 0, 130044);
                    TextKt.c(StringResources_androidKt.c(composer15, R.string.mylv_store_user_pass_lvpass_description), PaddingKt.m(new DTFunctionNameModifier("QRCode2DScreen$lambda$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer15).g, 7), Color.b(0.7f, MaterialTheme.a(composer15).q), 0L, null, 0L, null, new TextAlign(i3), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer15).m, composer15, 0, 0, 130040);
                    Modifier modifierB2 = ShadowKt.b(AspectRatioKt.a(SizeKt.d(new DTFunctionNameModifier("QRCode2DScreen$lambda$1"), 1.0f), 0.6301653f, false), LVAppDesignKitTheme.d(composer15).f48388h, composer15, 6, 1);
                    AndroidImageBitmap androidImageBitmap = new AndroidImageBitmap(bitmap);
                    String strC4 = StringResources_androidKt.c(composer15, R.string.alt_show_lv_pass);
                    ContentScale.f9447a.getClass();
                    ImageKt.b(androidImageBitmap, strC4, modifierB2, ContentScale.Companion.f9453h, composer15, 24576);
                    composer15.r();
                } else {
                    composer15.D();
                }
                return Unit.f71739a;
            case 15:
                HeaderUiModel headerUiModel = (HeaderUiModel) obj5;
                String str7 = headerUiModel.f64073b;
                Context context = (Context) obj4;
                Composer composer16 = (Composer) obj2;
                int iIntValue14 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer16.p(iIntValue14 & 1, (iIntValue14 & 17) != 16)) {
                    OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                    if (str7 != null) {
                        composer16.L(-831800626);
                        RepairDetailBffScreenKt.g(StringResources_androidKt.c(composer16, R.string.dr_product), str7, composer16, 0);
                        composer16.F();
                    } else {
                        composer16.L(-831688189);
                        composer16.F();
                    }
                    RepairDetailBffScreenKt.g(StringResources_androidKt.c(composer16, R.string.dr_repair_type_of_request), StringResourceUiModelKt.a(headerUiModel.f64074c, context), composer16, 0);
                    RepairDetailBffScreenKt.g(StringResources_androidKt.c(composer16, R.string.dr_repair_date_of_initiation), headerUiModel.d, composer16, 0);
                } else {
                    composer16.D();
                }
                return Unit.f71739a;
            case 16:
                ShippingInformationUiModel shippingInformationUiModel = (ShippingInformationUiModel) obj5;
                Function0 function15 = (Function0) obj4;
                Composer composer17 = (Composer) obj2;
                int iIntValue15 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer17.p(iIntValue15 & 1, (iIntValue15 & 17) != 16)) {
                    OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                    if (shippingInformationUiModel.d != null) {
                        LVDisclaimerKt.a(pq0.h(1.0f, -819224183, composer17, "ShippingAddress$lambda$0"), shippingInformationUiModel.d, null, 0L, null, null, composer17, 6, 60);
                        composer = composer17;
                        composer.F();
                    } else {
                        composer = composer17;
                        composer.L(-819083877);
                        composer.F();
                    }
                    RepairDetailBffScreenKt.m("Address (hardcoded)", shippingInformationUiModel.f64093c, composer, 6);
                    if (shippingInformationUiModel.f64094e) {
                        composer.L(-818931047);
                        LVLinkKt.a(null, "Change delivery address (hardcoded)", false, null, false, function15, composer, 48, 29);
                        composer.F();
                    } else {
                        composer.L(-818775365);
                        composer.F();
                    }
                } else {
                    composer17.D();
                }
                return Unit.f71739a;
            case 17:
                AssessmentUiModel assessmentUiModel = (AssessmentUiModel) obj5;
                Function0 function16 = (Function0) obj4;
                Composer composer18 = (Composer) obj2;
                int iIntValue16 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer18.p(iIntValue16 & 1, (iIntValue16 & 17) != 16)) {
                    OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                    RepairDetailBffScreenKt.e(assessmentUiModel.f64026c, function16, composer18, 0);
                    composer18.L(-1906292586);
                    for (Pair pair : assessmentUiModel.d) {
                        Modifier modifierD = tr.d("Assessment$lambda$0", 1.0f);
                        Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
                        Alignment.f8582a.getClass();
                        RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$1, Alignment.Companion.f8591k, composer18, 6);
                        OpaqueKey opaqueKey20 = ComposerKt.f7940a;
                        int iHashCode3 = Long.hashCode(composer18.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer18.n();
                        Modifier modifierC3 = ComposedModifierKt.c(composer18, modifierD);
                        ComposeUiNode.b0.getClass();
                        Function0 function17 = ComposeUiNode.Companion.f9641b;
                        if (composer18.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer18.B();
                        if (composer18.getS()) {
                            composer18.C(function17);
                        } else {
                            composer18.o();
                        }
                        Updater.c(composer18, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer18, persistentCompositionLocalMapN3, ComposeUiNode.Companion.f9643e);
                        Updater.c(composer18, Integer.valueOf(iHashCode3), ComposeUiNode.Companion.g);
                        Updater.b(composer18, ComposeUiNode.Companion.f9645h);
                        Updater.c(composer18, modifierC3, ComposeUiNode.Companion.d);
                        Composer composer19 = composer18;
                        TextKt.c((String) pair.f71705b, null, LVAppDesignKitTheme.c(composer18).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer18).l, composer19, 0, 0, 131066);
                        TextKt.c((String) pair.f71706c, null, LVAppDesignKitTheme.c(composer19).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer19).l, composer19, 0, 0, 131066);
                        composer19.r();
                        DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(composer19).f48361b.q, composer19, 0, 3);
                        composer18 = composer19;
                    }
                    composer18.F();
                    Modifier modifierD2 = SizeKt.d(new DTFunctionNameModifier("Assessment$lambda$0"), 1.0f);
                    Arrangement$SpaceBetween$1 arrangement$SpaceBetween$2 = Arrangement.g;
                    Alignment.f8582a.getClass();
                    RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(arrangement$SpaceBetween$2, Alignment.Companion.f8591k, composer18, 6);
                    OpaqueKey opaqueKey21 = ComposerKt.f7940a;
                    int iHashCode4 = Long.hashCode(composer18.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer18.n();
                    Modifier modifierC4 = ComposedModifierKt.c(composer18, modifierD2);
                    ComposeUiNode.b0.getClass();
                    Function0 function18 = ComposeUiNode.Companion.f9641b;
                    if (composer18.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer18.B();
                    if (composer18.getS()) {
                        composer18.C(function18);
                    } else {
                        composer18.o();
                    }
                    Updater.c(composer18, rowMeasurePolicyA2, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer18, persistentCompositionLocalMapN4, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer18, Integer.valueOf(iHashCode4), ComposeUiNode.Companion.g);
                    Updater.b(composer18, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer18, modifierC4, ComposeUiNode.Companion.d);
                    Composer composer20 = composer18;
                    TextKt.c(StringResources_androidKt.c(composer18, R.string.dr_prass_total), null, LVAppDesignKitTheme.c(composer18).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer18).f48430k, composer20, 0, 0, 131066);
                    TextKt.c(assessmentUiModel.f64027e, null, LVAppDesignKitTheme.c(composer20).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer20).f48430k, composer20, 0, 0, 131066);
                    composer20.r();
                    DividerKt.a(PaddingKt.m(new DTFunctionNameModifier("Assessment$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer20).f48416e, 7), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(composer20).f48361b.q, composer20, 0, 2);
                    if (assessmentUiModel.f64028f != null) {
                        LVDisclaimerKt.a(pq0.h(1.0f, 1036021050, composer20, "Assessment$lambda$0"), assessmentUiModel.f64028f, null, 0L, null, null, composer20, 6, 60);
                        composer20.F();
                    } else {
                        composer20.L(1036164239);
                        composer20.F();
                    }
                } else {
                    composer18.D();
                }
                return Unit.f71739a;
            case 18:
                return a(obj, obj2, obj3);
            case 19:
                return b(obj, obj2, obj3);
            case 20:
                return c(obj, obj2, obj3);
            case 21:
                return d(obj, obj2, obj3);
            case 22:
                return e(obj, obj2, obj3);
            case 23:
                WishlistViewState wishlistViewState = (WishlistViewState) obj5;
                String str8 = (String) obj4;
                Composer composer21 = (Composer) obj2;
                int iIntValue17 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer21.p(iIntValue17 & 1, (iIntValue17 & 17) != 16)) {
                    OpaqueKey opaqueKey22 = ComposerKt.f7940a;
                    WishlistUiModel wishlistUiModel = wishlistViewState.d;
                    SharedWishlistScreenKt.a((wishlistUiModel == null || (snapshotStateList = wishlistUiModel.f65755a) == null) ? 0 : snapshotStateList.size(), 0, composer21, str8);
                } else {
                    composer21.D();
                }
                return Unit.f71739a;
            case 24:
                return f(obj, obj2, obj3);
            case 25:
                return i(obj, obj2, obj3);
            case 26:
                return j(obj, obj2, obj3);
            case 27:
                return k(obj, obj2, obj3);
            case 28:
                return m(obj, obj2, obj3);
            default:
                StoreModeCategoryL2UiModel storeModeCategoryL2UiModel = (StoreModeCategoryL2UiModel) obj5;
                Function1 function19 = (Function1) obj4;
                PaddingValues paddingValues4 = (PaddingValues) obj;
                Composer composer22 = (Composer) obj2;
                int iIntValue18 = ((Integer) obj3).intValue();
                paddingValues4.getClass();
                if ((iIntValue18 & 6) == 0) {
                    iIntValue18 |= composer22.K(paddingValues4) ? 4 : 2;
                }
                if (composer22.p(iIntValue18 & 1, (iIntValue18 & 19) != 18)) {
                    OpaqueKey opaqueKey23 = ComposerKt.f7940a;
                    Modifier modifierB3 = WindowInsetsPadding_androidKt.b(PaddingKt.h(SizeKt.d(new DTFunctionNameModifier("StoreModeLevel3Screen$lambda$5"), 1.0f), paddingValues4));
                    boolean zY2 = composer22.y(storeModeCategoryL2UiModel) | composer22.K(function19);
                    Object objX4 = composer22.x();
                    if (zY2 || objX4 == composer$Companion$Empty$1) {
                        objX4 = new rp0(storeModeCategoryL2UiModel, function19, 29);
                        composer22.q(objX4);
                    }
                    LazyDslKt.a(modifierB3, null, null, null, null, null, false, null, (Function1) objX4, composer22, 0, 510);
                } else {
                    composer22.D();
                }
                return Unit.f71739a;
        }
    }
}
