package defpackage;

import android.content.ClipboardManager;
import android.content.Context;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.navigation.NavHostController;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.FloatingTopBarStyle;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.FloatingTopBarType;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVFloatingTopBarKt;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.model.common.A11ySettings;
import com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModel;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel;
import com.vuitton.android.presentation.screen.account.myinformation.components.SeeMyInfoComposableKt;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel;
import com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionChatComposableKt;
import com.vuitton.android.presentation.screen.aicompanion.components.entrypoint.AICompanionTooltipKt;
import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionViewState;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.TrackDetailContentKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.android.presentation.screen.audioguide.models.TrackDetailUiModel;
import com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel;
import com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterComposableKt;
import com.vuitton.android.presentation.screen.booking.details.components.BookingDetailsComposableKt;
import com.vuitton.android.presentation.screen.booking.list.BookingListViewModelImpl;
import com.vuitton.android.presentation.screen.cart.CommercialNotification;
import com.vuitton.android.presentation.screen.cart.components.bottomsheets.NativeCartBottomSheetScreen;
import com.vuitton.android.presentation.screen.cart.components.bottomsheets.NativeCartBottomSheetsKt;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.sections.AssessmentPreliminaryBffComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.sections.AssessmentPreliminaryComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.formsections.DistantRepairInitiateComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.StepState;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairFormViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.Step1StateUIModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.components.OptOutPrivacyMenuNavHostKt;
import com.vuitton.android.presentation.screen.orders.OrderNavHostKt;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModel;
import com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaLocationFormScreenKt;
import com.vuitton.android.presentation.screen.osa.form.storeselection.models.OsaLocationFormViewState;
import com.vuitton.android.presentation.screen.osa.models.AppointmentTypeUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaFormItemUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.components.PersonalSelectionsCurationAdvisorLookComposableKt;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorLookViewState;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorViewState;
import com.vuitton.android.presentation.screen.plp.components.composables.PSPComposableKt;
import com.vuitton.android.presentation.screen.plp.components.screens.PSPStyle;
import com.vuitton.android.presentation.screen.plp.viewmodels.PSPViewModel;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceUiModel;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailScreenKt;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListBffItemKt;
import com.vuitton.android.presentation.screen.repairs.models.RepairsViewState;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceShortUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.RepairsBffViewState;
import com.vuitton.android.presentation.screen.search.components.SuccessSearchComposableKt;
import com.vuitton.android.presentation.screen.search.models.SearchListState;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightVideoScreenKt;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel;
import com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.StoreModeNavHostKt;
import com.vuitton.android.presentation.screen.storemode.StoreModeRoute;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.components.catalog.CatalogStoreModeKt;
import com.vuitton.android.presentation.screen.storemode.components.catalog.StoreModeLevel3ScreenKt;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModel;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.components.TheLookImmersiveArticleDetailComposableKt;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.StateFlow;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class o implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76646b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f76647c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f76648e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f76649f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f76650h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f76651i;

    public /* synthetic */ o(Modifier modifier, String str, String str2, String str3, SpotlightContainerStateUiModel spotlightContainerStateUiModel, Function0 function0, Function0 function1, int i2) {
        this.f76646b = 19;
        this.f76649f = modifier;
        this.g = str;
        this.f76648e = str2;
        this.f76650h = str3;
        this.f76651i = spotlightContainerStateUiModel;
        this.f76647c = function0;
        this.d = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76646b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        int i3 = 3;
        Object obj3 = this.f76647c;
        Object obj4 = this.f76650h;
        Object obj5 = this.f76651i;
        Object obj6 = this.f76648e;
        Object obj7 = this.d;
        Object obj8 = this.g;
        Object obj9 = this.f76649f;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                AICompanionChatComposableKt.a((AICompanionViewModel) obj9, (ContributionLinkNavigator) obj8, (Function0) obj3, (Function0) obj7, (Function1) obj4, (Function3) obj5, (Function0) obj6, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 1:
                Function0 function0 = (Function0) obj3;
                AICompanionViewState aICompanionViewState = (AICompanionViewState) obj9;
                Function0 function1 = (Function0) obj7;
                HapticFeedback hapticFeedback = (HapticFeedback) obj8;
                ClipboardManager clipboardManager = (ClipboardManager) obj4;
                Function0 function2 = (Function0) obj6;
                FocusRequester focusRequester = (FocusRequester) obj5;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    LVFloatingTopBarKt.a(null, FloatingTopBarType.Close, FloatingTopBarStyle.Secondary, null, StringResources_androidKt.c(composer, R.string.alt_close), function0, ComposableLambdaKt.b(746862209, new j0(aICompanionViewState, function1, hapticFeedback, clipboardManager, function2, focusRequester), composer), null, composer, 1573296, 137);
                } else {
                    composer.D();
                }
                break;
            case 2:
                MutableState mutableState = (MutableState) obj9;
                Density density = (Density) obj8;
                FocusRequester focusRequester2 = (FocusRequester) obj3;
                Rect rect = (Rect) obj7;
                MutableIntState mutableIntState = (MutableIntState) obj6;
                LayoutDirection layoutDirection = (LayoutDirection) obj4;
                MutableState mutableState2 = (MutableState) obj5;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                float f2 = AICompanionTooltipKt.f52836a;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    AnimatedVisibilityKt.e(((Boolean) mutableState.getF10755b()).booleanValue(), null, EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3), EnterExitTransitionKt.h(null, 3), null, ComposableLambdaKt.b(1689100306, new w0(mutableIntState, mutableState, mutableState2, focusRequester2, rect, density, layoutDirection), composer2), composer2, 200064, 18);
                } else {
                    composer2.D();
                }
                break;
            case 3:
                ((Integer) obj2).getClass();
                AssessmentPreliminaryBffComponentKt.a((StepState) obj9, (CareServiceDetailUiModel.Assessment) obj8, (Function1) obj4, (Function0) obj3, (Function0) obj7, (Function0) obj6, (Function1) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 4:
                ((Integer) obj2).getClass();
                AssessmentPreliminaryComponentKt.b((InAppDispatch) obj9, (com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel) obj8, (String) obj5, (Function0) obj3, (Function0) obj7, (Function0) obj6, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 5:
                ((Integer) obj2).getClass();
                BookingDetailsComposableKt.a((BookingListViewModelImpl) obj9, (StateFlow) obj8, (String) obj7, (SnackbarHostState) obj6, (Function1) obj4, (Function0) obj3, (Function2) obj5, (Composer) obj, RecomposeScopeImplKt.a(3073));
                break;
            case 6:
                ((Integer) obj2).getClass();
                DistantRepairInitiateComponentKt.a((DistantRepairFormViewState) obj9, (StepState) obj8, (Step1StateUIModel) obj7, (Function0) obj3, (Function1) obj4, (Function1) obj6, (Function1) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 7:
                ((Integer) obj2).getClass();
                NativeCartBottomSheetsKt.c((NativeCartBottomSheetScreen) obj9, (CartItemUiModel) obj8, (ReinsuranceUiModel) obj6, (CommercialNotification) obj5, (Function0) obj3, (Function0) obj7, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 8:
                ((Integer) obj2).getClass();
                NativeRegisterComposableKt.a((NativeRegisterViewModel) obj9, (AddressAutocompleteViewModel) obj8, (Function0) obj3, (Function1) obj4, (Function0) obj7, (Function0) obj6, (Function0) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 9:
                ((Integer) obj2).getClass();
                OptOutPrivacyMenuNavHostKt.a((NavHostController) obj9, (Function0) obj3, (Function0) obj7, (Function0) obj6, (Function0) obj8, (Function0) obj4, (Function0) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 10:
                ((Integer) obj2).getClass();
                OrderNavHostKt.a((NavHostController) obj9, (OrderViewModel) obj8, (String) obj7, (Function0) obj3, (Function1) obj4, (Function1) obj6, (Function1) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 11:
                ((Integer) obj2).getClass();
                OsaLocationFormScreenKt.d((OsaFormItemUiModel) obj9, (String) obj8, (AppointmentTypeUiModel) obj3, (TimeSlotUiModel) obj7, (Function2) obj6, (Function2) obj5, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 12:
                ((Integer) obj2).getClass();
                OsaLocationFormScreenKt.a((OsaLocationFormViewState) obj9, (Function0) obj3, (Function0) obj7, (Function0) obj6, (Function2) obj8, (Function2) obj5, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 13:
                ((Integer) obj2).getClass();
                PSPComposableKt.a((PSPViewModel) obj9, (QuickAccessFiltersViewModel) obj8, (PSPStyle) obj5, (Function1) obj4, (Function0) obj3, (Function0) obj7, (Function0) obj6, (Composer) obj, RecomposeScopeImplKt.a(385));
                break;
            case 14:
                ((Integer) obj2).getClass();
                PersonalSelectionsCurationAdvisorLookComposableKt.a((PersonalSelectionsCurationAdvisorLookViewState) obj9, (PersonalSelectionsCurationAdvisorViewState) obj8, (SnackbarHostState) obj7, (Function0) obj3, (Function1) obj4, (Function1) obj6, (Function1) obj5, (Composer) obj, RecomposeScopeImplKt.a(385));
                break;
            case 15:
                ((Integer) obj2).getClass();
                RepairDetailScreenKt.c((Modifier) obj9, (RepairsViewState) obj8, (AssessmentViewState) obj7, (Function2) obj6, (Function1) obj4, (Function1) obj5, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 16:
                RepairsViewState repairsViewState = (RepairsViewState) obj9;
                Function0 function3 = (Function0) obj3;
                Function1 function4 = (Function1) obj4;
                Function1 function5 = (Function1) obj8;
                Function1 function6 = (Function1) obj6;
                Function0 function7 = (Function0) obj7;
                Function1 function8 = (Function1) obj5;
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    if (repairsViewState.f64018h != null) {
                        Modifier modifierB = WindowInsetsPadding_androidKt.b(BackgroundKt.b(pq0.j(-803089724, composer3, "RepairsDetailScreen$lambda$8"), LVAppDesignKitTheme.c(composer3).f48361b.f48374a, RectangleShapeKt.f8913a));
                        boolean zY = composer3.y(repairsViewState) | composer3.K(function3) | composer3.K(function4);
                        Object objX = composer3.x();
                        if (zY || objX == composer$Companion$Empty$1) {
                            objX = new sm0(repairsViewState, function3, function4, 11);
                            composer3.q(objX);
                        }
                        Function0 function9 = (Function0) objX;
                        boolean zK = composer3.K(function4);
                        Object objX2 = composer3.x();
                        if (zK || objX2 == composer$Companion$Empty$1) {
                            objX2 = new jo0(function4, i3);
                            composer3.q(objX2);
                        }
                        RepairDetailScreenKt.b(modifierB, repairsViewState, function9, (Function1) objX2, function5, function6, function7, function8, composer3, 0);
                        composer3.F();
                    } else {
                        composer3.L(-802139295);
                        composer3.F();
                    }
                } else {
                    composer3.D();
                }
                break;
            case 17:
                ((Integer) obj2).getClass();
                RepairListBffItemKt.c((RepairsBffViewState) obj9, (CareServiceShortUiModel) obj8, (Function0) obj3, (Function1) obj4, (Function1) obj6, (Function1) obj5, (Function0) obj7, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 18:
                ((Integer) obj2).getClass();
                SeeMyInfoComposableKt.a((MyInformationViewModel) obj9, (Function0) obj3, (Function0) obj7, (Function0) obj6, (Function0) obj8, (Function0) obj4, (Function0) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 19:
                ((Integer) obj2).getClass();
                SpotlightVideoScreenKt.a((Modifier) obj9, (String) obj8, (String) obj6, (String) obj4, (SpotlightContainerStateUiModel) obj5, (Function0) obj3, (Function0) obj7, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 20:
                StoreModeViewModel storeModeViewModel = (StoreModeViewModel) obj9;
                PSPStoreModeViewModel pSPStoreModeViewModel = (PSPStoreModeViewModel) obj8;
                ManagedActivityResultLauncher managedActivityResultLauncher = (ManagedActivityResultLauncher) obj7;
                Context context = (Context) obj6;
                Function0 function10 = (Function0) obj3;
                Function1 function11 = (Function1) obj4;
                MutableState mutableState3 = (MutableState) obj5;
                Composer composer4 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    StoreModeViewState storeModeViewState = (StoreModeViewState) mutableState3.getF10755b();
                    boolean zY2 = composer4.y(storeModeViewModel) | composer4.y(managedActivityResultLauncher) | composer4.y(context);
                    Object objX3 = composer4.x();
                    if (zY2 || objX3 == composer$Companion$Empty$1) {
                        objX3 = new cl0(storeModeViewModel, managedActivityResultLauncher, context, 14);
                        composer4.q(objX3);
                    }
                    CatalogStoreModeKt.a(storeModeViewModel, pSPStoreModeViewModel, storeModeViewState, (Function1) objX3, function10, function11, composer4, 0);
                } else {
                    composer4.D();
                }
                break;
            case 21:
                ((Integer) obj2).getClass();
                StoreModeLevel3ScreenKt.a((StoreModeViewModel) obj9, (StoreModeViewState) obj8, (String) obj6, (String) obj5, (Function1) obj4, (Function0) obj3, (Function0) obj7, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 22:
                ((Integer) obj2).getClass();
                StoreModeNavHostKt.a((NavHostController) obj9, (StoreModeRoute) obj8, (StoreModeViewModel) obj6, (PSPStoreModeViewModel) obj5, (Function0) obj3, (Function0) obj7, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 23:
                ((Integer) obj2).getClass();
                SuccessSearchComposableKt.c((List) obj9, (List) obj8, (SearchListState) obj7, (Function2) obj6, (Function1) obj4, (Function2) obj5, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 24:
                ((Integer) obj2).getClass();
                TheLookImmersiveArticleDetailComposableKt.a((TheLookImmersiveArticleViewModel) obj9, (String) obj8, (String) obj7, (Function1) obj4, (Function2) obj6, (Function0) obj3, (Function3) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            default:
                ((Integer) obj2).getClass();
                TrackDetailContentKt.a((TrackDetailUiModel) obj9, (LVColorScheme) obj8, (A11ySettings) obj7, (AudioGuideUiModel.AudioGuideColorsUiModel) obj6, (AudioGuideUiModel.TrackUiModel) obj5, (Function1) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ o(MutableIntState mutableIntState, MutableState mutableState, MutableState mutableState2, FocusRequester focusRequester, Rect rect, Density density, LayoutDirection layoutDirection) {
        this.f76646b = 2;
        this.f76649f = mutableState;
        this.g = density;
        this.f76647c = focusRequester;
        this.d = rect;
        this.f76648e = mutableIntState;
        this.f76650h = layoutDirection;
        this.f76651i = mutableState2;
    }

    public /* synthetic */ o(AICompanionViewModel aICompanionViewModel, ContributionLinkNavigator contributionLinkNavigator, Function0 function0, Function0 function1, Function1 function2, Function3 function3, Function0 function4, int i2) {
        this.f76646b = 0;
        this.f76649f = aICompanionViewModel;
        this.g = contributionLinkNavigator;
        this.f76647c = function0;
        this.d = function1;
        this.f76650h = function2;
        this.f76651i = function3;
        this.f76648e = function4;
    }

    public /* synthetic */ o(TrackDetailUiModel trackDetailUiModel, LVColorScheme lVColorScheme, A11ySettings a11ySettings, AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel, AudioGuideUiModel.TrackUiModel trackUiModel, Function1 function1, Function0 function0, int i2) {
        this.f76646b = 25;
        this.f76649f = trackDetailUiModel;
        this.g = lVColorScheme;
        this.d = a11ySettings;
        this.f76648e = audioGuideColorsUiModel;
        this.f76651i = trackUiModel;
        this.f76650h = function1;
        this.f76647c = function0;
    }

    public /* synthetic */ o(NativeRegisterViewModel nativeRegisterViewModel, AddressAutocompleteViewModel addressAutocompleteViewModel, Function0 function0, Function1 function1, Function0 function2, Function0 function3, Function0 function4, int i2) {
        this.f76646b = 8;
        this.f76649f = nativeRegisterViewModel;
        this.g = addressAutocompleteViewModel;
        this.f76647c = function0;
        this.f76650h = function1;
        this.d = function2;
        this.f76648e = function3;
        this.f76651i = function4;
    }

    public /* synthetic */ o(BookingListViewModelImpl bookingListViewModelImpl, StateFlow stateFlow, String str, SnackbarHostState snackbarHostState, Function1 function1, Function0 function0, Function2 function2, int i2) {
        this.f76646b = 5;
        this.f76649f = bookingListViewModelImpl;
        this.g = stateFlow;
        this.d = str;
        this.f76648e = snackbarHostState;
        this.f76650h = function1;
        this.f76647c = function0;
        this.f76651i = function2;
    }

    public /* synthetic */ o(StepState stepState, CareServiceDetailUiModel.Assessment assessment, Function1 function1, Function0 function0, Function0 function2, Function0 function3, Function1 function4, int i2) {
        this.f76646b = 3;
        this.f76649f = stepState;
        this.g = assessment;
        this.f76650h = function1;
        this.f76647c = function0;
        this.d = function2;
        this.f76648e = function3;
        this.f76651i = function4;
    }

    public /* synthetic */ o(OsaLocationFormViewState osaLocationFormViewState, Function0 function0, Function0 function1, Function0 function2, Function2 function3, Function2 function4, Function1 function5, int i2) {
        this.f76646b = 12;
        this.f76649f = osaLocationFormViewState;
        this.f76647c = function0;
        this.d = function1;
        this.f76648e = function2;
        this.g = function3;
        this.f76651i = function4;
        this.f76650h = function5;
    }

    public /* synthetic */ o(OsaFormItemUiModel osaFormItemUiModel, String str, AppointmentTypeUiModel appointmentTypeUiModel, TimeSlotUiModel timeSlotUiModel, Function2 function2, Function2 function3, Function1 function1, int i2) {
        this.f76646b = 11;
        this.f76649f = osaFormItemUiModel;
        this.g = str;
        this.f76647c = appointmentTypeUiModel;
        this.d = timeSlotUiModel;
        this.f76648e = function2;
        this.f76651i = function3;
        this.f76650h = function1;
    }

    public /* synthetic */ o(PSPViewModel pSPViewModel, QuickAccessFiltersViewModel quickAccessFiltersViewModel, PSPStyle pSPStyle, Function1 function1, Function0 function0, Function0 function2, Function0 function3, int i2) {
        this.f76646b = 13;
        this.f76649f = pSPViewModel;
        this.g = quickAccessFiltersViewModel;
        this.f76651i = pSPStyle;
        this.f76650h = function1;
        this.f76647c = function0;
        this.d = function2;
        this.f76648e = function3;
    }

    public /* synthetic */ o(RepairsViewState repairsViewState, Function0 function0, Function0 function1, Function1 function2, Function1 function3, Function1 function4, Function1 function5) {
        this.f76646b = 16;
        this.f76649f = repairsViewState;
        this.f76647c = function0;
        this.f76650h = function2;
        this.g = function3;
        this.f76648e = function4;
        this.d = function1;
        this.f76651i = function5;
    }

    public /* synthetic */ o(RepairsBffViewState repairsBffViewState, CareServiceShortUiModel careServiceShortUiModel, Function0 function0, Function1 function1, Function1 function2, Function1 function3, Function0 function4, int i2) {
        this.f76646b = 17;
        this.f76649f = repairsBffViewState;
        this.g = careServiceShortUiModel;
        this.f76647c = function0;
        this.f76650h = function1;
        this.f76648e = function2;
        this.f76651i = function3;
        this.d = function4;
    }

    public /* synthetic */ o(StoreModeViewModel storeModeViewModel, PSPStoreModeViewModel pSPStoreModeViewModel, ManagedActivityResultLauncher managedActivityResultLauncher, Context context, Function0 function0, Function1 function1, MutableState mutableState) {
        this.f76646b = 20;
        this.f76649f = storeModeViewModel;
        this.g = pSPStoreModeViewModel;
        this.d = managedActivityResultLauncher;
        this.f76648e = context;
        this.f76647c = function0;
        this.f76650h = function1;
        this.f76651i = mutableState;
    }

    public /* synthetic */ o(StoreModeViewModel storeModeViewModel, StoreModeViewState storeModeViewState, String str, String str2, Function1 function1, Function0 function0, Function0 function2, int i2) {
        this.f76646b = 21;
        this.f76649f = storeModeViewModel;
        this.g = storeModeViewState;
        this.f76648e = str;
        this.f76651i = str2;
        this.f76650h = function1;
        this.f76647c = function0;
        this.d = function2;
    }

    public /* synthetic */ o(TheLookImmersiveArticleViewModel theLookImmersiveArticleViewModel, String str, String str2, Function1 function1, Function2 function2, Function0 function0, Function3 function3, int i2) {
        this.f76646b = 24;
        this.f76649f = theLookImmersiveArticleViewModel;
        this.g = str;
        this.d = str2;
        this.f76650h = function1;
        this.f76648e = function2;
        this.f76647c = function0;
        this.f76651i = function3;
    }

    public /* synthetic */ o(InAppDispatch inAppDispatch, com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel careServiceDetailUiModel, String str, Function0 function0, Function0 function1, Function0 function2, Function1 function3, int i2) {
        this.f76646b = 4;
        this.f76649f = inAppDispatch;
        this.g = careServiceDetailUiModel;
        this.f76651i = str;
        this.f76647c = function0;
        this.d = function1;
        this.f76648e = function2;
        this.f76650h = function3;
    }

    public /* synthetic */ o(Object obj, Object obj2, Object obj3, Object obj4, Function0 function0, Function0 function1, Function1 function2, int i2, int i3) {
        this.f76646b = i3;
        this.f76649f = obj;
        this.g = obj2;
        this.f76648e = obj3;
        this.f76651i = obj4;
        this.f76647c = function0;
        this.d = function1;
        this.f76650h = function2;
    }

    public /* synthetic */ o(Object obj, Object obj2, Object obj3, Function0 function0, Function1 function1, Function1 function2, Function1 function3, int i2, int i3) {
        this.f76646b = i3;
        this.f76649f = obj;
        this.g = obj2;
        this.d = obj3;
        this.f76647c = function0;
        this.f76650h = function1;
        this.f76648e = function2;
        this.f76651i = function3;
    }

    public /* synthetic */ o(Object obj, Object obj2, Object obj3, Function2 function2, Function1 function1, Function function, Function0 function0, int i2, int i3) {
        this.f76646b = i3;
        this.f76649f = obj;
        this.g = obj2;
        this.d = obj3;
        this.f76648e = function2;
        this.f76650h = function1;
        this.f76651i = function;
        this.f76647c = function0;
    }

    public /* synthetic */ o(Object obj, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function0 function4, Function0 function5, int i2, int i3) {
        this.f76646b = i3;
        this.f76649f = obj;
        this.f76647c = function0;
        this.d = function1;
        this.f76648e = function2;
        this.g = function3;
        this.f76650h = function4;
        this.f76651i = function5;
    }

    public /* synthetic */ o(Function0 function0, AICompanionViewState aICompanionViewState, Function0 function1, HapticFeedback hapticFeedback, ClipboardManager clipboardManager, Function0 function2, FocusRequester focusRequester) {
        this.f76646b = 1;
        this.f76647c = function0;
        this.f76649f = aICompanionViewState;
        this.d = function1;
        this.g = hapticFeedback;
        this.f76650h = clipboardManager;
        this.f76648e = function2;
        this.f76651i = focusRequester;
    }
}
