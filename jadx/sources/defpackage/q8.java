package defpackage;

import androidx.compose.foundation.pager.PagerState;
import androidx.compose.material3.DateInputKt;
import androidx.compose.material3.DatePickerColors;
import androidx.compose.material3.DatePickerFormatter;
import androidx.compose.material3.SelectableDates;
import androidx.compose.material3.SheetValue;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.internal.CalendarModel;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusPropertiesKt;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.link.LinkHandler;
import com.vuitton.android.presentation.model.common.FeatureThemeUiModel;
import com.vuitton.android.presentation.screen.account.profile.AddressUiModel;
import com.vuitton.android.presentation.screen.audioguide.components.AudioGuideScreenKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideViewState;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import com.vuitton.android.presentation.screen.authentication.login.legacy.WebViewLoginScreenKt;
import com.vuitton.android.presentation.screen.booking.details.components.BookingDetailsScreenKt;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModel;
import com.vuitton.android.presentation.screen.certificates.components.visionnaire.CertificateVisionnaireComposableKt;
import com.vuitton.android.presentation.screen.certificates.model.CertificateVisionnaireUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentBffComposableKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentComposableKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.sections.AssessmentReceiveComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormBffComposableKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormComposableKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.StepState;
import com.vuitton.android.presentation.screen.feed.components.FeedHeaderKt;
import com.vuitton.android.presentation.screen.feed.components.FeedScreenKt;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.android.presentation.screen.feed.models.FeedViewState;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeReasonComposableKt;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel;
import com.vuitton.android.presentation.screen.portal.components.PortalSliderScreenKt;
import com.vuitton.android.presentation.screen.portal.models.PortalViewState;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailScreenKt;
import com.vuitton.android.presentation.screen.repairs.models.RepairsViewState;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.components.catalog.CatalogStoreModeKt;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import com.vuitton.android.presentation.screen.webview.AnalyticsWebInterface;
import com.vuitton.android.presentation.security.AkamaiSecurityHelper;
import com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class q8 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79039b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f79040c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f79041e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f79042f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f79043h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f79044i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f79045j;

    public /* synthetic */ q8(Modifier modifier, RepairsViewState repairsViewState, Function0 function0, Function1 function1, Function1 function2, Function1 function3, Function0 function4, Function1 function5, int i2) {
        this.f79039b = 15;
        this.f79045j = modifier;
        this.f79041e = repairsViewState;
        this.f79040c = function0;
        this.f79042f = function1;
        this.f79044i = function2;
        this.g = function3;
        this.d = function4;
        this.f79043h = function5;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f79039b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Object obj3 = this.f79040c;
        Object obj4 = this.f79044i;
        Object obj5 = this.f79042f;
        Object obj6 = this.f79043h;
        Object obj7 = this.g;
        Object obj8 = this.f79041e;
        Object obj9 = this.d;
        Object obj10 = this.f79045j;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                AssessmentBffComposableKt.a((DistantRepairAssessmentBffViewModel) obj10, (Function0) obj3, (Function0) obj9, (Function0) obj8, (Function1) obj5, (Function0) obj7, (Function0) obj6, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 1:
                ((Integer) obj2).getClass();
                AssessmentComposableKt.a((DistantRepairAssessmentViewModel) obj10, (Function0) obj3, (Function0) obj9, (Function0) obj8, (Function1) obj5, (Function0) obj7, (Function0) obj6, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 2:
                ((Integer) obj2).getClass();
                AssessmentReceiveComponentKt.b((InAppDispatch) obj10, (StepState) obj3, (List) obj9, (AddressUiModel) obj8, (Function1) obj5, (Function1) obj4, (Function1) obj7, (Function1) obj6, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                AudioGuideScreenKt.a((AudioGuideViewState.Success) obj10, (Function0) obj3, (Function1) obj5, (Function0) obj9, (Function1) obj4, (Function0) obj8, (Function0) obj7, (Function0) obj6, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 4:
                ((Integer) obj2).getClass();
                BookingDetailsScreenKt.d((BookingUiModel) obj10, (List) obj3, (Function1) obj5, (Function2) obj9, (Function2) obj8, (Function2) obj7, (Function1) obj4, (Function1) obj6, (Composer) obj, RecomposeScopeImplKt.a(7));
                break;
            case 5:
                ((Integer) obj2).getClass();
                CatalogStoreModeKt.b((StoreModeViewModel) obj10, (StoreModeViewState) obj8, (SheetValue) obj7, (Function1) obj5, (Function0) obj3, (Function2) obj6, (Function1) obj4, (Function0) obj9, (Composer) obj, RecomposeScopeImplKt.a(3073));
                break;
            case 6:
                ((Integer) obj2).getClass();
                CertificateVisionnaireComposableKt.a((CertificateVisionnaireUiModel) obj10, (String) obj4, (Function1) obj5, (Function0) obj3, (Function0) obj9, (Function0) obj8, (Function0) obj7, (Function0) obj6, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 7:
                ((Integer) obj2).getClass();
                DateInputKt.a((Long) obj10, (Function1) obj5, (CalendarModel) obj3, (IntRange) obj9, (DatePickerFormatter) obj8, (SelectableDates) obj7, (DatePickerColors) obj6, (FocusRequester) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 8:
                ((Integer) obj2).getClass();
                DistantRepairFormBffComposableKt.a((DistantRepairFormBffViewModel) obj10, (DatePickerViewModel) obj7, (Function0) obj3, (Function0) obj9, (Function0) obj8, (Function1) obj5, (Function1) obj4, (Function1) obj6, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 9:
                ((Integer) obj2).getClass();
                DistantRepairFormComposableKt.a((DistantRepairFormViewModel) obj10, (DatePickerViewModel) obj7, (Function0) obj3, (Function0) obj9, (Function0) obj8, (Function1) obj5, (Function1) obj4, (Function1) obj6, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 10:
                FeedViewState feedViewState = (FeedViewState) obj10;
                FeedTab feedTab = (FeedTab) obj7;
                PagerState pagerState = (PagerState) obj6;
                Function0 function0 = (Function0) obj3;
                Function0 function1 = (Function0) obj9;
                Function1 function2 = (Function1) obj5;
                Function1 function3 = (Function1) obj4;
                Function0 function4 = (Function0) obj8;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                List list = FeedScreenKt.f57835a;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ContactUsUiModel contactUsUiModel = feedViewState.f57929i;
                    FeatureThemeUiModel featureThemeUiModel = feedViewState.f57923a;
                    boolean z = feedViewState.f57930j;
                    Float fValueOf = Float.valueOf(pagerState.l() + pagerState.k());
                    boolean zK = composer.K(function2);
                    Object objX = composer.x();
                    if (zK || objX == composer$Companion$Empty$1) {
                        objX = new u8(function2, 23);
                        composer.q(objX);
                    }
                    Function0 function5 = (Function0) objX;
                    boolean zK2 = composer.K(function2);
                    Object objX2 = composer.x();
                    if (zK2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new u8(function2, 24);
                        composer.q(objX2);
                    }
                    FeedHeaderKt.a(contactUsUiModel, featureThemeUiModel, z, feedTab, fValueOf, function0, function1, function5, (Function0) objX2, function3, function4, composer, 0);
                } else {
                    composer.D();
                }
                break;
            case 11:
                ((Integer) obj2).getClass();
                GenericBottomSheet.Companion companion = GenericBottomSheet.R;
                ((GenericBottomSheet) obj10).V((String) obj7, (String) obj6, (String) obj5, (String) obj4, (Function0) obj3, (Function0) obj9, (Function0) obj8, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 12:
                ((Integer) obj2).getClass();
                OrderReturnOrExchangeReasonComposableKt.a((OrderReturnOrExchangeViewModel) obj10, (Function2) obj5, (Function2) obj4, (Function0) obj3, (Function0) obj9, (Function0) obj8, (Function0) obj7, (Function0) obj6, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 13:
                FocusRequester focusRequester = (FocusRequester) obj10;
                String str = (String) obj8;
                Function0 function6 = (Function0) obj3;
                FocusRequester focusRequester2 = (FocusRequester) obj7;
                ContactUsUiModel contactUsUiModel2 = (ContactUsUiModel) obj6;
                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj4;
                Function1 function7 = (Function1) obj5;
                Function0 function8 = (Function0) obj9;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer2.p(1 & iIntValue2, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Modifier modifierA = FocusRequesterModifierKt.a(new DTFunctionNameModifier("PLPScreen_J1OVMuw$lambda$5$36"), focusRequester);
                    Object objX3 = composer2.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new xk0(focusRequester2, 0);
                        composer2.q(objX3);
                    }
                    LVStandardTopBarKt.a(FocusPropertiesKt.a(modifierA, (Function1) objX3), null, false, str, null, null, function6, ComposableLambdaKt.b(-1882701362, new se0(1, lVModalBottomSheetState, contactUsUiModel2, function8, function7), composer2), null, null, "plp_back_button", composer2, 12582912, 48, 1846);
                } else {
                    composer2.D();
                }
                break;
            case 14:
                ((Integer) obj2).getClass();
                PortalSliderScreenKt.a((PortalViewState) obj10, (SnackbarHostState) obj6, (Function0) obj3, (Function1) obj5, (Function1) obj4, (Function0) obj9, (Function0) obj8, (Function0) obj7, (Composer) obj, RecomposeScopeImplKt.a(49));
                break;
            case 15:
                ((Integer) obj2).getClass();
                RepairDetailScreenKt.b((Modifier) obj10, (RepairsViewState) obj8, (Function0) obj3, (Function1) obj5, (Function1) obj4, (Function1) obj7, (Function0) obj9, (Function1) obj6, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            default:
                ((Integer) obj2).getClass();
                WebViewLoginScreenKt.a((AuthenticationViewModel) obj10, (AkamaiSecurityHelper) obj9, (AnalyticsWebInterface) obj8, (LinkHandler) obj7, (Logger) obj6, (String) obj5, (String) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ q8(FocusRequester focusRequester, String str, Function0 function0, FocusRequester focusRequester2, ContactUsUiModel contactUsUiModel, LVModalBottomSheetState lVModalBottomSheetState, Function1 function1, Function0 function2) {
        this.f79039b = 13;
        this.f79045j = focusRequester;
        this.f79041e = str;
        this.f79040c = function0;
        this.g = focusRequester2;
        this.f79043h = contactUsUiModel;
        this.f79044i = lVModalBottomSheetState;
        this.f79042f = function1;
        this.d = function2;
    }

    public /* synthetic */ q8(AudioGuideViewState.Success success, Function0 function0, Function1 function1, Function0 function2, Function1 function3, Function0 function4, Function0 function5, Function0 function6, int i2) {
        this.f79039b = 3;
        this.f79045j = success;
        this.f79040c = function0;
        this.f79042f = function1;
        this.d = function2;
        this.f79044i = function3;
        this.f79041e = function4;
        this.g = function5;
        this.f79043h = function6;
    }

    public /* synthetic */ q8(AuthenticationViewModel authenticationViewModel, AkamaiSecurityHelper akamaiSecurityHelper, AnalyticsWebInterface analyticsWebInterface, LinkHandler linkHandler, Logger logger, String str, String str2, Function0 function0, int i2) {
        this.f79039b = 16;
        this.f79045j = authenticationViewModel;
        this.d = akamaiSecurityHelper;
        this.f79041e = analyticsWebInterface;
        this.g = linkHandler;
        this.f79043h = logger;
        this.f79042f = str;
        this.f79044i = str2;
        this.f79040c = function0;
    }

    public /* synthetic */ q8(BookingUiModel bookingUiModel, List list, Function1 function1, Function2 function2, Function2 function3, Function2 function4, Function1 function5, Function1 function6, int i2) {
        this.f79039b = 4;
        this.f79045j = bookingUiModel;
        this.f79040c = list;
        this.f79042f = function1;
        this.d = function2;
        this.f79041e = function3;
        this.g = function4;
        this.f79044i = function5;
        this.f79043h = function6;
    }

    public /* synthetic */ q8(CertificateVisionnaireUiModel certificateVisionnaireUiModel, String str, Function1 function1, Function0 function0, Function0 function2, Function0 function3, Function0 function4, Function0 function5, int i2) {
        this.f79039b = 6;
        this.f79045j = certificateVisionnaireUiModel;
        this.f79044i = str;
        this.f79042f = function1;
        this.f79040c = function0;
        this.d = function2;
        this.f79041e = function3;
        this.g = function4;
        this.f79043h = function5;
    }

    public /* synthetic */ q8(FeedViewState feedViewState, FeedTab feedTab, PagerState pagerState, Function0 function0, Function0 function1, Function1 function2, Function1 function3, Function0 function4) {
        this.f79039b = 10;
        this.f79045j = feedViewState;
        this.g = feedTab;
        this.f79043h = pagerState;
        this.f79040c = function0;
        this.d = function1;
        this.f79042f = function2;
        this.f79044i = function3;
        this.f79041e = function4;
    }

    public /* synthetic */ q8(OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel, Function2 function2, Function2 function3, Function0 function0, Function0 function1, Function0 function4, Function0 function5, Function0 function6, int i2) {
        this.f79039b = 12;
        this.f79045j = orderReturnOrExchangeViewModel;
        this.f79042f = function2;
        this.f79044i = function3;
        this.f79040c = function0;
        this.d = function1;
        this.f79041e = function4;
        this.g = function5;
        this.f79043h = function6;
    }

    public /* synthetic */ q8(PortalViewState portalViewState, SnackbarHostState snackbarHostState, Function0 function0, Function1 function1, Function1 function2, Function0 function3, Function0 function4, Function0 function5, int i2) {
        this.f79039b = 14;
        this.f79045j = portalViewState;
        this.f79043h = snackbarHostState;
        this.f79040c = function0;
        this.f79042f = function1;
        this.f79044i = function2;
        this.d = function3;
        this.f79041e = function4;
        this.g = function5;
    }

    public /* synthetic */ q8(StoreModeViewModel storeModeViewModel, StoreModeViewState storeModeViewState, SheetValue sheetValue, Function1 function1, Function0 function0, Function2 function2, Function1 function3, Function0 function4, int i2) {
        this.f79039b = 5;
        this.f79045j = storeModeViewModel;
        this.f79041e = storeModeViewState;
        this.g = sheetValue;
        this.f79042f = function1;
        this.f79040c = function0;
        this.f79043h = function2;
        this.f79044i = function3;
        this.d = function4;
    }

    public /* synthetic */ q8(GenericBottomSheet genericBottomSheet, String str, String str2, String str3, String str4, Function0 function0, Function0 function1, Function0 function2, int i2) {
        this.f79039b = 11;
        this.f79045j = genericBottomSheet;
        this.g = str;
        this.f79043h = str2;
        this.f79042f = str3;
        this.f79044i = str4;
        this.f79040c = function0;
        this.d = function1;
        this.f79041e = function2;
    }

    public /* synthetic */ q8(InAppDispatch inAppDispatch, StepState stepState, List list, AddressUiModel addressUiModel, Function1 function1, Function1 function2, Function1 function3, Function1 function4, int i2) {
        this.f79039b = 2;
        this.f79045j = inAppDispatch;
        this.f79040c = stepState;
        this.d = list;
        this.f79041e = addressUiModel;
        this.f79042f = function1;
        this.f79044i = function2;
        this.g = function3;
        this.f79043h = function4;
    }

    public /* synthetic */ q8(Long l, Function1 function1, CalendarModel calendarModel, IntRange intRange, DatePickerFormatter datePickerFormatter, SelectableDates selectableDates, DatePickerColors datePickerColors, FocusRequester focusRequester, int i2) {
        this.f79039b = 7;
        this.f79045j = l;
        this.f79042f = function1;
        this.f79040c = calendarModel;
        this.d = intRange;
        this.f79041e = datePickerFormatter;
        this.g = selectableDates;
        this.f79043h = datePickerColors;
        this.f79044i = focusRequester;
    }

    public /* synthetic */ q8(Object obj, DatePickerViewModel datePickerViewModel, Function0 function0, Function0 function1, Function0 function2, Function1 function3, Function1 function4, Function1 function5, int i2, int i3) {
        this.f79039b = i3;
        this.f79045j = obj;
        this.g = datePickerViewModel;
        this.f79040c = function0;
        this.d = function1;
        this.f79041e = function2;
        this.f79042f = function3;
        this.f79044i = function4;
        this.f79043h = function5;
    }

    public /* synthetic */ q8(Object obj, Function0 function0, Function0 function1, Function0 function2, Function1 function3, Function0 function4, Function0 function5, Function1 function6, int i2, int i3) {
        this.f79039b = i3;
        this.f79045j = obj;
        this.f79040c = function0;
        this.d = function1;
        this.f79041e = function2;
        this.f79042f = function3;
        this.g = function4;
        this.f79043h = function5;
        this.f79044i = function6;
    }
}
