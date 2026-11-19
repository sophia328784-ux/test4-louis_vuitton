package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.FeatureThemeUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.cart.components.giftmessage.CardItemUiModel;
import com.vuitton.android.presentation.screen.cart.components.giftmessage.ComposableSingletons$SelectableItemsCardKt;
import com.vuitton.android.presentation.screen.cart.components.giftmessage.SelectableItemsCardKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.ComposableSingletons$QuickFilterButtonKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.QuickFilterButtonKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState;
import com.vuitton.android.presentation.screen.immersivearticle.podcast.components.ComposableSingletons$PodcastTrackSliderKt;
import com.vuitton.android.presentation.screen.immersivearticle.podcast.components.PodcastTrackSliderKt;
import com.vuitton.android.presentation.screen.options.dispatch.models.InAppDispatchMockKt;
import com.vuitton.android.presentation.screen.options.settings.components.ComposableSingletons$SettingsComposableKt;
import com.vuitton.android.presentation.screen.options.settings.components.SettingsComposableKt;
import com.vuitton.android.presentation.screen.options.settings.models.SettingsViewState;
import com.vuitton.android.presentation.screen.osa.form.storeselection.components.ComposableSingletons$OsaLocationFormScreenKt;
import com.vuitton.android.presentation.screen.osa.models.OsaFormItemUiModel;
import com.vuitton.android.presentation.screen.pdp.components.ComposableSingletons$PdpLoadingScreenKt;
import com.vuitton.android.presentation.screen.pdp.components.PdpLoadingScreenKt;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.ComposableSingletons$PdpCareAndSustainabilityKt;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpCareAndSustainabilityKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PanelInfoHtmlItem;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.components.ComposableSingletons$PersonalSelectionsCurationAdvisorLookScreenKt;
import com.vuitton.android.presentation.screen.privacy.models.PrivacyViewState;
import com.vuitton.android.presentation.screen.repairs.components.ComposableSingletons$RepairDetailAddressBookComposableKt;
import com.vuitton.android.presentation.screen.repairs.components.RepairDetailAddressBookComposableKt;
import com.vuitton.android.presentation.screen.repairs.list.components.ComposableSingletons$RepairListLoadingScreenKt;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListLoadingScreenKt;
import com.vuitton.android.presentation.screen.spotlight.components.ComposableSingletons$SpotlightBottomStepperKt;
import com.vuitton.android.presentation.screen.spotlight.components.ComposableSingletons$SpotlightHotspotsKt;
import com.vuitton.android.presentation.screen.spotlight.components.ComposableSingletons$SpotlightScreenKt;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightBottomStepperKt;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightHotspotsKt;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightScreenKt;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightMockKt;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightSlideUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightViewState;
import com.vuitton.foundation.model.domain.model.privacy.PrivacyType;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class fo implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69184b;

    public /* synthetic */ fo(int i2) {
        this.f69184b = i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f69184b;
        int i3 = 17;
        int i4 = 9;
        int i5 = 8;
        int i6 = 7;
        int i7 = 15;
        int i8 = 13;
        int i9 = 14;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
        int i10 = 6;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        int i11 = 3;
        switch (i2) {
            case 0:
                ComposableSingletons$OsaLocationFormScreenKt composableSingletons$OsaLocationFormScreenKt = ComposableSingletons$OsaLocationFormScreenKt.f60801a;
                ((TimeSlotUiModel) obj).getClass();
                ((OsaFormItemUiModel) obj2).getClass();
                return Unit.f71739a;
            case 1:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                ComposableSingletons$PdpCareAndSustainabilityKt composableSingletons$PdpCareAndSustainabilityKt = ComposableSingletons$PdpCareAndSustainabilityKt.f61435a;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    List listP = CollectionsKt.P(new PanelInfoHtmlItem(null, "Description", "Title", null, null, 25, null), new PanelInfoHtmlItem(null, "Description", "Title", null == true ? 1 : 0, null, 25, null));
                    Object objX = composer.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new eo(10);
                        composer.q(objX);
                    }
                    PdpCareAndSustainabilityKt.a(null, listP, (Function1) objX, composer, KyberEngine.KyberPolyBytes, 1);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 2:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                ComposableSingletons$PdpLoadingScreenKt composableSingletons$PdpLoadingScreenKt = ComposableSingletons$PdpLoadingScreenKt.f61366a;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Object objX2 = composer2.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new go(false ? 1 : 0);
                        composer2.q(objX2);
                    }
                    PdpLoadingScreenKt.a((Function0) objX2, composer2, 6);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 3:
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                ComposableSingletons$PersonalSelectionsCurationAdvisorLookScreenKt composableSingletons$PersonalSelectionsCurationAdvisorLookScreenKt = ComposableSingletons$PersonalSelectionsCurationAdvisorLookScreenKt.f62477a;
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer3).O, composer3, 0), StringResources_androidKt.c(composer3, R.string.alt_like), SizeKt.o(new DTFunctionNameModifier("lambda_770797152$lambda$0"), LVAppDesignKitTheme.d(composer3).n), LVAppDesignKitTheme.c(composer3).f48361b.f48382k, composer3, 8, 0);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 4:
                Composer composer4 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                ComposableSingletons$PodcastTrackSliderKt composableSingletons$PodcastTrackSliderKt = ComposableSingletons$PodcastTrackSliderKt.f58892a;
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    Object objX3 = composer4.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new eo(11);
                        composer4.q(objX3);
                    }
                    Function1 function1 = (Function1) objX3;
                    Object objX4 = composer4.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new go(1);
                        composer4.q(objX4);
                    }
                    Function0 function0 = (Function0) objX4;
                    Object objX5 = composer4.x();
                    if (objX5 == composer$Companion$Empty$1) {
                        objX5 = new eo(12);
                        composer4.q(objX5);
                    }
                    PodcastTrackSliderKt.a(null, 45.0f, 100.0f, false, function1, function0, (Function1) objX5, composer4, 1797552, 1);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 5:
                Composer composer5 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                ComposableSingletons$QuickFilterButtonKt composableSingletons$QuickFilterButtonKt = ComposableSingletons$QuickFilterButtonKt.f58069a;
                if (composer5.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    int i12 = LVAppDesignKitTheme.g(composer5).p;
                    FiltersButtonState filtersButtonState = FiltersButtonState.InitialAnimation;
                    Object objX6 = composer5.x();
                    if (objX6 == composer$Companion$Empty$1) {
                        objX6 = new go(2);
                        composer5.q(objX6);
                    }
                    QuickFilterButtonKt.a(null, i12, null, filtersButtonState, false, (Function0) objX6, null, composer5, 199680, 85);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 6:
                Composer composer6 = (Composer) obj;
                int iIntValue6 = ((Integer) obj2).intValue();
                ComposableSingletons$RepairDetailAddressBookComposableKt composableSingletons$RepairDetailAddressBookComposableKt = ComposableSingletons$RepairDetailAddressBookComposableKt.f63628a;
                if (composer6.p(iIntValue6 & 1, (iIntValue6 & 3) != 2)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    AssessmentViewState assessmentViewState = new AssessmentViewState(InAppDispatchMockKt.f59833a, false, null, null, null, null, null, null, null, false, false, null, null, null, false, false, false, 131070, null);
                    Object objX7 = composer6.x();
                    if (objX7 == composer$Companion$Empty$1) {
                        objX7 = new eo(i8);
                        composer6.q(objX7);
                    }
                    Function1 function2 = (Function1) objX7;
                    Object objX8 = composer6.x();
                    if (objX8 == composer$Companion$Empty$1) {
                        objX8 = new eo(i9);
                        composer6.q(objX8);
                    }
                    Function1 function3 = (Function1) objX8;
                    Object objX9 = composer6.x();
                    if (objX9 == composer$Companion$Empty$1) {
                        objX9 = new eo(i7);
                        composer6.q(objX9);
                    }
                    Function1 function4 = (Function1) objX9;
                    Object objX10 = composer6.x();
                    if (objX10 == composer$Companion$Empty$1) {
                        objX10 = new go(i11);
                        composer6.q(objX10);
                    }
                    RepairDetailAddressBookComposableKt.c(assessmentViewState, null, function2, function3, function4, (Function0) objX10, composer6, 224688);
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 7:
                Composer composer7 = (Composer) obj;
                int iIntValue7 = ((Integer) obj2).intValue();
                ComposableSingletons$RepairListLoadingScreenKt composableSingletons$RepairListLoadingScreenKt = ComposableSingletons$RepairListLoadingScreenKt.f63918a;
                if (composer7.p(iIntValue7 & 1, (iIntValue7 & 3) != 2)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 8:
                Composer composer8 = (Composer) obj;
                int iIntValue8 = ((Integer) obj2).intValue();
                ComposableSingletons$RepairListLoadingScreenKt composableSingletons$RepairListLoadingScreenKt2 = ComposableSingletons$RepairListLoadingScreenKt.f63918a;
                if (composer8.p(iIntValue8 & 1, (iIntValue8 & 3) != 2)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    RepairListLoadingScreenKt.a(ComposableSingletons$RepairListLoadingScreenKt.f63920c, composer8, 6);
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 9:
                Composer composer9 = (Composer) obj;
                int iIntValue9 = ((Integer) obj2).intValue();
                ComposableSingletons$SelectableItemsCardKt composableSingletons$SelectableItemsCardKt = ComposableSingletons$SelectableItemsCardKt.f55071a;
                if (composer9.p(iIntValue9 & 1, (iIntValue9 & 3) != 2)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer9).q, composer9, 0), StringResources_androidKt.c(composer9, R.string.alt_remove), SizeKt.o(ClipKt.a(new DTFunctionNameModifier("lambda_1799572764$lambda$0"), RoundedCornerShapeKt.f5846a), LVAppDesignKitTheme.d(composer9).m), 0L, composer9, 8, 8);
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
            case 10:
                Composer composer10 = (Composer) obj;
                int iIntValue10 = ((Integer) obj2).intValue();
                ComposableSingletons$SelectableItemsCardKt composableSingletons$SelectableItemsCardKt2 = ComposableSingletons$SelectableItemsCardKt.f55071a;
                if (composer10.p(iIntValue10 & 1, (iIntValue10 & 3) != 2)) {
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    List listP2 = CollectionsKt.P(new CardItemUiModel(new StringResourceUiModel.Text("Tonnerre infini"), null, null, null), new CardItemUiModel(new StringResourceUiModel.Text("Bonheur enivré"), null, null, null));
                    Object objX11 = composer10.x();
                    if (objX11 == composer$Companion$Empty$1) {
                        objX11 = new io(10);
                        composer10.q(objX11);
                    }
                    SelectableItemsCardKt.a(null, "Samples", listP2, (Function1) objX11, composer10, 3120, 1);
                } else {
                    composer10.D();
                }
                return Unit.f71739a;
            case 11:
                Composer composer11 = (Composer) obj;
                int iIntValue11 = ((Integer) obj2).intValue();
                ComposableSingletons$SettingsComposableKt composableSingletons$SettingsComposableKt = ComposableSingletons$SettingsComposableKt.f60033a;
                if (composer11.p(iIntValue11 & 1, (iIntValue11 & 3) != 2)) {
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer11).w, composer11, 0), StringResources_androidKt.c(composer11, R.string.alt_edit), SizeKt.o(new DTFunctionNameModifier("lambda_1365627305$lambda$0"), LVAppDesignKitTheme.d(composer11).m), 0L, composer11, 8, 8);
                } else {
                    composer11.D();
                }
                return Unit.f71739a;
            case 12:
                Composer composer12 = (Composer) obj;
                int iIntValue12 = ((Integer) obj2).intValue();
                ComposableSingletons$SettingsComposableKt composableSingletons$SettingsComposableKt2 = ComposableSingletons$SettingsComposableKt.f60033a;
                if (composer12.p(iIntValue12 & 1, (iIntValue12 & 3) != 2)) {
                    OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                    Boolean bool = Boolean.TRUE;
                    Object objX12 = composer12.x();
                    if (objX12 == composer$Companion$Empty$1) {
                        objX12 = new jo(i6);
                        composer12.q(objX12);
                    }
                    Function0 function5 = (Function0) objX12;
                    Object objX13 = composer12.x();
                    if (objX13 == composer$Companion$Empty$1) {
                        objX13 = new jo(i5);
                        composer12.q(objX13);
                    }
                    Function0 function6 = (Function0) objX13;
                    Object objX14 = composer12.x();
                    if (objX14 == composer$Companion$Empty$1) {
                        objX14 = new io(12);
                        composer12.q(objX14);
                    }
                    SettingsComposableKt.b(bool, false, function5, function6, (Function1) objX14, composer12, 28086);
                } else {
                    composer12.D();
                }
                return Unit.f71739a;
            case 13:
                Composer composer13 = (Composer) obj;
                int iIntValue13 = ((Integer) obj2).intValue();
                ComposableSingletons$SettingsComposableKt composableSingletons$SettingsComposableKt3 = ComposableSingletons$SettingsComposableKt.f60033a;
                if (composer13.p(iIntValue13 & 1, (iIntValue13 & 3) != 2)) {
                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                    SettingsViewState settingsViewState = new SettingsViewState(false, null, null, false, false, false, false, false, false, false, false, false, false, 8191, null);
                    PrivacyViewState privacyViewState = new PrivacyViewState(PrivacyType.GDPR, EmptyList.f71768b, false, false, false, false, 60, null);
                    SnackbarHostState snackbarHostState = new SnackbarHostState();
                    Object objX15 = composer13.x();
                    if (objX15 == composer$Companion$Empty$1) {
                        objX15 = new jo(i4);
                        composer13.q(objX15);
                    }
                    Function0 function7 = (Function0) objX15;
                    Object objX16 = composer13.x();
                    if (objX16 == composer$Companion$Empty$1) {
                        objX16 = new jo(10);
                        composer13.q(objX16);
                    }
                    Function0 function8 = (Function0) objX16;
                    Object objX17 = composer13.x();
                    if (objX17 == composer$Companion$Empty$1) {
                        objX17 = new jo(11);
                        composer13.q(objX17);
                    }
                    Function0 function9 = (Function0) objX17;
                    Object objX18 = composer13.x();
                    if (objX18 == composer$Companion$Empty$1) {
                        objX18 = new jo(12);
                        composer13.q(objX18);
                    }
                    Function0 function10 = (Function0) objX18;
                    Object objX19 = composer13.x();
                    if (objX19 == composer$Companion$Empty$1) {
                        objX19 = new jo(i8);
                        composer13.q(objX19);
                    }
                    Function0 function11 = (Function0) objX19;
                    Object objX20 = composer13.x();
                    if (objX20 == composer$Companion$Empty$1) {
                        objX20 = new jo(i9);
                        composer13.q(objX20);
                    }
                    Function0 function12 = (Function0) objX20;
                    Object objX21 = composer13.x();
                    if (objX21 == composer$Companion$Empty$1) {
                        objX21 = new jo(i7);
                        composer13.q(objX21);
                    }
                    Function0 function13 = (Function0) objX21;
                    Object objX22 = composer13.x();
                    if (objX22 == composer$Companion$Empty$1) {
                        objX22 = new jo(i10);
                        composer13.q(objX22);
                    }
                    Function0 function14 = (Function0) objX22;
                    Object objX23 = composer13.x();
                    if (objX23 == composer$Companion$Empty$1) {
                        objX23 = new io(11);
                        composer13.q(objX23);
                    }
                    SettingsComposableKt.f(settingsViewState, privacyViewState, snackbarHostState, function7, function8, function9, function10, function11, function12, function13, function14, (Function1) objX23, composer13, 920349696, 54);
                } else {
                    composer13.D();
                }
                return Unit.f71739a;
            case 14:
                Composer composer14 = (Composer) obj;
                int iIntValue14 = ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightBottomStepperKt composableSingletons$SpotlightBottomStepperKt = ComposableSingletons$SpotlightBottomStepperKt.f64575a;
                if (composer14.p(iIntValue14 & 1, (iIntValue14 & 3) != 2)) {
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("lambda_1366430518$lambda$0");
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer14, 0);
                    int iHashCode = Long.hashCode(composer14.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer14.n();
                    Modifier modifierC = ComposedModifierKt.c(composer14, dTFunctionNameModifier);
                    ComposeUiNode.b0.getClass();
                    Function0 function15 = ComposeUiNode.Companion.f9641b;
                    if (composer14.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer14.B();
                    if (composer14.getS()) {
                        composer14.C(function15);
                    } else {
                        composer14.o();
                    }
                    Updater.c(composer14, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer14, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer14, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer14, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer14, modifierC, ComposeUiNode.Companion.d);
                    LVButtonKt.b(390, 1016, composer14, tr.d("lambda_1366430518$lambda$0", 1.0f), LVAppDesignKitTheme.b(composer14).f48449e, null, null, "Title", null, false, false, false);
                    composer14.r();
                } else {
                    composer14.D();
                }
                return Unit.f71739a;
            case 15:
                Composer composer15 = (Composer) obj;
                int iIntValue15 = ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightBottomStepperKt composableSingletons$SpotlightBottomStepperKt2 = ComposableSingletons$SpotlightBottomStepperKt.f64575a;
                if (composer15.p(iIntValue15 & 1, (iIntValue15 & 3) != 2)) {
                    OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                    SpotlightBottomStepperKt.a(tr.d("lambda__1573741747$lambda$0", 1.0f), true, ComposableSingletons$SpotlightBottomStepperKt.f64576b, composer15, 438);
                } else {
                    composer15.D();
                }
                return Unit.f71739a;
            case 16:
                Composer composer16 = (Composer) obj;
                int iIntValue16 = ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightBottomStepperKt composableSingletons$SpotlightBottomStepperKt3 = ComposableSingletons$SpotlightBottomStepperKt.f64575a;
                if (composer16.p(iIntValue16 & 1, (iIntValue16 & 3) != 2)) {
                    OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("lambda_1184405959$lambda$0");
                    Color.f8866b.getClass();
                    SpotlightBottomStepperKt.c(54, 0, composer16, BackgroundKt.b(dTFunctionNameModifier2, Color.f8867c, rectangleShapeKt$RectangleShape$1), "01");
                } else {
                    composer16.D();
                }
                return Unit.f71739a;
            case 17:
                Composer composer17 = (Composer) obj;
                int iIntValue17 = ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightBottomStepperKt composableSingletons$SpotlightBottomStepperKt4 = ComposableSingletons$SpotlightBottomStepperKt.f64575a;
                if (composer17.p(iIntValue17 & 1, (iIntValue17 & 3) != 2)) {
                    OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                    Object objX24 = composer17.x();
                    if (objX24 == composer$Companion$Empty$1) {
                        objX24 = SnapshotStateKt.g(0);
                        composer17.q(objX24);
                    }
                    MutableState mutableState = (MutableState) objX24;
                    Object objX25 = composer17.x();
                    if (objX25 == composer$Companion$Empty$1) {
                        objX25 = 99;
                        composer17.q(objX25);
                    }
                    int iIntValue18 = ((Number) objX25).intValue();
                    Modifier modifierD = tr.d("lambda_208818428$lambda$0", 1.0f);
                    int iIntValue19 = ((Number) mutableState.getF10755b()).intValue();
                    Object objX26 = composer17.x();
                    if (objX26 == composer$Companion$Empty$1) {
                        objX26 = new io(i7);
                        composer17.q(objX26);
                    }
                    Function1 function16 = (Function1) objX26;
                    Object objX27 = composer17.x();
                    if (objX27 == composer$Companion$Empty$1) {
                        objX27 = new j6(19, mutableState);
                        composer17.q(objX27);
                    }
                    Function1 function17 = (Function1) objX27;
                    Object objX28 = composer17.x();
                    if (objX28 == composer$Companion$Empty$1) {
                        objX28 = new ko(iIntValue18, mutableState, i11);
                        composer17.q(objX28);
                    }
                    SpotlightBottomStepperKt.b(modifierD, true, function16, iIntValue18, iIntValue19, "01", null, function17, (Function1) objX28, composer17, 115019190);
                } else {
                    composer17.D();
                }
                return Unit.f71739a;
            case 18:
                Composer composer18 = (Composer) obj;
                int iIntValue20 = ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightBottomStepperKt composableSingletons$SpotlightBottomStepperKt5 = ComposableSingletons$SpotlightBottomStepperKt.f64575a;
                if (composer18.p(iIntValue20 & 1, (iIntValue20 & 3) != 2)) {
                    OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                    Object objX29 = composer18.x();
                    if (objX29 == composer$Companion$Empty$1) {
                        objX29 = SnapshotStateKt.g(0);
                        composer18.q(objX29);
                    }
                    MutableState mutableState2 = (MutableState) objX29;
                    Object objX30 = composer18.x();
                    if (objX30 == composer$Companion$Empty$1) {
                        objX30 = 99;
                        composer18.q(objX30);
                    }
                    int iIntValue21 = ((Number) objX30).intValue();
                    Modifier modifierD2 = tr.d("lambda__394006331$lambda$0", 1.0f);
                    int iIntValue22 = ((Number) mutableState2.getF10755b()).intValue();
                    Object objX31 = composer18.x();
                    if (objX31 == composer$Companion$Empty$1) {
                        objX31 = new io(16);
                        composer18.q(objX31);
                    }
                    Function1 function18 = (Function1) objX31;
                    Object objX32 = composer18.x();
                    if (objX32 == composer$Companion$Empty$1) {
                        objX32 = new j6(20, mutableState2);
                        composer18.q(objX32);
                    }
                    Function1 function19 = (Function1) objX32;
                    Object objX33 = composer18.x();
                    if (objX33 == composer$Companion$Empty$1) {
                        objX33 = new ko(iIntValue21, mutableState2, false ? 1 : 0);
                        composer18.q(objX33);
                    }
                    SpotlightBottomStepperKt.b(modifierD2, true, function18, iIntValue21, iIntValue22, "01", null, function19, (Function1) objX33, composer18, 115019190);
                } else {
                    composer18.D();
                }
                return Unit.f71739a;
            case 19:
                Composer composer19 = (Composer) obj;
                int iIntValue23 = ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightBottomStepperKt composableSingletons$SpotlightBottomStepperKt6 = ComposableSingletons$SpotlightBottomStepperKt.f64575a;
                if (composer19.p(iIntValue23 & 1, (iIntValue23 & 3) != 2)) {
                    OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                    Object objX34 = composer19.x();
                    if (objX34 == composer$Companion$Empty$1) {
                        objX34 = SnapshotStateKt.g(0);
                        composer19.q(objX34);
                    }
                    MutableState mutableState3 = (MutableState) objX34;
                    Object objX35 = composer19.x();
                    if (objX35 == composer$Companion$Empty$1) {
                        objX35 = 1;
                        composer19.q(objX35);
                    }
                    int iIntValue24 = ((Number) objX35).intValue();
                    Modifier modifierD3 = tr.d("lambda_1989112283$lambda$0", 1.0f);
                    int iIntValue25 = ((Number) mutableState3.getF10755b()).intValue();
                    Object objX36 = composer19.x();
                    if (objX36 == composer$Companion$Empty$1) {
                        objX36 = new io(i8);
                        composer19.q(objX36);
                    }
                    Function1 function20 = (Function1) objX36;
                    Object objX37 = composer19.x();
                    if (objX37 == composer$Companion$Empty$1) {
                        objX37 = new j6(i3, mutableState3);
                        composer19.q(objX37);
                    }
                    Function1 function21 = (Function1) objX37;
                    Object objX38 = composer19.x();
                    if (objX38 == composer$Companion$Empty$1) {
                        objX38 = new ko(iIntValue24, mutableState3, 1);
                        composer19.q(objX38);
                    }
                    SpotlightBottomStepperKt.b(modifierD3, true, function20, iIntValue24, iIntValue25, "01", null, function21, (Function1) objX38, composer19, 115019190);
                } else {
                    composer19.D();
                }
                return Unit.f71739a;
            case 20:
                Composer composer20 = (Composer) obj;
                int iIntValue26 = ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightBottomStepperKt composableSingletons$SpotlightBottomStepperKt7 = ComposableSingletons$SpotlightBottomStepperKt.f64575a;
                if (composer20.p(iIntValue26 & 1, (iIntValue26 & 3) != 2)) {
                    OpaqueKey opaqueKey20 = ComposerKt.f7940a;
                    Object objX39 = composer20.x();
                    if (objX39 == composer$Companion$Empty$1) {
                        objX39 = SnapshotStateKt.g(0);
                        composer20.q(objX39);
                    }
                    MutableState mutableState4 = (MutableState) objX39;
                    Object objX40 = composer20.x();
                    if (objX40 == composer$Companion$Empty$1) {
                        objX40 = 1;
                        composer20.q(objX40);
                    }
                    int iIntValue27 = ((Number) objX40).intValue();
                    Modifier modifierD4 = tr.d("lambda_1359566195$lambda$0", 1.0f);
                    int iIntValue28 = ((Number) mutableState4.getF10755b()).intValue();
                    Object objX41 = composer20.x();
                    if (objX41 == composer$Companion$Empty$1) {
                        objX41 = new io(i9);
                        composer20.q(objX41);
                    }
                    Function1 function22 = (Function1) objX41;
                    Object objX42 = composer20.x();
                    if (objX42 == composer$Companion$Empty$1) {
                        objX42 = new j6(18, mutableState4);
                        composer20.q(objX42);
                    }
                    Function1 function23 = (Function1) objX42;
                    Object objX43 = composer20.x();
                    if (objX43 == composer$Companion$Empty$1) {
                        objX43 = new ko(iIntValue27, mutableState4, 2);
                        composer20.q(objX43);
                    }
                    SpotlightBottomStepperKt.b(modifierD4, true, function22, iIntValue27, iIntValue28, "01", null, function23, (Function1) objX43, composer20, 115019190);
                } else {
                    composer20.D();
                }
                return Unit.f71739a;
            case 21:
                Composer composer21 = (Composer) obj;
                int iIntValue29 = ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightHotspotsKt composableSingletons$SpotlightHotspotsKt = ComposableSingletons$SpotlightHotspotsKt.f64578a;
                if (composer21.p(iIntValue29 & 1, (iIntValue29 & 3) != 2)) {
                    OpaqueKey opaqueKey21 = ComposerKt.f7940a;
                    BoxKt.a(BackgroundKt.b(new DTFunctionNameModifier("lambda__973291884$lambda$0").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer21).f48361b.f48374a, rectangleShapeKt$RectangleShape$1), composer21, 0);
                } else {
                    composer21.D();
                }
                return Unit.f71739a;
            case 22:
                Composer composer22 = (Composer) obj;
                int iIntValue30 = ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightHotspotsKt composableSingletons$SpotlightHotspotsKt2 = ComposableSingletons$SpotlightHotspotsKt.f64578a;
                if (composer22.p(iIntValue30 & 1, (iIntValue30 & 3) != 2)) {
                    OpaqueKey opaqueKey22 = ComposerKt.f7940a;
                    BoxKt.a(BackgroundKt.b(new DTFunctionNameModifier("lambda__1431927403$lambda$0").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer22).f48361b.f48374a, rectangleShapeKt$RectangleShape$1), composer22, 0);
                } else {
                    composer22.D();
                }
                return Unit.f71739a;
            case 23:
                Composer composer23 = (Composer) obj;
                int iIntValue31 = ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightHotspotsKt composableSingletons$SpotlightHotspotsKt3 = ComposableSingletons$SpotlightHotspotsKt.f64578a;
                if (composer23.p(iIntValue31 & 1, (iIntValue31 & 3) != 2)) {
                    OpaqueKey opaqueKey23 = ComposerKt.f7940a;
                    Modifier modifierO = new DTFunctionNameModifier("lambda_1708047358$lambda$0").o(SizeKt.f5052c);
                    SpotlightUiModel spotlightUiModel = SpotlightMockKt.f64646a;
                    AssetUiModel assetUiModel = ((SpotlightSlideUiModel) CollectionsKt.B(spotlightUiModel.f64678b)).f64652c;
                    List list = ((SpotlightSlideUiModel) CollectionsKt.B(spotlightUiModel.f64678b)).g;
                    FeatureThemeUiModel featureThemeUiModel = FeatureThemeUiModel.DARK;
                    Object objX44 = composer23.x();
                    if (objX44 == composer$Companion$Empty$1) {
                        objX44 = new io(i3);
                        composer23.q(objX44);
                    }
                    SpotlightHotspotsKt.b(modifierO, featureThemeUiModel, assetUiModel, list, (Function1) objX44, 0.5625f, false, false, true, false, null, composer23, 100884534, 1728);
                } else {
                    composer23.D();
                }
                return Unit.f71739a;
            case 24:
                ((Integer) obj).intValue();
                ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt = ComposableSingletons$SpotlightScreenKt.f64582a;
                return Unit.f71739a;
            case 25:
                ((Integer) obj).intValue();
                ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt2 = ComposableSingletons$SpotlightScreenKt.f64582a;
                return Unit.f71739a;
            case 26:
                Composer composer24 = (Composer) obj;
                int iIntValue32 = ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt3 = ComposableSingletons$SpotlightScreenKt.f64582a;
                if (composer24.p(iIntValue32 & 1, (iIntValue32 & 3) != 2)) {
                    OpaqueKey opaqueKey24 = ComposerKt.f7940a;
                    SpotlightViewState spotlightViewState = new SpotlightViewState(SpotlightMockKt.f64646a.f64678b, true, false, new SpotlightContainerStateUiModel(false, false, false, false, false, false, false, false, false, false, false, 2047, null), null, false, null, null, false, 500, null);
                    Object objX45 = composer24.x();
                    if (objX45 == composer$Companion$Empty$1) {
                        objX45 = new io(29);
                        composer24.q(objX45);
                    }
                    Function1 function24 = (Function1) objX45;
                    Object objX46 = composer24.x();
                    int i13 = 5;
                    if (objX46 == composer$Companion$Empty$1) {
                        objX46 = new lo(i13);
                        composer24.q(objX46);
                    }
                    Function2 function25 = (Function2) objX46;
                    Object objX47 = composer24.x();
                    int i14 = 4;
                    if (objX47 == composer$Companion$Empty$1) {
                        objX47 = new mo(i14);
                        composer24.q(objX47);
                    }
                    Function0 function26 = (Function0) objX47;
                    Object objX48 = composer24.x();
                    if (objX48 == composer$Companion$Empty$1) {
                        objX48 = new lo(i10);
                        composer24.q(objX48);
                    }
                    Function2 function27 = (Function2) objX48;
                    Object objX49 = composer24.x();
                    if (objX49 == composer$Companion$Empty$1) {
                        objX49 = new mo(i13);
                        composer24.q(objX49);
                    }
                    Function0 function28 = (Function0) objX49;
                    Object objX50 = composer24.x();
                    if (objX50 == composer$Companion$Empty$1) {
                        objX50 = new mo(i10);
                        composer24.q(objX50);
                    }
                    Function0 function29 = (Function0) objX50;
                    Object objX51 = composer24.x();
                    if (objX51 == composer$Companion$Empty$1) {
                        objX51 = new no(i11);
                        composer24.q(objX51);
                    }
                    Function1 function30 = (Function1) objX51;
                    Object objX52 = composer24.x();
                    if (objX52 == composer$Companion$Empty$1) {
                        objX52 = new mo(i6);
                        composer24.q(objX52);
                    }
                    Function0 function31 = (Function0) objX52;
                    Object objX53 = composer24.x();
                    if (objX53 == composer$Companion$Empty$1) {
                        objX53 = new mo(i5);
                        composer24.q(objX53);
                    }
                    Function0 function32 = (Function0) objX53;
                    Object objX54 = composer24.x();
                    if (objX54 == composer$Companion$Empty$1) {
                        objX54 = new mo(i4);
                        composer24.q(objX54);
                    }
                    Function0 function33 = (Function0) objX54;
                    Object objX55 = composer24.x();
                    if (objX55 == composer$Companion$Empty$1) {
                        objX55 = new lo(i14);
                        composer24.q(objX55);
                    }
                    Function2 function34 = (Function2) objX55;
                    Object objX56 = composer24.x();
                    if (objX56 == composer$Companion$Empty$1) {
                        objX56 = new no(false ? 1 : 0);
                        composer24.q(objX56);
                    }
                    Function1 function35 = (Function1) objX56;
                    Object objX57 = composer24.x();
                    if (objX57 == composer$Companion$Empty$1) {
                        objX57 = new no(1);
                        composer24.q(objX57);
                    }
                    Function1 function36 = (Function1) objX57;
                    Object objX58 = composer24.x();
                    if (objX58 == composer$Companion$Empty$1) {
                        objX58 = new no(2);
                        composer24.q(objX58);
                    }
                    SpotlightScreenKt.b(spotlightViewState, function24, function25, function26, function27, function28, function29, function30, function31, function32, function33, function34, function35, function36, (Function1) objX58, composer24, 920350128, 28086);
                } else {
                    composer24.D();
                }
                return Unit.f71739a;
            case 27:
                ((Integer) obj).intValue();
                ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt4 = ComposableSingletons$SpotlightScreenKt.f64582a;
                return Unit.f71739a;
            case 28:
                ((Integer) obj).intValue();
                ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt5 = ComposableSingletons$SpotlightScreenKt.f64582a;
                return Unit.f71739a;
            default:
                ((Integer) obj).intValue();
                ((Integer) obj2).intValue();
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt6 = ComposableSingletons$SpotlightScreenKt.f64582a;
                return Unit.f71739a;
        }
    }
}
