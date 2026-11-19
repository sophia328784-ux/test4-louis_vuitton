package defpackage;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.SliderKt;
import androidx.compose.material3.SliderState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.ComposableSingletons$LVRadioButtonBlockKt;
import com.vuitton.android.designkit.components.components.LVRadioButtonBlockKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.ComposableSingletons$LVFloatingTopBarKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.ComposableSingletons$LVMediumTopBarKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.ComposableSingletons$LVStandardTopBarKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.FloatingTopBarType;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVFloatingTopBarKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVMediumTopBarKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.presentation.compose.components.ComposableSingletons$LVNotificationKt;
import com.vuitton.android.presentation.compose.components.ComposableSingletons$LVTimelineKt;
import com.vuitton.android.presentation.compose.components.LVNotificationKt;
import com.vuitton.android.presentation.compose.components.LVTimelineKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVFeedCompositionLocalProviderKt;
import com.vuitton.android.presentation.loading.ComposableSingletons$LvLoadingKt;
import com.vuitton.android.presentation.loading.LoadingMode;
import com.vuitton.android.presentation.loading.LvLoadingKt;
import com.vuitton.android.presentation.screen.account.myinformation.components.ComposableSingletons$MyInformationScreenKt;
import com.vuitton.android.presentation.screen.account.myinformation.components.MyInformationScreenKt;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInformationViewState;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.feed.components.ComposableSingletons$FeedDiscoverSuccessScreenKt;
import com.vuitton.android.presentation.screen.feed.components.ComposableSingletons$FeedForYouLoadingScreenKt;
import com.vuitton.android.presentation.screen.feed.components.ComposableSingletons$FeedForYouSuccessScreenKt;
import com.vuitton.android.presentation.screen.feed.components.FeedForYouLoadingScreenKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.Scene3DConfiguration;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.ComposableSingletons$Lv3dCardViewerComposableKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerComposableKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.ComposableSingletons$Lv3dViewerComposableKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerComposableKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerUiModel;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.components.ComposableSingletons$ModelSizeBottomBarKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.components.ModelSizeBottomBarKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ModelSizeVariationUiModel;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ModelSizeVariationUiModelKt;
import com.vuitton.android.presentation.screen.search.components.ComposableSingletons$HistoryComposableKt;
import com.vuitton.android.presentation.screen.search.components.HistoryComposableKt;
import com.vuitton.android.presentation.screen.search.mocks.HistoryMockKt;
import com.vuitton.android.presentation.screen.search.models.HistoryItemUiModel;
import com.vuitton.android.presentation.view.bottomsheets.ComposableSingletons$GenericBottomSheetKt;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function5;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class vn implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80616b;

    public /* synthetic */ vn(int i2) {
        this.f80616b = i2;
    }

    private final Object a(Object obj, Object obj2) {
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        ComposableSingletons$ModelSizeBottomBarKt composableSingletons$ModelSizeBottomBarKt = ComposableSingletons$ModelSizeBottomBarKt.f61485a;
        if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = composer.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new tn(29);
                composer.q(objX);
            }
            PagerState pagerStateB = PagerStateKt.b(0, (Function0) objX, composer, 390, 2);
            List list = ModelSizeVariationUiModelKt.f61537a;
            ModelSizeVariationUiModel modelSizeVariationUiModel = (ModelSizeVariationUiModel) CollectionsKt.B(list);
            Object objX2 = composer.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = EffectsKt.j(EmptyCoroutineContext.f71840b, composer);
                composer.q(objX2);
            }
            CoroutineScope coroutineScope = (CoroutineScope) objX2;
            Object objX3 = composer.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new wn(14);
                composer.q(objX3);
            }
            ModelSizeBottomBarKt.b(pagerStateB, null, list, modelSizeVariationUiModel, coroutineScope, (Function1) objX3, composer, ImageMetadata.EDGE_MODE, 2);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object b(Object obj, Object obj2) {
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        ComposableSingletons$MyInformationScreenKt composableSingletons$MyInformationScreenKt = ComposableSingletons$MyInformationScreenKt.f52593a;
        if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer).w, composer, 0), StringResources_androidKt.c(composer, R.string.alt_edit), null, 0L, composer, 8, 12);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object c(Object obj, Object obj2) {
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        ComposableSingletons$MyInformationScreenKt composableSingletons$MyInformationScreenKt = ComposableSingletons$MyInformationScreenKt.f52593a;
        if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer).w, composer, 0), StringResources_androidKt.c(composer, R.string.alt_edit), null, 0L, composer, 8, 12);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f80616b;
        int i3 = 20;
        int i4 = 19;
        BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
        int i5 = 25;
        int i6 = 4;
        int i7 = 18;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        boolean z = false;
        int i8 = 2;
        int i9 = 1;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                ComposableSingletons$FeedDiscoverSuccessScreenKt composableSingletons$FeedDiscoverSuccessScreenKt = ComposableSingletons$FeedDiscoverSuccessScreenKt.f57753a;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    LVFeedCompositionLocalProviderKt.a(ComposableSingletons$FeedDiscoverSuccessScreenKt.f57756e, composer, 6);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                ComposableSingletons$FeedDiscoverSuccessScreenKt composableSingletons$FeedDiscoverSuccessScreenKt2 = ComposableSingletons$FeedDiscoverSuccessScreenKt.f57753a;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    LVFeedCompositionLocalProviderKt.a(ComposableSingletons$FeedDiscoverSuccessScreenKt.f57757f, composer2, 6);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 2:
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                ComposableSingletons$FeedForYouLoadingScreenKt composableSingletons$FeedForYouLoadingScreenKt = ComposableSingletons$FeedForYouLoadingScreenKt.f57762a;
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    FeedForYouLoadingScreenKt.a("John", "Monday, June 10", composer3, 54);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 3:
                ComposableSingletons$FeedForYouSuccessScreenKt composableSingletons$FeedForYouSuccessScreenKt = ComposableSingletons$FeedForYouSuccessScreenKt.f57765a;
                ((String) obj).getClass();
                ((String) obj2).getClass();
                return Unit.f71739a;
            case 4:
                Composer composer4 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                ComposableSingletons$FeedForYouSuccessScreenKt composableSingletons$FeedForYouSuccessScreenKt2 = ComposableSingletons$FeedForYouSuccessScreenKt.f57765a;
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    LVFeedCompositionLocalProviderKt.a(ComposableSingletons$FeedForYouSuccessScreenKt.f57768e, composer4, 6);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 5:
                Composer composer5 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                ComposableSingletons$GenericBottomSheetKt composableSingletons$GenericBottomSheetKt = ComposableSingletons$GenericBottomSheetKt.f65882a;
                if (composer5.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer5).q, composer5, 0), StringResources_androidKt.c(composer5, R.string.alt_close), null, 0L, composer5, 8, 12);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 6:
                Composer composer6 = (Composer) obj;
                int iIntValue6 = ((Integer) obj2).intValue();
                ComposableSingletons$HistoryComposableKt composableSingletons$HistoryComposableKt = ComposableSingletons$HistoryComposableKt.f64161a;
                if (composer6.p(iIntValue6 & 1, (iIntValue6 & 3) != 2)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    HistoryItemUiModel.HistoryProductUiModel historyProductUiModel = (HistoryItemUiModel.HistoryProductUiModel) HistoryMockKt.f64234a.getF71699b();
                    Object objX = composer6.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new wn(9);
                        composer6.q(objX);
                    }
                    HistoryComposableKt.b(null, historyProductUiModel, (Function1) objX, composer6, KyberEngine.KyberPolyBytes, 1);
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 7:
                Composer composer7 = (Composer) obj;
                int iIntValue7 = ((Integer) obj2).intValue();
                ComposableSingletons$HistoryComposableKt composableSingletons$HistoryComposableKt2 = ComposableSingletons$HistoryComposableKt.f64161a;
                if (composer7.p(iIntValue7 & 1, (iIntValue7 & 3) != 2)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    HistoryItemUiModel.HistoryResearchUiModel historyResearchUiModel = (HistoryItemUiModel.HistoryResearchUiModel) HistoryMockKt.f64235b.getF71699b();
                    Object objX2 = composer7.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new wn(10);
                        composer7.q(objX2);
                    }
                    HistoryComposableKt.c(null, historyResearchUiModel, (Function1) objX2, composer7, KyberEngine.KyberPolyBytes, 1);
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 8:
                Composer composer8 = (Composer) obj;
                int iIntValue8 = ((Integer) obj2).intValue();
                ComposableSingletons$LVFloatingTopBarKt composableSingletons$LVFloatingTopBarKt = ComposableSingletons$LVFloatingTopBarKt.f48730a;
                if (composer8.p(iIntValue8 & 1, (iIntValue8 & 3) != 2)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("lambda__72885933$lambda$0");
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, composer8, 0);
                    int iHashCode = Long.hashCode(composer8.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer8.n();
                    Modifier modifierC = ComposedModifierKt.c(composer8, dTFunctionNameModifier);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer8.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer8.B();
                    if (composer8.getS()) {
                        composer8.C(function0);
                    } else {
                        composer8.o();
                    }
                    Function2 function2 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer8, columnMeasurePolicyA, function2);
                    Function2 function3 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer8, persistentCompositionLocalMapN, function3);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    Function2 function4 = ComposeUiNode.Companion.g;
                    Updater.c(composer8, numValueOf, function4);
                    Function1 function1 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer8, function1);
                    Function2 function5 = ComposeUiNode.Companion.d;
                    Updater.c(composer8, modifierC, function5);
                    FloatingTopBarType floatingTopBarType = FloatingTopBarType.Close;
                    LVFloatingTopBarKt.a(null, floatingTopBarType, null, null, StringResources_androidKt.c(composer8, R.string.alt_close), null, ComposableSingletons$LVFloatingTopBarKt.f48732c, null, composer8, 1572912, 173);
                    FloatingTopBarType floatingTopBarType2 = FloatingTopBarType.Back;
                    LVFloatingTopBarKt.a(null, floatingTopBarType2, null, null, StringResources_androidKt.c(composer8, R.string.alt_back), null, ComposableSingletons$LVFloatingTopBarKt.d, null, composer8, 1572912, 173);
                    Modifier modifierB = BackgroundKt.b(new DTFunctionNameModifier("lambda__72885933$lambda$0"), LVAppDesignKitTheme.c(composer8).f48361b.f48378f, rectangleShapeKt$RectangleShape$1);
                    ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, composer8, 0);
                    int iHashCode2 = Long.hashCode(composer8.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer8.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer8, modifierB);
                    if (composer8.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer8.B();
                    if (composer8.getS()) {
                        composer8.C(function0);
                    } else {
                        composer8.o();
                    }
                    Updater.c(composer8, columnMeasurePolicyA2, function2);
                    Updater.c(composer8, persistentCompositionLocalMapN2, function3);
                    cj.s(iHashCode2, composer8, function4, composer8, function1);
                    Updater.c(composer8, modifierC2, function5);
                    String strC = StringResources_androidKt.c(composer8, R.string.alt_close);
                    LVColorScheme lVColorScheme = LVColorScheme.INVERT;
                    LVFloatingTopBarKt.a(null, floatingTopBarType, null, lVColorScheme, strC, null, ComposableSingletons$LVFloatingTopBarKt.f48733e, null, composer8, 1575984, 165);
                    LVFloatingTopBarKt.a(null, floatingTopBarType2, null, lVColorScheme, StringResources_androidKt.c(composer8, R.string.alt_back), null, ComposableSingletons$LVFloatingTopBarKt.f48734f, null, composer8, 1575984, 165);
                    composer8.r();
                    composer8.r();
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 9:
                Composer composer9 = (Composer) obj;
                int iIntValue9 = ((Integer) obj2).intValue();
                ComposableSingletons$LVFloatingTopBarKt composableSingletons$LVFloatingTopBarKt2 = ComposableSingletons$LVFloatingTopBarKt.f48730a;
                if (composer9.p(iIntValue9 & 1, (iIntValue9 & 3) != 2)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("lambda__835034307$lambda$0");
                    Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(arrangement$Top$2, Alignment.Companion.n, composer9, 0);
                    int iHashCode3 = Long.hashCode(composer9.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer9.n();
                    Modifier modifierC3 = ComposedModifierKt.c(composer9, dTFunctionNameModifier2);
                    ComposeUiNode.b0.getClass();
                    Function0 function6 = ComposeUiNode.Companion.f9641b;
                    if (composer9.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer9.B();
                    if (composer9.getS()) {
                        composer9.C(function6);
                    } else {
                        composer9.o();
                    }
                    Updater.c(composer9, columnMeasurePolicyA3, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer9, persistentCompositionLocalMapN3, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer9, Integer.valueOf(iHashCode3), ComposeUiNode.Companion.g);
                    Updater.b(composer9, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer9, modifierC3, ComposeUiNode.Companion.d);
                    LVFloatingTopBarKt.a(null, FloatingTopBarType.Close, null, null, "Close", null, ComposableSingletons$LVFloatingTopBarKt.g, null, composer9, 1597488, 173);
                    LVFloatingTopBarKt.a(null, FloatingTopBarType.Back, null, null, "Back", null, ComposableSingletons$LVFloatingTopBarKt.f48735h, null, composer9, 1597488, 173);
                    composer9.r();
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
            case 10:
                Composer composer10 = (Composer) obj;
                int iIntValue10 = ((Integer) obj2).intValue();
                ComposableSingletons$LVFloatingTopBarKt composableSingletons$LVFloatingTopBarKt3 = ComposableSingletons$LVFloatingTopBarKt.f48730a;
                if (composer10.p(iIntValue10 & 1, (iIntValue10 & 3) != 2)) {
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableSingletons$LVFloatingTopBarKt.f48736i, composer10, 48);
                } else {
                    composer10.D();
                }
                return Unit.f71739a;
            case 11:
                Composer composer11 = (Composer) obj;
                int iIntValue11 = ((Integer) obj2).intValue();
                ComposableSingletons$LVMediumTopBarKt composableSingletons$LVMediumTopBarKt = ComposableSingletons$LVMediumTopBarKt.f48737a;
                if (composer11.p(iIntValue11 & 1, (iIntValue11 & 3) != 2)) {
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    Object objX3 = composer11.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new tn(i4);
                        composer11.q(objX3);
                    }
                    LVMediumTopBarKt.a(null, null, "Title", null, (Function0) objX3, null, null, null, composer11, 24960, 235);
                } else {
                    composer11.D();
                }
                return Unit.f71739a;
            case 12:
                Composer composer12 = (Composer) obj;
                int iIntValue12 = ((Integer) obj2).intValue();
                ComposableSingletons$LVMediumTopBarKt composableSingletons$LVMediumTopBarKt2 = ComposableSingletons$LVMediumTopBarKt.f48737a;
                if (composer12.p(iIntValue12 & 1, (iIntValue12 & 3) != 2)) {
                    OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                    Object objX4 = composer12.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new tn(i7);
                        composer12.q(objX4);
                    }
                    LVMediumTopBarKt.a(null, null, "Title", "Subtitle", (Function0) objX4, null, null, null, composer12, 28032, 227);
                } else {
                    composer12.D();
                }
                return Unit.f71739a;
            case 13:
                Composer composer13 = (Composer) obj;
                int iIntValue13 = ((Integer) obj2).intValue();
                ComposableSingletons$LVMediumTopBarKt composableSingletons$LVMediumTopBarKt3 = ComposableSingletons$LVMediumTopBarKt.f48737a;
                if (composer13.p(iIntValue13 & 1, (iIntValue13 & 3) != 2)) {
                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                    LVColorScheme lVColorScheme2 = LVColorScheme.INVERT;
                    Object objX5 = composer13.x();
                    if (objX5 == composer$Companion$Empty$1) {
                        objX5 = new tn(i3);
                        composer13.q(objX5);
                    }
                    LVMediumTopBarKt.a(null, lVColorScheme2, "Title", null, (Function0) objX5, null, null, null, composer13, 25008, 233);
                } else {
                    composer13.D();
                }
                return Unit.f71739a;
            case 14:
                Composer composer14 = (Composer) obj;
                int iIntValue14 = ((Integer) obj2).intValue();
                ComposableSingletons$LVNotificationKt composableSingletons$LVNotificationKt = ComposableSingletons$LVNotificationKt.f50950a;
                if (composer14.p(iIntValue14 & 1, (iIntValue14 & 3) != 2)) {
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                    Context context = (Context) composer14.k(AndroidCompositionLocals_androidKt.f9936b);
                    Modifier modifierO = new DTFunctionNameModifier("lambda_1175266492$lambda$0").o(SizeKt.f5052c);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode4 = Long.hashCode(composer14.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer14.n();
                    Modifier modifierC4 = ComposedModifierKt.c(composer14, modifierO);
                    ComposeUiNode.b0.getClass();
                    Function0 function7 = ComposeUiNode.Companion.f9641b;
                    if (composer14.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer14.B();
                    if (composer14.getS()) {
                        composer14.C(function7);
                    } else {
                        composer14.o();
                    }
                    Updater.c(composer14, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer14, persistentCompositionLocalMapN4, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer14, Integer.valueOf(iHashCode4), ComposeUiNode.Companion.g);
                    Updater.b(composer14, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer14, modifierC4, ComposeUiNode.Companion.d);
                    Object objX6 = composer14.x();
                    if (objX6 == composer$Companion$Empty$1) {
                        objX6 = SnapshotStateKt.g(Boolean.FALSE);
                        composer14.q(objX6);
                    }
                    MutableState mutableState = (MutableState) objX6;
                    boolean zBooleanValue = ((Boolean) mutableState.getF10755b()).booleanValue();
                    Object objX7 = composer14.x();
                    if (objX7 == composer$Companion$Empty$1) {
                        objX7 = new d0(18, mutableState);
                        composer14.q(objX7);
                    }
                    Function0 function8 = (Function0) objX7;
                    Object objX8 = composer14.x();
                    if (objX8 == composer$Companion$Empty$1) {
                        objX8 = new d0(19, mutableState);
                        composer14.q(objX8);
                    }
                    LVNotificationKt.a(zBooleanValue, true, false, null, null, function8, (Function0) objX8, ComposableLambdaKt.b(-1773214743, new f1(context, mutableState, i7), composer14), composer14, 14352432, 28);
                    ConfigurationButton configurationButton = LVAppDesignKitTheme.b(composer14).f48446a;
                    Modifier modifierG = boxScopeInstance.g(tr.d("lambda_1175266492$lambda$0", 1.0f), Alignment.Companion.f8589i);
                    Object objX9 = composer14.x();
                    if (objX9 == composer$Companion$Empty$1) {
                        objX9 = new d0(20, mutableState);
                        composer14.q(objX9);
                    }
                    LVButtonKt.b(805306752, 504, composer14, modifierG, configurationButton, null, null, "Show Notification", (Function0) objX9, false, false, false);
                    composer14.r();
                } else {
                    composer14.D();
                }
                return Unit.f71739a;
            case 15:
                Composer composer15 = (Composer) obj;
                int iIntValue15 = ((Integer) obj2).intValue();
                ComposableSingletons$LVRadioButtonBlockKt composableSingletons$LVRadioButtonBlockKt = ComposableSingletons$LVRadioButtonBlockKt.f48237a;
                if (composer15.p(iIntValue15 & 1, (iIntValue15 & 3) != 2)) {
                    OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                } else {
                    composer15.D();
                }
                return Unit.f71739a;
            case 16:
                Composer composer16 = (Composer) obj;
                int iIntValue16 = ((Integer) obj2).intValue();
                ComposableSingletons$LVRadioButtonBlockKt composableSingletons$LVRadioButtonBlockKt2 = ComposableSingletons$LVRadioButtonBlockKt.f48237a;
                if (composer16.p(iIntValue16 & 1, (iIntValue16 & 3) != 2)) {
                    OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                    Modifier modifierB2 = BackgroundKt.b(new DTFunctionNameModifier("lambda_1854480600$lambda$0"), LVAppDesignKitTheme.c(composer16).f48361b.f48374a, rectangleShapeKt$RectangleShape$1);
                    Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                    Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(composer16).f48415c);
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA4 = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, composer16, 0);
                    int iHashCode5 = Long.hashCode(composer16.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN5 = composer16.n();
                    Modifier modifierC5 = ComposedModifierKt.c(composer16, modifierB2);
                    ComposeUiNode.b0.getClass();
                    Function0 function9 = ComposeUiNode.Companion.f9641b;
                    if (composer16.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer16.B();
                    if (composer16.getS()) {
                        composer16.C(function9);
                    } else {
                        composer16.o();
                    }
                    Updater.c(composer16, columnMeasurePolicyA4, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer16, persistentCompositionLocalMapN5, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer16, Integer.valueOf(iHashCode5), ComposeUiNode.Companion.g);
                    Updater.b(composer16, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer16, modifierC5, ComposeUiNode.Companion.d);
                    Object objX10 = composer16.x();
                    if (objX10 == composer$Companion$Empty$1) {
                        objX10 = SnapshotStateKt.g(Boolean.FALSE);
                        composer16.q(objX10);
                    }
                    MutableState mutableState2 = (MutableState) objX10;
                    boolean zBooleanValue2 = ((Boolean) mutableState2.getF10755b()).booleanValue();
                    Object objX11 = composer16.x();
                    if (objX11 == composer$Companion$Empty$1) {
                        objX11 = new j6(14, mutableState2);
                        composer16.q(objX11);
                    }
                    LVRadioButtonBlockKt.a(null, "Enabled block", null, true, zBooleanValue2, (Function1) objX11, null, null, composer16, 199728, 197);
                    Object objX12 = composer16.x();
                    if (objX12 == composer$Companion$Empty$1) {
                        objX12 = SnapshotStateKt.g(Boolean.TRUE);
                        composer16.q(objX12);
                    }
                    MutableState mutableState3 = (MutableState) objX12;
                    boolean zBooleanValue3 = ((Boolean) mutableState3.getF10755b()).booleanValue();
                    Object objX13 = composer16.x();
                    if (objX13 == composer$Companion$Empty$1) {
                        objX13 = new j6(15, mutableState3);
                        composer16.q(objX13);
                    }
                    LVRadioButtonBlockKt.a(null, "Disabled block", null, false, zBooleanValue3, (Function1) objX13, null, null, composer16, 199728, 197);
                    Object objX14 = composer16.x();
                    if (objX14 == composer$Companion$Empty$1) {
                        objX14 = SnapshotStateKt.g(Boolean.TRUE);
                        composer16.q(objX14);
                    }
                    MutableState mutableState4 = (MutableState) objX14;
                    boolean zBooleanValue4 = ((Boolean) mutableState4.getF10755b()).booleanValue();
                    Object objX15 = composer16.x();
                    if (objX15 == composer$Companion$Empty$1) {
                        objX15 = new j6(16, mutableState4);
                        composer16.q(objX15);
                    }
                    LVRadioButtonBlockKt.a(null, "Enabled block selected", "Subtext", true, zBooleanValue4, (Function1) objX15, null, null, composer16, 200112, 193);
                    composer16.r();
                } else {
                    composer16.D();
                }
                return Unit.f71739a;
            case 17:
                Composer composer17 = (Composer) obj;
                int iIntValue17 = ((Integer) obj2).intValue();
                ComposableSingletons$LVStandardTopBarKt composableSingletons$LVStandardTopBarKt = ComposableSingletons$LVStandardTopBarKt.f48739a;
                if (composer17.p(iIntValue17 & 1, (iIntValue17 & 3) != 2)) {
                    OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, "Title", null, null, null, null, null, null, null, composer17, 3072, 0, 4087);
                } else {
                    composer17.D();
                }
                return Unit.f71739a;
            case 18:
                Composer composer18 = (Composer) obj;
                int iIntValue18 = ((Integer) obj2).intValue();
                ComposableSingletons$LVStandardTopBarKt composableSingletons$LVStandardTopBarKt2 = ComposableSingletons$LVStandardTopBarKt.f48739a;
                if (composer18.p(iIntValue18 & 1, (iIntValue18 & 3) != 2)) {
                    OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, "Title", null, null, null, ComposableSingletons$LVStandardTopBarKt.f48741c, null, null, null, composer18, 12585984, 0, 3959);
                } else {
                    composer18.D();
                }
                return Unit.f71739a;
            case 19:
                Composer composer19 = (Composer) obj;
                int iIntValue19 = ((Integer) obj2).intValue();
                ComposableSingletons$LVStandardTopBarKt composableSingletons$LVStandardTopBarKt3 = ComposableSingletons$LVStandardTopBarKt.f48739a;
                if (composer19.p(iIntValue19 & 1, (iIntValue19 & 3) != 2)) {
                    OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, "Title", "Subtitle", null, null, null, null, null, null, composer19, 27648, 0, 4071);
                } else {
                    composer19.D();
                }
                return Unit.f71739a;
            case 20:
                Composer composer20 = (Composer) obj;
                int iIntValue20 = ((Integer) obj2).intValue();
                ComposableSingletons$LVStandardTopBarKt composableSingletons$LVStandardTopBarKt4 = ComposableSingletons$LVStandardTopBarKt.f48739a;
                if (composer20.p(iIntValue20 & 1, (iIntValue20 & 3) != 2)) {
                    OpaqueKey opaqueKey20 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, LVColorScheme.INVERT, false, "Title", null, null, null, null, null, null, null, composer20, 3120, 0, 4085);
                } else {
                    composer20.D();
                }
                return Unit.f71739a;
            case 21:
                Composer composer21 = (Composer) obj;
                int iIntValue21 = ((Integer) obj2).intValue();
                ComposableSingletons$LVTimelineKt composableSingletons$LVTimelineKt = ComposableSingletons$LVTimelineKt.f50952a;
                if (composer21.p(iIntValue21 & 1, (iIntValue21 & 3) != 2)) {
                    OpaqueKey opaqueKey21 = ComposerKt.f7940a;
                    Object objX16 = composer21.x();
                    if (objX16 == composer$Companion$Empty$1) {
                        objX16 = new SliderState(Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, RangesKt.h(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f), 7, null);
                        composer21.q(objX16);
                    }
                    SliderState sliderState = (SliderState) objX16;
                    final float fD = 1.0f - sliderState.d();
                    Object objX17 = composer21.x();
                    if (objX17 == composer$Companion$Empty$1) {
                        objX17 = SnapshotIntStateKt.a(4);
                        composer21.q(objX17);
                    }
                    MutableIntState mutableIntState = (MutableIntState) objX17;
                    Modifier modifierO2 = new DTFunctionNameModifier("lambda_724553781$lambda$0").o(SizeKt.f5052c);
                    Color.f8866b.getClass();
                    Modifier modifierB3 = BackgroundKt.b(modifierO2, Color.f8867c, rectangleShapeKt$RectangleShape$1);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8587f, false);
                    int iHashCode6 = Long.hashCode(composer21.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN6 = composer21.n();
                    Modifier modifierC6 = ComposedModifierKt.c(composer21, modifierB3);
                    ComposeUiNode.b0.getClass();
                    Function0 function10 = ComposeUiNode.Companion.f9641b;
                    if (composer21.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer21.B();
                    if (composer21.getS()) {
                        composer21.C(function10);
                    } else {
                        composer21.o();
                    }
                    Function2 function11 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer21, measurePolicyD2, function11);
                    Function2 function12 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer21, persistentCompositionLocalMapN6, function12);
                    Integer numValueOf2 = Integer.valueOf(iHashCode6);
                    Function2 function13 = ComposeUiNode.Companion.g;
                    Updater.c(composer21, numValueOf2, function13);
                    Function1 function14 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer21, function14);
                    Function2 function15 = ComposeUiNode.Companion.d;
                    Updater.c(composer21, modifierC6, function15);
                    DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("lambda_724553781$lambda$0");
                    Dp.Companion companion = Dp.f11004c;
                    LVTimelineKt.a(SizeKt.f(dTFunctionNameModifier3, 200.0f), null, mutableIntState.f(), 6, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, 0L, 0L, null, null, ComposableLambdaKt.b(-91223593, new Function5() { // from class: xn
                        @Override // kotlin.jvm.functions.Function5
                        public final Object D(Object obj3, Object obj4, Object obj5, Object obj6, Object obj7) {
                            int i10;
                            long j2;
                            int iIntValue22 = ((Integer) obj4).intValue();
                            int iIntValue23 = ((Integer) obj5).intValue();
                            Composer composer22 = (Composer) obj6;
                            int iIntValue24 = ((Integer) obj7).intValue();
                            ComposableSingletons$LVTimelineKt composableSingletons$LVTimelineKt2 = ComposableSingletons$LVTimelineKt.f50952a;
                            ((ColumnScope) obj3).getClass();
                            if ((iIntValue24 & 48) == 0) {
                                i10 = (composer22.d(iIntValue22) ? 32 : 16) | iIntValue24;
                            } else {
                                i10 = iIntValue24;
                            }
                            if ((iIntValue24 & KyberEngine.KyberPolyBytes) == 0) {
                                i10 |= composer22.d(iIntValue23) ? 256 : 128;
                            }
                            if (composer22.p(i10 & 1, (i10 & 1169) != 1168)) {
                                OpaqueKey opaqueKey22 = ComposerKt.f7940a;
                                Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("lambda_724553781$lambda$0$4$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer22).f48416e, LVAppDesignKitTheme.l(composer22).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, 9);
                                TextStyle textStyle = LVAppDesignKitTheme.n(composer22).f48427h;
                                if (iIntValue23 == iIntValue22) {
                                    composer22.L(1072648104);
                                    j2 = LVAppDesignKitTheme.c(composer22).f48361b.m;
                                    composer22.F();
                                } else {
                                    composer22.L(1072752233);
                                    j2 = LVAppDesignKitTheme.c(composer22).f48361b.n;
                                    composer22.F();
                                }
                                TextKt.c(pq0.k(iIntValue22, "Step very long just to see "), modifierM, Color.b(fD, j2), 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, composer22, 0, 0, 131064);
                            } else {
                                composer22.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer21), composer21, 24966, 2018);
                    Modifier modifierI = PaddingKt.i(boxScopeInstance.g(new DTFunctionNameModifier("lambda_724553781$lambda$0"), Alignment.Companion.f8585c), LVAppDesignKitTheme.l(composer21).f48418h);
                    BiasAlignment.Horizontal horizontal2 = Alignment.Companion.o;
                    Arrangement$Start$1 arrangement$Start$2 = Arrangement.f4918a;
                    ColumnMeasurePolicy columnMeasurePolicyA5 = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(composer21).f48416e), horizontal2, composer21, 48);
                    int iHashCode7 = Long.hashCode(composer21.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN7 = composer21.n();
                    Modifier modifierC7 = ComposedModifierKt.c(composer21, modifierI);
                    if (composer21.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer21.B();
                    if (composer21.getS()) {
                        composer21.C(function10);
                    } else {
                        composer21.o();
                    }
                    Updater.c(composer21, columnMeasurePolicyA5, function11);
                    Updater.c(composer21, persistentCompositionLocalMapN7, function12);
                    cj.s(iHashCode7, composer21, function13, composer21, function14);
                    Updater.c(composer21, modifierC7, function15);
                    Object objX18 = composer21.x();
                    if (objX18 == composer$Companion$Empty$1) {
                        objX18 = new w1(mutableIntState, 25);
                        composer21.q(objX18);
                    }
                    ButtonKt.a((Function0) objX18, null, false, null, null, null, null, ComposableSingletons$LVTimelineKt.f50954c, composer21, 805306374, 510);
                    SliderKt.b(sliderState, null, false, null, null, null, null, composer21, SliderState.t, 126);
                    composer21.r();
                    composer21.r();
                } else {
                    composer21.D();
                }
                return Unit.f71739a;
            case 22:
                Composer composer22 = (Composer) obj;
                int iIntValue22 = ((Integer) obj2).intValue();
                ComposableSingletons$Lv3dCardViewerComposableKt composableSingletons$Lv3dCardViewerComposableKt = ComposableSingletons$Lv3dCardViewerComposableKt.f58551a;
                if (composer22.p(iIntValue22 & 1, (iIntValue22 & 3) != 2)) {
                    OpaqueKey opaqueKey22 = ComposerKt.f7940a;
                    Lv3dCardViewerUiModel lv3dCardViewerUiModel = Lv3dCardViewerComposableKt.f58553a;
                    Object objX19 = composer22.x();
                    if (objX19 == composer$Companion$Empty$1) {
                        objX19 = new wn(11);
                        composer22.q(objX19);
                    }
                    Function1 function16 = (Function1) objX19;
                    Scene3DConfiguration.BlossomConfiguration blossomConfiguration = new Scene3DConfiguration.BlossomConfiguration();
                    Object objX20 = composer22.x();
                    if (objX20 == composer$Companion$Empty$1) {
                        objX20 = new tn(23);
                        composer22.q(objX20);
                    }
                    Lv3dCardViewerComposableKt.a(null, lv3dCardViewerUiModel, false, function16, null, blossomConfiguration, (Function0) objX20, composer22, 1575936, 21);
                } else {
                    composer22.D();
                }
                return Unit.f71739a;
            case 23:
                Composer composer23 = (Composer) obj;
                int iIntValue23 = ((Integer) obj2).intValue();
                ComposableSingletons$Lv3dViewerComposableKt composableSingletons$Lv3dViewerComposableKt = ComposableSingletons$Lv3dViewerComposableKt.f58585a;
                if (composer23.p(iIntValue23 & 1, (iIntValue23 & 3) != 2)) {
                    OpaqueKey opaqueKey23 = ComposerKt.f7940a;
                    Lv3dViewerUiModel lv3dViewerUiModel = Lv3dViewerComposableKt.f58587a;
                    Object objX21 = composer23.x();
                    if (objX21 == composer$Companion$Empty$1) {
                        objX21 = new wn(12);
                        composer23.q(objX21);
                    }
                    Function1 function17 = (Function1) objX21;
                    Object objX22 = composer23.x();
                    if (objX22 == composer$Companion$Empty$1) {
                        objX22 = new tn(24);
                        composer23.q(objX22);
                    }
                    Function0 function18 = (Function0) objX22;
                    Object objX23 = composer23.x();
                    if (objX23 == composer$Companion$Empty$1) {
                        objX23 = new tn(i5);
                        composer23.q(objX23);
                    }
                    Function0 function19 = (Function0) objX23;
                    Object objX24 = composer23.x();
                    if (objX24 == composer$Companion$Empty$1) {
                        objX24 = new tn(26);
                        composer23.q(objX24);
                    }
                    Function0 function20 = (Function0) objX24;
                    Object objX25 = composer23.x();
                    if (objX25 == composer$Companion$Empty$1) {
                        objX25 = new wn(13);
                        composer23.q(objX25);
                    }
                    Lv3dViewerComposableKt.b(null, false, false, lv3dViewerUiModel, function17, function18, function19, function20, (Function1) objX25, composer23, 906193920, 6, 199);
                } else {
                    composer23.D();
                }
                return Unit.f71739a;
            case 24:
                Composer composer24 = (Composer) obj;
                int iIntValue24 = ((Integer) obj2).intValue();
                ComposableSingletons$LvLoadingKt composableSingletons$LvLoadingKt = ComposableSingletons$LvLoadingKt.f51713a;
                if (composer24.p(iIntValue24 & 1, (iIntValue24 & 3) != 2)) {
                    OpaqueKey opaqueKey24 = ComposerKt.f7940a;
                    Modifier modifierO3 = new DTFunctionNameModifier("lambda_413229255$lambda$0").o(SizeKt.f5052c);
                    LoadingMode loadingMode = LoadingMode.DarkMode;
                    Object objX26 = composer24.x();
                    if (objX26 == composer$Companion$Empty$1) {
                        objX26 = new tn(28);
                        composer24.q(objX26);
                    }
                    LvLoadingKt.b(modifierO3, true, loadingMode, false, 0L, (Function0) objX26, composer24, 197046, 24);
                } else {
                    composer24.D();
                }
                return Unit.f71739a;
            case 25:
                Composer composer25 = (Composer) obj;
                int iIntValue25 = ((Integer) obj2).intValue();
                ComposableSingletons$LvLoadingKt composableSingletons$LvLoadingKt2 = ComposableSingletons$LvLoadingKt.f51713a;
                if (composer25.p(iIntValue25 & 1, (iIntValue25 & 3) != 2)) {
                    OpaqueKey opaqueKey25 = ComposerKt.f7940a;
                    Modifier modifierO4 = new DTFunctionNameModifier("lambda__1485314129$lambda$0").o(SizeKt.f5052c);
                    LoadingMode loadingMode2 = LoadingMode.LightMode;
                    Object objX27 = composer25.x();
                    if (objX27 == composer$Companion$Empty$1) {
                        objX27 = new tn(27);
                        composer25.q(objX27);
                    }
                    LvLoadingKt.b(modifierO4, true, loadingMode2, false, 0L, (Function0) objX27, composer25, 197046, 24);
                } else {
                    composer25.D();
                }
                return Unit.f71739a;
            case 26:
                return a(obj, obj2);
            case 27:
                return b(obj, obj2);
            case 28:
                return c(obj, obj2);
            default:
                Composer composer26 = (Composer) obj;
                int iIntValue26 = ((Integer) obj2).intValue();
                ComposableSingletons$MyInformationScreenKt composableSingletons$MyInformationScreenKt = ComposableSingletons$MyInformationScreenKt.f52593a;
                if (composer26.p(iIntValue26 & 1, (iIntValue26 & 3) != 2)) {
                    OpaqueKey opaqueKey26 = ComposerKt.f7940a;
                    int i10 = 3;
                    PaddingValuesImpl paddingValuesImplC = PaddingKt.c(Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                    MyInformationViewState myInformationViewState = new MyInformationViewState(false, false, null, null, null, new FormUiModel(EmptyList.f71768b), false, 95, null);
                    Object objX28 = composer26.x();
                    if (objX28 == composer$Companion$Empty$1) {
                        objX28 = new yn(z ? 1 : 0);
                        composer26.q(objX28);
                    }
                    Function0 function21 = (Function0) objX28;
                    Object objX29 = composer26.x();
                    if (objX29 == composer$Companion$Empty$1) {
                        objX29 = new yn(i9);
                        composer26.q(objX29);
                    }
                    Function0 function22 = (Function0) objX29;
                    Object objX30 = composer26.x();
                    if (objX30 == composer$Companion$Empty$1) {
                        objX30 = new yn(i8);
                        composer26.q(objX30);
                    }
                    Function0 function23 = (Function0) objX30;
                    Object objX31 = composer26.x();
                    if (objX31 == composer$Companion$Empty$1) {
                        objX31 = new yn(i10);
                        composer26.q(objX31);
                    }
                    Function0 function24 = (Function0) objX31;
                    Object objX32 = composer26.x();
                    if (objX32 == composer$Companion$Empty$1) {
                        objX32 = new yn(i6);
                        composer26.q(objX32);
                    }
                    MyInformationScreenKt.d(paddingValuesImplC, myInformationViewState, function21, function22, function23, function24, (Function0) objX32, composer26, 1797510);
                } else {
                    composer26.D();
                }
                return Unit.f71739a;
        }
    }
}
