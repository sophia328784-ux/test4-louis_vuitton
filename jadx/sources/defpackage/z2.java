package defpackage;

import android.content.Context;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.AnnotatedString;
import com.kizitonwose.calendar.core.CalendarDay;
import com.sightcall.core.consent.ConsentViewModel;
import com.sightcall.core.consent.compose.ConsentViewKt;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.common.editorial.components.header.HeaderKt;
import com.vuitton.android.presentation.compose.components.LVCalendarKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.account.inbox.components.InboxEmptyNotificationListScreenKt;
import com.vuitton.android.presentation.screen.authentication.accountactivation.components.AccountActivationOtpStepKt;
import com.vuitton.android.presentation.screen.authentication.login.components.NativeLoginScreenKt;
import com.vuitton.android.presentation.screen.authentication.login.models.NativeLoginViewState;
import com.vuitton.android.presentation.screen.booking.confirmation.components.BookingConfirmationCardKt;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModel;
import com.vuitton.android.presentation.screen.catalog.components.CatalogCategoryScreenKt;
import com.vuitton.android.presentation.screen.catalog.models.CatalogViewState;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.GridModes;
import com.vuitton.android.presentation.screen.certificates.components.visionnaire.CertificateVisionnaireScreenKt;
import com.vuitton.android.presentation.screen.certificates.model.CertificateVisionnaireUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.options.notifications.components.NotificationPermissionBottomSheetKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderExchangeReviewScreenKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeComponentsKt;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnReasonUiModel;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.components.OsaContactFormBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.pdp.bottomsheet.CrossSellAddToCartBottomSheetKt;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpCustomizationContainerKt;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.instore.components.PersonalSelectionsInStoreComposableKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.PLPItemsKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.ProductCellReducedKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.repairs.components.RepairDetailAddressBookComposableKt;
import com.vuitton.android.presentation.screen.repairs.components.RepairPaymentFailedComposableKt;
import com.vuitton.android.presentation.screen.search.components.SearchHintCardComposableKt;
import com.vuitton.android.presentation.screen.services.components.ServicesScreenKt;
import com.vuitton.android.presentation.screen.storemode.components.StoreModeHomeComposableKt;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.personalselections.PersonalSelections;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.collections.immutable.ImmutableList;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class z2 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81504b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f81505c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f81506e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f81507f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f81508h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f81509i;

    public /* synthetic */ z2(int i2, Function2 function2, Function3 function3, Function2 function4, Function2 function5, WindowInsets windowInsets, Function2 function6, int i3) {
        this.f81504b = 20;
        this.d = i2;
        this.f81506e = function2;
        this.f81507f = function3;
        this.g = function4;
        this.f81505c = function5;
        this.f81508h = windowInsets;
        this.f81509i = function6;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f81504b;
        int i3 = this.d;
        Object obj3 = this.f81505c;
        Object obj4 = this.g;
        Object obj5 = this.f81507f;
        Object obj6 = this.f81509i;
        Object obj7 = this.f81508h;
        Object obj8 = this.f81506e;
        switch (i2) {
            case 0:
                ((Integer) obj2).intValue();
                AccountActivationOtpStepKt.a((ColumnScope) obj8, (String) obj5, (String) obj4, (Function1) obj3, (Function0) obj7, (Function0) obj6, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 1:
                ((Integer) obj2).getClass();
                BookingConfirmationCardKt.a((Modifier) obj8, (BookingUiModel) obj5, (Function1) obj3, (Function1) obj4, (Function2) obj7, (Function1) obj6, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 2:
                ((Integer) obj2).getClass();
                CatalogCategoryScreenKt.a((Modifier) obj8, (CatalogViewState) obj5, (Function1) obj3, (Function1) obj4, (Function0) obj7, (Function1) obj6, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 3:
                ((Integer) obj2).getClass();
                CertificateVisionnaireScreenKt.a((CertificateVisionnaireUiModel) obj8, (String) obj5, (Function1) obj3, (Function0) obj7, (Function0) obj6, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 4:
                int iIntValue = ((Integer) obj2).intValue();
                return ConsentViewKt.ConsentView$lambda$1((Context) obj8, (String) obj5, (AnnotatedString) obj4, (Function0) obj7, (Function0) obj6, (ConsentViewModel) obj3, this.d, (Composer) obj, iIntValue);
            case 5:
                ((Integer) obj2).getClass();
                CrossSellAddToCartBottomSheetKt.a((String) obj5, (String) obj4, (ImmutableList) obj8, (Function0) obj7, (Function2) obj6, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 6:
                ((Integer) obj2).getClass();
                HeaderKt.a((Modifier) obj8, (LVColorScheme) obj3, (String) obj5, (String) obj4, (AssetImageUiModel) obj6, (Function0) obj7, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 7:
                ((Integer) obj2).getClass();
                InboxEmptyNotificationListScreenKt.a((PermissionsUiModel) obj8, (ComposableLambdaImpl) obj5, (Function0) obj7, (Function0) obj6, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 8:
                ((Integer) obj2).intValue();
                LVCalendarKt.c((CalendarDay) obj8, (LocalDate) obj5, (LocalDate) obj4, (List) obj7, (Locale) obj6, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 9:
                ((Integer) obj2).intValue();
                NativeLoginScreenKt.a((NativeLoginViewState) obj8, (SnackbarHostState) obj5, (Function2) obj4, (Function0) obj7, (Function1) obj3, (Function0) obj6, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 10:
                ((Integer) obj2).getClass();
                NotificationPermissionBottomSheetKt.a((String) obj5, (StringResourceUiModel) obj8, (StringResourceUiModel) obj4, (StringResourceUiModel) obj3, (Function0) obj7, (Function0) obj6, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 11:
                ((Integer) obj2).intValue();
                OrderExchangeReviewScreenKt.d((OrderReturnOrExchangeViewState) obj8, (SnackbarHostState) obj5, (Function0) obj7, (Function0) obj6, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 12:
                ((Integer) obj2).getClass();
                OrderReturnOrExchangeComponentsKt.i((Modifier) obj8, (OrderReturnReasonUiModel) obj4, (List) obj3, (String) obj5, (OrderReturnOrExchangeItemUiModel) obj7, (Function2) obj6, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 13:
                ((Integer) obj2).getClass();
                OsaContactFormBottomSheetScreenKt.f((Modifier) obj8, (InAppDispatch) obj4, (String) obj5, (LocalDateTime) obj3, (Function0) obj7, (Function0) obj6, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 14:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                PLPItemsKt.c((GridModes) obj8, (ArrayList) obj5, this.d, (Function1) obj3, (Function1) obj4, (Function2) obj7, (Function2) obj6, (Composer) obj, iA);
                return Unit.f71739a;
            case 15:
                ((Integer) obj2).getClass();
                PdpCustomizationContainerKt.a((Modifier) obj8, (String) obj5, (String) obj4, (String) obj3, (String) obj6, (Function0) obj7, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 16:
                ((Integer) obj2).getClass();
                PersonalSelectionsInStoreComposableKt.a((String) obj5, (ContactUsUiModel) obj8, (Function0) obj7, (Function0) obj6, (Function1) obj3, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 17:
                ((Integer) obj2).getClass();
                ProductCellReducedKt.a((Modifier) obj8, (PlpProductUiModel) obj5, (Function0) obj7, (Function1) obj3, (Function1) obj4, (Function2) obj6, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 18:
                ((Integer) obj2).getClass();
                RepairDetailAddressBookComposableKt.c((AssessmentViewState) obj8, (String) obj5, (Function1) obj3, (Function1) obj4, (Function1) obj6, (Function0) obj7, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 19:
                ((Integer) obj2).getClass();
                RepairPaymentFailedComposableKt.c((String) obj5, (String) obj4, (Function0) obj7, (ContactUsUiModel) obj8, (Function1) obj3, (LVModalBottomSheetState) obj6, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 20:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                ScaffoldKt.b(this.d, (Function2) obj8, (Function3) obj5, (Function2) obj4, (Function2) obj3, (WindowInsets) obj7, (Function2) obj6, (Composer) obj, iA2);
                return Unit.f71739a;
            case 21:
                ((Integer) obj2).getClass();
                SearchHintCardComposableKt.a((Modifier) obj8, (String) obj5, (String) obj4, (AssetImageUiModel) obj3, (ContributionLinkUiModel) obj7, (Function2) obj6, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 22:
                ((Integer) obj2).getClass();
                ServicesScreenKt.g((String) obj5, (String) obj4, (PersonalSelections) obj8, (Function0) obj7, (Function0) obj6, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            default:
                ((Integer) obj2).getClass();
                StoreModeHomeComposableKt.a((StoreModeViewState) obj8, (Function0) obj7, (Function0) obj6, (Function0) obj5, (ComposableLambdaImpl) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ z2(Modifier modifier, LVColorScheme lVColorScheme, String str, String str2, AssetImageUiModel assetImageUiModel, Function0 function0, int i2) {
        this.f81504b = 6;
        this.f81506e = modifier;
        this.f81505c = lVColorScheme;
        this.f81507f = str;
        this.g = str2;
        this.f81509i = assetImageUiModel;
        this.f81508h = function0;
        this.d = i2;
    }

    public /* synthetic */ z2(Modifier modifier, OrderReturnReasonUiModel orderReturnReasonUiModel, List list, String str, OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel, Function2 function2, int i2) {
        this.f81504b = 12;
        this.f81506e = modifier;
        this.g = orderReturnReasonUiModel;
        this.f81505c = list;
        this.f81507f = str;
        this.f81508h = orderReturnOrExchangeItemUiModel;
        this.f81509i = function2;
        this.d = i2;
    }

    public /* synthetic */ z2(Modifier modifier, PlpProductUiModel plpProductUiModel, Function0 function0, Function1 function1, Function1 function2, Function2 function3, int i2) {
        this.f81504b = 17;
        this.f81506e = modifier;
        this.f81507f = plpProductUiModel;
        this.f81508h = function0;
        this.f81505c = function1;
        this.g = function2;
        this.f81509i = function3;
        this.d = i2;
    }

    public /* synthetic */ z2(Modifier modifier, InAppDispatch inAppDispatch, String str, LocalDateTime localDateTime, Function0 function0, Function0 function1, int i2) {
        this.f81504b = 13;
        this.f81506e = modifier;
        this.g = inAppDispatch;
        this.f81507f = str;
        this.f81505c = localDateTime;
        this.f81508h = function0;
        this.f81509i = function1;
        this.d = i2;
    }

    public /* synthetic */ z2(Modifier modifier, Object obj, Function1 function1, Function1 function2, Function function, Function1 function3, int i2, int i3) {
        this.f81504b = i3;
        this.f81506e = modifier;
        this.f81507f = obj;
        this.f81505c = function1;
        this.g = function2;
        this.f81508h = function;
        this.f81509i = function3;
        this.d = i2;
    }

    public /* synthetic */ z2(Modifier modifier, String str, String str2, String str3, String str4, Function0 function0, int i2) {
        this.f81504b = 15;
        this.f81506e = modifier;
        this.f81507f = str;
        this.g = str2;
        this.f81505c = str3;
        this.f81509i = str4;
        this.f81508h = function0;
        this.d = i2;
    }

    public /* synthetic */ z2(NativeLoginViewState nativeLoginViewState, SnackbarHostState snackbarHostState, Function2 function2, Function0 function0, Function1 function1, Function0 function3, int i2) {
        this.f81504b = 9;
        this.f81506e = nativeLoginViewState;
        this.f81507f = snackbarHostState;
        this.g = function2;
        this.f81508h = function0;
        this.f81505c = function1;
        this.f81509i = function3;
        this.d = i2;
    }

    public /* synthetic */ z2(GridModes gridModes, ArrayList arrayList, int i2, Function1 function1, Function1 function2, Function2 function3, Function2 function4, int i3) {
        this.f81504b = 14;
        this.f81506e = gridModes;
        this.f81507f = arrayList;
        this.d = i2;
        this.f81505c = function1;
        this.g = function2;
        this.f81508h = function3;
        this.f81509i = function4;
    }

    public /* synthetic */ z2(CertificateVisionnaireUiModel certificateVisionnaireUiModel, String str, Function1 function1, Function0 function0, Function0 function2, Function0 function3, int i2) {
        this.f81504b = 3;
        this.f81506e = certificateVisionnaireUiModel;
        this.f81507f = str;
        this.f81505c = function1;
        this.f81508h = function0;
        this.f81509i = function2;
        this.g = function3;
        this.d = i2;
    }

    public /* synthetic */ z2(AssessmentViewState assessmentViewState, String str, Function1 function1, Function1 function2, Function1 function3, Function0 function0, int i2) {
        this.f81504b = 18;
        this.f81506e = assessmentViewState;
        this.f81507f = str;
        this.f81505c = function1;
        this.g = function2;
        this.f81509i = function3;
        this.f81508h = function0;
        this.d = i2;
    }

    public /* synthetic */ z2(StoreModeViewState storeModeViewState, Function0 function0, Function0 function1, Function0 function2, ComposableLambdaImpl composableLambdaImpl, Function0 function3, int i2) {
        this.f81504b = 23;
        this.f81506e = storeModeViewState;
        this.f81508h = function0;
        this.f81509i = function1;
        this.f81507f = function2;
        this.g = composableLambdaImpl;
        this.f81505c = function3;
        this.d = i2;
    }

    public /* synthetic */ z2(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, int i2, int i3) {
        this.f81504b = i3;
        this.f81506e = obj;
        this.f81507f = obj2;
        this.g = obj3;
        this.f81508h = obj4;
        this.f81509i = obj5;
        this.f81505c = obj6;
        this.d = i2;
    }

    public /* synthetic */ z2(Object obj, Object obj2, Function0 function0, Function0 function1, Function0 function2, Function0 function3, int i2, int i3) {
        this.f81504b = i3;
        this.f81506e = obj;
        this.f81507f = obj2;
        this.f81508h = function0;
        this.f81509i = function1;
        this.g = function2;
        this.f81505c = function3;
        this.d = i2;
    }

    public /* synthetic */ z2(Object obj, String str, String str2, Object obj2, Object obj3, Function function, int i2, int i3) {
        this.f81504b = i3;
        this.f81506e = obj;
        this.f81507f = str;
        this.g = str2;
        this.f81505c = obj2;
        this.f81508h = obj3;
        this.f81509i = function;
        this.d = i2;
    }

    public /* synthetic */ z2(String str, ContactUsUiModel contactUsUiModel, Function0 function0, Function0 function1, Function1 function2, Function0 function3, int i2) {
        this.f81504b = 16;
        this.f81507f = str;
        this.f81506e = contactUsUiModel;
        this.f81508h = function0;
        this.f81509i = function1;
        this.f81505c = function2;
        this.g = function3;
        this.d = i2;
    }

    public /* synthetic */ z2(String str, StringResourceUiModel stringResourceUiModel, StringResourceUiModel stringResourceUiModel2, StringResourceUiModel stringResourceUiModel3, Function0 function0, Function0 function1, int i2) {
        this.f81504b = 10;
        this.f81507f = str;
        this.f81506e = stringResourceUiModel;
        this.g = stringResourceUiModel2;
        this.f81505c = stringResourceUiModel3;
        this.f81508h = function0;
        this.f81509i = function1;
        this.d = i2;
    }

    public /* synthetic */ z2(String str, String str2, Object obj, Function0 function0, Function function, Function function2, int i2, int i3) {
        this.f81504b = i3;
        this.f81507f = str;
        this.g = str2;
        this.f81506e = obj;
        this.f81508h = function0;
        this.f81509i = function;
        this.f81505c = function2;
        this.d = i2;
    }

    public /* synthetic */ z2(String str, String str2, Function0 function0, ContactUsUiModel contactUsUiModel, Function1 function1, LVModalBottomSheetState lVModalBottomSheetState, int i2) {
        this.f81504b = 19;
        this.f81507f = str;
        this.g = str2;
        this.f81508h = function0;
        this.f81506e = contactUsUiModel;
        this.f81505c = function1;
        this.f81509i = lVModalBottomSheetState;
        this.d = i2;
    }
}
