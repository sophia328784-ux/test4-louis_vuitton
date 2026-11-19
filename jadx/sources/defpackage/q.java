package defpackage;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.nfc.NfcAdapter;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.compose.foundation.relocation.BringIntoViewResponderNode;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.AtomicInt;
import androidx.compose.runtime.internal.AwaiterQueue;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.media3.database.StandaloneDatabaseProvider;
import androidx.media3.datasource.cache.LeastRecentlyUsedCacheEvictor;
import androidx.media3.datasource.cache.SimpleCache;
import androidx.navigation.NavHostController;
import com.perfectcorp.perfectlib.SkuInfo;
import com.powerfront.insidewebsdkandroid.models.InsideViewType;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.domain.monitoring.certificates.CertificateMonitoring;
import com.vuitton.android.presentation.chat.ChatContactUsUiModel;
import com.vuitton.android.presentation.contact.ContactUsTracker;
import com.vuitton.android.presentation.contact.models.ContactUsTrackingUiModel;
import com.vuitton.android.presentation.contact.models.ContactUsTrackingUiModelKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModel;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel;
import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionBottomSheet;
import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionViewState;
import com.vuitton.android.presentation.screen.aicompanion.models.ChatMessageUiModel;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTracker;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTrackingUiModel;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTrackingUiModelKt;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideTracker;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModel;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideBottomSheet;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideTrackingUiModel;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideTrackingUiModelKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideViewState;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivity;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.booking.details.components.BookingDetailsScreenKt;
import com.vuitton.android.presentation.screen.booking.list.models.BookingInfoTypeUiModel;
import com.vuitton.android.presentation.screen.booking.list.models.BookingInfoUiModel;
import com.vuitton.android.presentation.screen.booking.personalinfo.models.BookingPersonalInfoViewState;
import com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel;
import com.vuitton.android.presentation.screen.booking.summary.models.BookingSummaryTrackingUiModel;
import com.vuitton.android.presentation.screen.booking.summary.models.PreBookViewState;
import com.vuitton.android.presentation.screen.booking.summary.models.SummaryBottomSheet;
import com.vuitton.android.presentation.screen.catalog.CatalogTracker;
import com.vuitton.android.presentation.screen.catalog.models.CatalogTrackingUiModel;
import com.vuitton.android.presentation.screen.catalog.models.CatalogTrackingUiModelKt;
import com.vuitton.android.presentation.screen.certificates.model.CertificateDiamondStoneUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateDiamondUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateVisionnaireUiModel;
import com.vuitton.android.presentation.screen.certificates.nfc.CertificateNfcScanViewModelImpl;
import com.vuitton.android.presentation.screen.certificates.nfc.model.NfcScanState;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentBottomSheetScreen;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentBffViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyVtoScreenKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoMode;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoViewState;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.components.catalog.CatalogStoreModeKt;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import com.vuitton.android.presentation.tracking.AppsFlyerUiTracker;
import com.vuitton.android.presentation.tracking.AudioGuideActions;
import com.vuitton.core.infrastructure.chat.ChatTrackerImpl;
import java.io.File;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;
import okhttp3.Address;
import okhttp3.CertificatePinner;
import okhttp3.Handshake;
import okhttp3.internal.connection.ConnectPlan;
import okhttp3.internal.tls.CertificateChainCleaner;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class q implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78962b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f78963c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f78964e;

    public /* synthetic */ q(MutableState mutableState, BeautyVtoActivity beautyVtoActivity, CoroutineScope coroutineScope) {
        this.f78962b = 12;
        this.d = mutableState;
        this.f78963c = beautyVtoActivity;
        this.f78964e = coroutineScope;
    }

    /* JADX WARN: Code duplicated, block: B:79:0x01ce  */
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2;
        Object value;
        Object value2;
        List listA;
        int i3 = this.f78962b;
        AssessmentBottomSheetScreen.AssessmentBottomSheetDecline assessmentBottomSheetDecline = AssessmentBottomSheetScreen.AssessmentBottomSheetDecline.f57029a;
        boolean z = false;
        Object obj = this.d;
        Object obj2 = this.f78964e;
        Object obj3 = this.f78963c;
        switch (i3) {
            case 0:
                AICompanionTracker aICompanionTracker = (AICompanionTracker) obj3;
                AICompanionViewModel aICompanionViewModel = (AICompanionViewModel) obj2;
                if (((AICompanionBottomSheet) ((MutableState) obj).getF10755b()) instanceof AICompanionBottomSheet.Exit) {
                    aICompanionTracker.f52910a.a(AICompanionTrackingUiModelKt.a(AICompanionTrackingUiModel.OnCloseExitPopinEvent.f52914a));
                }
                aICompanionViewModel.T4(null);
                return Unit.f71739a;
            case 1:
                HapticFeedbackType.f9193b.getClass();
                int i4 = PlatformHapticFeedbackType.f9196a;
                ((HapticFeedback) obj2).a(0);
                ((AICompanionTracker) obj3).f52910a.a(AICompanionTrackingUiModelKt.a(AICompanionTrackingUiModel.OnLongPressMessageEvent.f52935a));
                ((MutableState) obj).setValue(Boolean.TRUE);
                return Unit.f71739a;
            case 2:
                ((MutableState) obj).setValue(Boolean.TRUE);
                ((Function1) obj3).invoke(((ChatMessageUiModel) obj2).f52903a);
                return Unit.f71739a;
            case 3:
                HapticFeedbackType.f9193b.getClass();
                ((HapticFeedback) obj3).a(PlatformHapticFeedbackType.f9196a);
                ((ClipboardManager) obj).setPrimaryClip(ClipData.newPlainText("Session Id", ((AICompanionViewState) obj2).d.f52908a));
                return Unit.f71739a;
            case 4:
                ((Function1) obj3).invoke(((TextFieldValue) ((MutableState) obj).getF10755b()).f10840a.f10420c);
                ((Function0) obj2).mo47invoke();
                return Unit.f71739a;
            case 5:
                ((AddressAutocompleteViewModel) obj3).n0();
                ((NavHostController) obj2).e();
                ((Map) obj).clear();
                return Unit.f71739a;
            case 6:
                Function0 function0 = (Function0) obj2;
                Function1 function1 = (Function1) obj;
                if (((AssessmentBffViewState) obj3).n) {
                    function0.mo47invoke();
                } else {
                    function1.invoke(assessmentBottomSheetDecline);
                }
                return Unit.f71739a;
            case 7:
                Function0 function2 = (Function0) obj2;
                Function1 function3 = (Function1) obj;
                if (((AssessmentViewState) obj3).o) {
                    function2.mo47invoke();
                } else {
                    function3.invoke(assessmentBottomSheetDecline);
                }
                return Unit.f71739a;
            case 8:
                AudioGuideViewModel audioGuideViewModel = (AudioGuideViewModel) obj3;
                AppsFlyerUiTracker appsFlyerUiTracker = (AppsFlyerUiTracker) obj2;
                AudioGuideViewState audioGuideViewState = (AudioGuideViewState) ((MutableState) obj).getF10755b();
                AudioGuideViewState.Success success = audioGuideViewState instanceof AudioGuideViewState.Success ? (AudioGuideViewState.Success) audioGuideViewState : null;
                if (success != null) {
                    appsFlyerUiTracker.b(AudioGuideActions.STARTED, success.f53225a.f53201i.f53212a);
                }
                audioGuideViewModel.j7(null);
                return Unit.f71739a;
            case 9:
                AudioGuideTracker audioGuideTracker = (AudioGuideTracker) obj3;
                AudioGuideViewModel audioGuideViewModel2 = (AudioGuideViewModel) obj2;
                if (((AudioGuideBottomSheet) ((MutableState) obj).getF10755b()) instanceof AudioGuideBottomSheet.TrackDetail) {
                    audioGuideTracker.f52976a.a(AudioGuideTrackingUiModelKt.a(AudioGuideTrackingUiModel.AudioGuideScreen.f53162a));
                }
                audioGuideViewModel2.j7(null);
                return Unit.f71739a;
            case 10:
                ((Function0) obj3).mo47invoke();
                ((Function1) obj2).invoke(((AudioGuideUiModel.AvailableLanguageUiModel) obj).f53212a);
                return Unit.f71739a;
            case 11:
                ((AwaiterQueue.Awaiter) obj3).a();
                AtomicInt atomicInt = ((AwaiterQueue) obj2).f8380c;
                int i5 = ((Ref$IntRef) obj).f71919b;
                do {
                    i2 = atomicInt.get();
                } while (!atomicInt.compareAndSet(i2, ((i2 >>> 27) & 15) == i5 ? i2 - 1 : i2));
                return Unit.f71739a;
            case 12:
                MutableState mutableState = (MutableState) obj;
                BeautyVtoActivity beautyVtoActivity = (BeautyVtoActivity) obj3;
                CoroutineScope coroutineScope = (CoroutineScope) obj2;
                BeautyVtoActivity.Companion companion = BeautyVtoActivity.D;
                SkuInfo skuInfo = ((BeautyVtoViewState) mutableState.getF10755b()).m;
                if (skuInfo != null) {
                    beautyVtoActivity.I(coroutineScope, skuInfo, new ce(beautyVtoActivity, mutableState, 4));
                }
                return Unit.f71739a;
            case 13:
                BeautyVtoActivity.Companion companion2 = BeautyVtoActivity.D;
                ((BeautyVtoActivity) obj3).I((CoroutineScope) obj2, (SkuInfo) obj, new w9(20));
                return Unit.f71739a;
            case 14:
                Function0 function4 = (Function0) obj2;
                MutableState mutableState2 = (MutableState) obj;
                float f2 = BeautyVtoScreenKt.f62031a;
                if (((BeautyVtoViewState) obj3).f62149a == BeautyVtoMode.DUAL) {
                    mutableState2.setValue(Boolean.FALSE);
                }
                function4.mo47invoke();
                return Unit.f71739a;
            case 15:
                AuthenticationActivity.Companion companion3 = AuthenticationActivity.u;
                AuthenticationActivity.Routes routes = AuthenticationActivity.Routes.LOGIN_FROM_OUTSIDE;
                String str = ((BookingPersonalInfoViewState) ((State) obj).getF10755b()).f54731a;
                TrackingAuthOrigin trackingAuthOrigin = TrackingAuthOrigin.BOOKING;
                companion3.getClass();
                ((ManagedActivityResultLauncher) obj3).a(AuthenticationActivity.Companion.c((Context) obj2, routes, str, trackingAuthOrigin));
                return Unit.f71739a;
            case 16:
                BookingInfoUiModel bookingInfoUiModel = (BookingInfoUiModel) obj3;
                Function1 function5 = (Function1) obj2;
                Function1 function6 = (Function1) obj;
                BookingInfoTypeUiModel bookingInfoTypeUiModel = bookingInfoUiModel.f54609c;
                String str2 = bookingInfoUiModel.f54608b;
                int i6 = BookingDetailsScreenKt.WhenMappings.f54423b[bookingInfoTypeUiModel.ordinal()];
                if (i6 == 1) {
                    function5.invoke(str2);
                } else if (i6 == 2) {
                    function6.invoke(str2);
                }
                return Unit.f71739a;
            case 17:
                PrebookSummaryViewModel prebookSummaryViewModel = (PrebookSummaryViewModel) obj3;
                Function0 function7 = (Function0) obj2;
                State state = (State) obj;
                prebookSummaryViewModel.S3(BookingSummaryTrackingUiModel.CloseIntentionEvent.f54806a);
                if (((PreBookViewState) state.getF10755b()) instanceof PreBookViewState.Success) {
                    PreBookViewState preBookViewState = (PreBookViewState) state.getF10755b();
                    preBookViewState.getClass();
                    if (((PreBookViewState.Success) preBookViewState).f54829a.f54817a.isEmpty()) {
                        function7.mo47invoke();
                    } else {
                        prebookSummaryViewModel.A5(SummaryBottomSheet.ExitWarning.f54833a);
                    }
                } else {
                    function7.mo47invoke();
                }
                return Unit.f71739a;
            case 18:
                BringIntoViewResponderNode bringIntoViewResponderNode = (BringIntoViewResponderNode) obj3;
                Rect rectH2 = BringIntoViewResponderNode.h2(bringIntoViewResponderNode, (NodeCoordinator) obj2, (Function0) obj);
                if (rectH2 != null) {
                    return bringIntoViewResponderNode.p.g1(rectH2);
                }
                return null;
            case 19:
                return new SimpleCache((File) obj3, (LeastRecentlyUsedCacheEvictor) obj2, (StandaloneDatabaseProvider) obj);
            case 20:
                Function1 function8 = (Function1) obj2;
                StoreModeViewState storeModeViewState = (StoreModeViewState) obj;
                float f3 = CatalogStoreModeKt.f64850a;
                if (((StoreModeViewModel) obj3).F()) {
                    function8.invoke(storeModeViewState.f65086h);
                }
                return Unit.f71739a;
            case 21:
                CatalogTracker catalogTracker = (CatalogTracker) obj3;
                String str3 = (String) obj2;
                ((MutableState) obj).setValue(Boolean.FALSE);
                catalogTracker.getClass();
                str3.getClass();
                catalogTracker.f55231a.a(CatalogTrackingUiModelKt.a(new CatalogTrackingUiModel.OnCarouselSwipeEvent(str3)));
                return Unit.f71739a;
            case 22:
                ((Function2) obj3).invoke(((CertificateDiamondStoneUiModel) obj2).f55826c, (CertificateDiamondUiModel) obj);
                return Unit.f71739a;
            case 23:
                NfcScanState nfcScanState = (NfcScanState) obj3;
                Function0 function9 = (Function0) obj2;
                Function0 function10 = (Function0) obj;
                if ((nfcScanState instanceof NfcScanState.Scanning) || (nfcScanState instanceof NfcScanState.Error)) {
                    function9.mo47invoke();
                } else if (nfcScanState instanceof NfcScanState.NfcDisabled) {
                    function10.mo47invoke();
                }
                return Unit.f71739a;
            case 24:
                CertificateNfcScanViewModelImpl certificateNfcScanViewModelImpl = (CertificateNfcScanViewModelImpl) obj2;
                ((Function0) obj3).mo47invoke();
                certificateNfcScanViewModelImpl.f55900b.getClass();
                NfcAdapter defaultAdapter = NfcAdapter.getDefaultAdapter((Context) obj);
                if (defaultAdapter != null && defaultAdapter.isEnabled()) {
                    z = true;
                }
                MutableStateFlow mutableStateFlow = certificateNfcScanViewModelImpl.f55907k;
                if (z) {
                    do {
                        value2 = mutableStateFlow.getValue();
                    } while (!mutableStateFlow.i(value2, NfcScanState.Scanning.f55939a));
                    DynatraceMonitorAction dynatraceMonitorActionA = certificateNfcScanViewModelImpl.d.a(certificateNfcScanViewModelImpl.f55906j, CertificateMonitoring.Action.NfcScanActivation.f48894a);
                    CertificateVisionnaireUiModel certificateVisionnaireUiModel = certificateNfcScanViewModelImpl.n;
                    String str4 = certificateVisionnaireUiModel != null ? certificateVisionnaireUiModel.f55887h : null;
                    if (str4 == null) {
                        str4 = "";
                    }
                    dynatraceMonitorActionA.c(str4, "CXId");
                    certificateNfcScanViewModelImpl.m = dynatraceMonitorActionA;
                } else {
                    do {
                        value = mutableStateFlow.getValue();
                    } while (!mutableStateFlow.i(value, NfcScanState.NfcDisabled.f55937a));
                }
                return Unit.f71739a;
            case 25:
                ((Function0) obj3).mo47invoke();
                ((ContactUsTracker) obj2).c(Intrinsics.c(((ContactUsUiModel) obj).f51159h, ChatContactUsUiModel.Available.f50674a));
                return Unit.f71739a;
            case 26:
                List list = (List) obj2;
                String str5 = (String) obj;
                CertificateChainCleaner certificateChainCleaner = ((CertificatePinner) obj3).f76855b;
                if (certificateChainCleaner != null && (listA = certificateChainCleaner.a(str5, list)) != null) {
                    list = listA;
                }
                List<Certificate> list2 = list;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                for (Certificate certificate : list2) {
                    certificate.getClass();
                    arrayList.add((X509Certificate) certificate);
                }
                return arrayList;
            case 27:
                String str6 = (String) obj3;
                ChatTrackerImpl chatTrackerImpl = (ChatTrackerImpl) obj2;
                String str7 = (String) obj;
                int i7 = ChatTrackerImpl.d;
                if (str6 != null && !StringsKt.w(str6)) {
                    chatTrackerImpl.f65890a.getClass();
                    ChatTrackerImpl.i(chatTrackerImpl, InsideViewType.ProductCategory, str6, str7, null, false, 24);
                }
                return Unit.f71739a;
            case 28:
                int i8 = ConnectPlan.y;
                CertificateChainCleaner certificateChainCleaner2 = ((CertificatePinner) obj3).f76855b;
                certificateChainCleaner2.getClass();
                return certificateChainCleaner2.a(((Address) obj).f76817i.d, ((Handshake) obj2).a());
            default:
                ContactUsTracker contactUsTracker = (ContactUsTracker) obj3;
                contactUsTracker.f51122a.a(ContactUsTrackingUiModelKt.a(new ContactUsTrackingUiModel.OnViewMoreClickEvent(contactUsTracker.f51123b)));
                ((LVModalBottomSheetState) obj2).b(new k40(28));
                ((LVModalBottomSheetState) obj).e();
                return Unit.f71739a;
        }
    }

    public /* synthetic */ q(HapticFeedback hapticFeedback, AICompanionTracker aICompanionTracker, MutableState mutableState) {
        this.f78962b = 1;
        this.f78964e = hapticFeedback;
        this.f78963c = aICompanionTracker;
        this.d = mutableState;
    }

    public /* synthetic */ q(AudioGuideViewModel audioGuideViewModel, MutableState mutableState, AppsFlyerUiTracker appsFlyerUiTracker) {
        this.f78962b = 8;
        this.f78963c = audioGuideViewModel;
        this.d = mutableState;
        this.f78964e = appsFlyerUiTracker;
    }

    public /* synthetic */ q(Object obj, Object obj2, Object obj3, int i2) {
        this.f78962b = i2;
        this.f78963c = obj;
        this.f78964e = obj2;
        this.d = obj3;
    }
}
