package defpackage;

import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.window.PopupProperties;
import androidx.fragment.app.FragmentActivity;
import androidx.navigation.NavHostController;
import androidx.navigation.NavOptionsBuilderKt;
import androidx.navigation.internal.NavControllerImpl;
import androidx.navigation3.runtime.NavBackStack;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import coil3.fetch.Fetcher;
import com.powerfront.insidewebsdkandroid.InsideClient;
import com.powerfront.insidewebsdkandroid.models.InsideCart;
import com.powerfront.insidewebsdkandroid.models.InsideViewType;
import com.vuitton.android.presentation.contact.ContactUsTracker;
import com.vuitton.android.presentation.contact.models.ContactUsTrackingUiModel;
import com.vuitton.android.presentation.contact.models.ContactUsTrackingUiModelKt;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleUiModel;
import com.vuitton.android.presentation.screen.booking.form.models.DisclaimerActionUiModel;
import com.vuitton.android.presentation.screen.booking.list.models.BookingAdditionalUiModel;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModel;
import com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoRoutes;
import com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModel;
import com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel;
import com.vuitton.android.presentation.screen.booking.summary.models.SummaryBottomSheet;
import com.vuitton.android.presentation.screen.catalog.CatalogViewModel;
import com.vuitton.android.presentation.screen.certificates.CertificateRoute;
import com.vuitton.android.presentation.screen.certificates.CertificateViewModel;
import com.vuitton.android.presentation.screen.certificates.components.CertificateFormState;
import com.vuitton.android.presentation.screen.certificates.nfc.CertificateNfcScanViewModelImpl;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.ConnectToWifiFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.ConnectToWifiFragment$connectToWifi$1;
import com.vuitton.android.presentation.screen.feed.models.uimodels.ContactabilityUiModel;
import com.vuitton.android.presentation.screen.main.MainNavigationState;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.components.catalog.CatalogStoreModeKt;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeDataUiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeTrackingUiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import com.vuitton.core.infrastructure.chat.ChatTrackerImpl;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.booking.BookingId;
import com.vuitton.foundation.model.domain.model.booking.ExperienceId;
import com.vuitton.foundation.model.domain.model.chat.ChatProductModel;
import com.vuitton.foundation.model.domain.model.chat.ScreenType;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class tf implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80053b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f80054c;
    public final /* synthetic */ Object d;

    public /* synthetic */ tf(Object obj, Object obj2, int i2) {
        this.f80053b = i2;
        this.f80054c = obj;
        this.d = obj2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        InsideViewType insideViewType;
        int i2 = this.f80053b;
        int i3 = 2;
        Object obj = this.d;
        Object obj2 = this.f80054c;
        switch (i2) {
            case 0:
                BookingUiModel bookingUiModel = (BookingUiModel) obj;
                ((Function2) obj2).invoke(new BookingId(bookingUiModel.f54614a), new ExperienceId(bookingUiModel.f54615b));
                return Unit.f71739a;
            case 1:
                ((Function1) obj2).invoke((BookingAdditionalUiModel) obj);
                return Unit.f71739a;
            case 2:
                ((Function1) obj2).invoke(((BookingFormModuleDataUiModel.ChoiceValue) obj).f54509a);
                return Unit.f71739a;
            case 3:
                ((Function1) obj2).invoke(((DisclaimerActionUiModel) obj).f54563b);
                return Unit.f71739a;
            case 4:
                ((Function1) obj2).invoke(((BookingFormModuleUiModel) obj).f54536a);
                return Unit.f71739a;
            case 5:
                MutableState mutableState = (MutableState) obj2;
                BookingFormModuleDataUiModel.MultipleTextOption multipleTextOption = (BookingFormModuleDataUiModel.MultipleTextOption) obj;
                List<BookingFormModuleDataUiModel.MultipleTextOption> list = (List) mutableState.getF10755b();
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
                for (BookingFormModuleDataUiModel.MultipleTextOption multipleTextOptionA : list) {
                    if (Intrinsics.c(multipleTextOptionA.f54521a, multipleTextOption.f54521a)) {
                        multipleTextOptionA = BookingFormModuleDataUiModel.MultipleTextOption.a(multipleTextOptionA, !multipleTextOptionA.f54523c);
                    }
                    arrayList.add(multipleTextOptionA);
                }
                mutableState.setValue(arrayList);
                return Unit.f71739a;
            case 6:
                ((Function1) obj2).invoke((BookingFormModuleDataUiModel.MultipleTextCategory) obj);
                return Unit.f71739a;
            case 7:
                ((Function1) obj2).invoke(((BookingFormModuleDataUiModel.TimeSlot) obj).f54533a);
                return Unit.f71739a;
            case 8:
                NavBackStack navBackStack = (NavBackStack) obj2;
                navBackStack.a(BookingPersonalInfoRoutes.InfoForm.INSTANCE);
                if (((BookingPersonalInfoViewModel) obj).V8()) {
                    navBackStack.remove(BookingPersonalInfoRoutes.AccountStatus.INSTANCE);
                }
                return Unit.f71739a;
            case 9:
                PrebookSummaryViewModel prebookSummaryViewModel = (PrebookSummaryViewModel) obj2;
                if (((SummaryBottomSheet) ((MutableState) obj).getF10755b()) instanceof SummaryBottomSheet.ExpiredPrebook) {
                    prebookSummaryViewModel.Y8();
                } else {
                    prebookSummaryViewModel.A5(null);
                }
                return Unit.f71739a;
            case 10:
                WorkManagerImpl workManagerImpl = (WorkManagerImpl) obj2;
                WorkDatabase workDatabase = workManagerImpl.d;
                workDatabase.getClass();
                workDatabase.v(new xn0(new r6(workManagerImpl, (UUID) obj, 17), 19));
                Schedulers.b(workManagerImpl.f20344c, workDatabase, workManagerImpl.f20346f);
                return Unit.f71739a;
            case 11:
                ((CatalogViewModel) obj2).c();
                ((Function0) obj).mo47invoke();
                return Unit.f71739a;
            case 12:
                ((MainNavigationState) obj2).f(true);
                ((NavHostController) obj).e();
                return Unit.f71739a;
            case 13:
                StoreModeViewModel storeModeViewModel = (StoreModeViewModel) obj;
                float f2 = CatalogStoreModeKt.f64850a;
                String str = ((StoreModeViewState) obj2).f65086h;
                if (str != null) {
                    storeModeViewModel.S6(new StoreModeTrackingUiModel.CloseClickedEvent(str));
                }
                storeModeViewModel.C6();
                return Unit.f71739a;
            case 14:
                float f3 = CatalogStoreModeKt.f64850a;
                ((Function1) obj2).invoke(((StoreModeDataUiModel.StoreModeSimpleUiModel) ((StoreModeDataUiModel) obj)).d);
                return Unit.f71739a;
            case 15:
                return new Dp(((Density) obj2).k1((int) (((LazyListState) obj).j().a() & BodyPartID.bodyIdMax)));
            case 16:
                return Boolean.valueOf(Dp.a(((Dp) ((State) obj2).getF10755b()).f11006b, ((Dp) ((State) obj).getF10755b()).f11006b) > 0);
            case 17:
                ((CertificateViewModel) obj2).c();
                ((Function0) obj).mo47invoke();
                return Unit.f71739a;
            case 18:
                NavHostController navHostController = (NavHostController) obj2;
                CertificateRoute.NfcScan nfcScan = (CertificateRoute.NfcScan) obj;
                CertificateRoute.Visionnaire visionnaire = new CertificateRoute.Visionnaire(nfcScan.f55605a, true);
                ck ckVar = new ck(nfcScan, i3);
                navHostController.getClass();
                NavControllerImpl navControllerImpl = navHostController.f18122b;
                navControllerImpl.getClass();
                navControllerImpl.o(navControllerImpl.f(visionnaire), NavOptionsBuilderKt.a(ckVar));
                return Unit.f71739a;
            case 19:
                ((CertificateNfcScanViewModelImpl) obj2).f55899a.Q0();
                ((Function0) obj).mo47invoke();
                return Unit.f71739a;
            case 20:
                ((Function1) obj2).invoke(((CertificateFormState) obj).a());
                return Unit.f71739a;
            case 21:
                ChatTrackerImpl chatTrackerImpl = (ChatTrackerImpl) obj2;
                chatTrackerImpl.f65890a.getClass();
                InsideClient insideClient = chatTrackerImpl.f65891b;
                InsideCart insideCartI = insideClient.i();
                BigDecimal bigDecimal = insideClient.i().f43302b;
                insideCartI.f43304e = (String) obj;
                insideCartI.f43302b = bigDecimal;
                insideCartI.f43303c = true;
                insideCartI.d = true;
                insideClient.m();
                ChatTrackerImpl.i(chatTrackerImpl, InsideViewType.OrderConfirmed, "Order Confirmed", null, null, false, 28);
                InsideCart insideCart = insideClient.f43293f;
                if (insideCart != null) {
                    insideCart.f43305f.clear();
                    insideCart.d = true;
                    InsideCart insideCart2 = insideClient.f43293f;
                    insideCart2.f43302b = null;
                    insideCart2.f43303c = false;
                    insideCart2.d = true;
                    insideClient.d("trackOrder", insideCart2.b());
                }
                insideClient.h();
                insideClient.f43293f = null;
                return Unit.f71739a;
            case 22:
                ChatTrackerImpl chatTrackerImpl2 = (ChatTrackerImpl) obj2;
                ChatProductModel chatProductModel = (ChatProductModel) obj;
                Logger logger = chatTrackerImpl2.f65890a;
                Objects.toString(chatProductModel);
                logger.getClass();
                ChatTrackerImpl.i(chatTrackerImpl2, InsideViewType.Product, chatProductModel.f67087a, null, chatProductModel, false, 20);
                return Unit.f71739a;
            case 23:
                ChatTrackerImpl chatTrackerImpl3 = (ChatTrackerImpl) obj2;
                ScreenType screenType = (ScreenType) obj;
                Logger logger2 = chatTrackerImpl3.f65890a;
                Objects.toString(screenType);
                logger2.getClass();
                int i4 = ChatTrackerImpl.WhenMappings.f65893a[screenType.getOrigin().ordinal()];
                if (i4 == 1) {
                    insideViewType = InsideViewType.Home;
                } else if (i4 == 2) {
                    insideViewType = InsideViewType.Other;
                } else {
                    if (i4 != 3) {
                        v40.g();
                        return null;
                    }
                    insideViewType = InsideViewType.Checkout;
                }
                ChatTrackerImpl.i(chatTrackerImpl3, insideViewType, screenType.getScreen(), null, null, screenType == ScreenType.DISTANT_CARE, 12);
                return Unit.f71739a;
            case 24:
                return CollectionsKt.O(new Pair((Fetcher.Factory) obj2, (KClass) obj));
            case 25:
                return ((CompositionErrorContextImpl) obj2).f8560b.Q(obj);
            case 26:
                ConnectToWifiFragment$connectToWifi$1 connectToWifiFragment$connectToWifi$1 = (ConnectToWifiFragment$connectToWifi$1) obj;
                FragmentActivity activity = ((ConnectToWifiFragment) obj2).getActivity();
                if (activity != null) {
                    activity.runOnUiThread(new z1(connectToWifiFragment$connectToWifi$1, 21));
                }
                return Unit.f71739a;
            case 27:
                ContactUsTracker contactUsTracker = (ContactUsTracker) obj;
                ((Function0) obj2).mo47invoke();
                contactUsTracker.f51122a.a(ContactUsTrackingUiModelKt.a(new ContactUsTrackingUiModel.OnPowerfrontAcceptConsentEvent(contactUsTracker.f51123b)));
                return Unit.f71739a;
            case 28:
                ((Function1) obj2).invoke(((ContactabilityUiModel) obj).d);
                return Unit.f71739a;
            default:
                PopupProperties popupProperties = DefaultTextContextMenuDropdownProvider_androidKt.f6100a;
                return new IntOffset(IntOffsetKt.b(((TextContextMenuDataProvider) obj2).M1((LayoutCoordinates) ((Function0) obj).mo47invoke())));
        }
    }
}
