package defpackage;

import android.content.Intent;
import android.view.Window;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextFieldScrollerPosition;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.material.ripple.AndroidRippleNode;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.lifecycle.ViewModelLazy;
import androidx.media3.datasource.DefaultHttpDataSource;
import androidx.media3.datasource.cache.CacheDataSource;
import androidx.media3.datasource.cache.SimpleCache;
import com.sightcall.mediacapture.presenter.extensions.FragmentExtensionsKt;
import com.sightcall.mediacapture.presenter.views.camera.CameraFragment;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.android.data.datasource.config.AppConfigLocalDataSource;
import com.vuitton.android.presentation.CacheFactory;
import com.vuitton.android.presentation.chat.ChatLifecycleObserver;
import com.vuitton.android.presentation.compose.components.ComposableSingletons$LVTimelineKt;
import com.vuitton.android.presentation.compose.components.LVTimelineKt;
import com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl;
import com.vuitton.android.presentation.screen.aicompanion.components.entrypoint.AICompanionTooltipKt;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideTracker;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideTrackingUiModel;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideTrackingUiModelKt;
import com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationActivity;
import com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModelImpl;
import com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModel;
import com.vuitton.android.presentation.screen.booking.personalinfo.models.BookingPersonalInfoTrackingUiModel;
import com.vuitton.android.presentation.screen.certificates.CertificateActivity;
import com.vuitton.android.presentation.screen.certificates.CertificateViewModel;
import com.vuitton.android.presentation.screen.certificates.diamonds.transfer.CertificateTransferViewModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateTrackingUiModel;
import com.vuitton.android.presentation.screen.certificates.nfc.CertificateNfcScanViewModelImpl;
import com.vuitton.android.presentation.screen.deeplink.DeepLinkDispatcherActivity;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.maintenance.CheckMaintenanceStatusService;
import com.vuitton.android.presentation.screen.options.legaltext.LegalTextActivity;
import com.vuitton.android.presentation.screen.plp.models.PLPTrackingUiModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPCatalogViewModelImpl;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.CancellationReasonsActivity;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.CancellationReasonsViewModel;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.CancellationReasonsViewState;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.bff.CancellationReasonsBffActivity;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.bff.CancellationReasonsBffViewModel;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.bff.CancellationReasonsBffViewState;
import com.vuitton.android.presentation.screen.repairs.models.CancellationReasonUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceDetailUiModel;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.time.AbstractLongTimeSource;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import net.rtccloud.sdk.Call;
import okhttp3.Handshake;
import okhttp3.internal.connection.ConnectPlan;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class w1 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80723b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f80724c;

    public /* synthetic */ w1(Object obj, int i2) {
        this.f80723b = i2;
        this.f80724c = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        Object value;
        Object value2;
        int i2 = this.f80723b;
        int i3 = 2;
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        Object[] objArr = 0;
        Object obj = this.f80724c;
        switch (i2) {
            case 0:
                Window window = (Window) obj;
                float f3 = AICompanionTooltipKt.f52836a;
                if (window != null) {
                    window.setDimAmount(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                }
                return Unit.f71739a;
            case 1:
                return Long.valueOf(((AbstractLongTimeSource) obj).b());
            case 2:
                AccountActivationActivity accountActivationActivity = (AccountActivationActivity) obj;
                if (accountActivationActivity.p == null) {
                    Intrinsics.h("authenticationActivityRouter");
                    throw null;
                }
                LegalTextActivity.p.getClass();
                accountActivationActivity.startActivity(LegalTextActivity.Companion.a(accountActivationActivity, false));
                return Unit.f71739a;
            case 3:
                return (FormUiModel) ((AccountActivationViewModelImpl) obj).f53334b.getF57468c().getValue();
            case 4:
                return (FormUiModel) ((AddressEditorViewModelImpl) obj).f52213a.getF57468c().getValue();
            case 5:
                DrawModifierNodeKt.a((AndroidRippleNode) obj);
                return Unit.f71739a;
            case 6:
                return ((TextContextMenuDataProvider) obj).o0();
            case 7:
                return ((AppConfigLocalDataSource) obj).c();
            case 8:
                return ArrayIteratorKt.a((Object[]) obj);
            case 9:
                ((AudioGuideTracker) obj).f52976a.a(AudioGuideTrackingUiModelKt.a(AudioGuideTrackingUiModel.OnHitLanguageSelectorEvent.f53168a));
                return Unit.f71739a;
            case 10:
                return (AnnotatedString) obj;
            case 11:
                BookingPersonalInfoViewModel bookingPersonalInfoViewModel = (BookingPersonalInfoViewModel) obj;
                bookingPersonalInfoViewModel.va(BookingPersonalInfoTrackingUiModel.LoginContinueEvent.f54727a);
                bookingPersonalInfoViewModel.Y1();
                return Unit.f71739a;
            case 12:
                return (Rect) obj;
            case 13:
                CacheDataSource.Factory factory = new CacheDataSource.Factory();
                factory.f14470a = (SimpleCache) ((CacheFactory) obj).f50467a.getF71699b();
                DefaultHttpDataSource.Factory factory2 = new DefaultHttpDataSource.Factory();
                factory2.f14424e = true;
                factory2.d = 10000;
                factory2.f14423c = 10000;
                factory.d = factory2;
                factory.f14473e = 2;
                return factory;
            case 14:
                return FragmentExtensionsKt.getViewModelOwner((CameraFragment) obj);
            case 15:
                CancellationReasonsActivity cancellationReasonsActivity = (CancellationReasonsActivity) obj;
                CancellationReasonsActivity.Companion companion = CancellationReasonsActivity.q;
                ViewModelLazy viewModelLazy = cancellationReasonsActivity.p;
                CancellationReasonUiModel cancellationReasonUiModel = ((CancellationReasonsViewState) ((CancellationReasonsViewModel) viewModelLazy.getF71699b()).getF63579h().getValue()).d;
                String str = cancellationReasonUiModel != null ? cancellationReasonUiModel.f63977b : null;
                RepairStatusUiModel repairStatusUiModelN2 = ((CancellationReasonsViewModel) viewModelLazy.getF71699b()).getF63576c();
                if (repairStatusUiModelN2 != null) {
                    CancellationReasonsViewModel cancellationReasonsViewModel = (CancellationReasonsViewModel) viewModelLazy.getF71699b();
                    String lowerCase = repairStatusUiModelN2.name().toLowerCase(Locale.ROOT);
                    lowerCase.getClass();
                    cancellationReasonsViewModel.d(new DistantRepairTrackingUiModel.ConfirmCancellationClickedEvent(str, lowerCase));
                }
                cancellationReasonsActivity.setResult(-1, new Intent().putExtra("SELECTED_CANCELLATION_REASON_ID", str));
                cancellationReasonsActivity.finish();
                return Unit.f71739a;
            case 16:
                CancellationReasonsBffActivity cancellationReasonsBffActivity = (CancellationReasonsBffActivity) obj;
                CancellationReasonsBffActivity.Companion companion2 = CancellationReasonsBffActivity.q;
                ViewModelLazy viewModelLazy2 = cancellationReasonsBffActivity.p;
                CareServiceDetailUiModel.CancellationReason cancellationReason = ((CancellationReasonsBffViewState) ((CancellationReasonsBffViewModel) viewModelLazy2.getF71699b()).getG().getValue()).f63615e;
                String str2 = cancellationReason != null ? cancellationReason.f64051b : null;
                ((CancellationReasonsBffViewModel) viewModelLazy2.getF71699b()).d(new DistantRepairTrackingUiModel.ConfirmCancellationClickedEvent(str2, null));
                cancellationReasonsBffActivity.setResult(-1, new Intent().putExtra("SELECTED_CANCELLATION_REASON_ID", str2));
                cancellationReasonsBffActivity.finish();
                return Unit.f71739a;
            case 17:
                ((PLPCatalogViewModelImpl) obj).O0(PLPTrackingUiModel.DispatchFilterSwipedEvent.f62886a);
                return Unit.f71739a;
            case 18:
                CertificateActivity certificateActivity = (CertificateActivity) obj;
                ChatLifecycleObserver chatLifecycleObserver = certificateActivity.s;
                if (chatLifecycleObserver != null) {
                    if (chatLifecycleObserver == null) {
                        Intrinsics.h("chatLifecycleObserver");
                        throw null;
                    }
                    chatLifecycleObserver.c(certificateActivity);
                }
                return Unit.f71739a;
            case 19:
                ((CertificateViewModel) obj).u(CertificateTrackingUiModel.CertificateUnlockNfcScreen.f55859a);
                return Unit.f71739a;
            case 20:
                ((CertificateTransferViewModel) obj).u(CertificateTrackingUiModel.CertificateTransferConfirmationScreen.f55857a);
                return Unit.f71739a;
            case 21:
                CertificateNfcScanViewModelImpl certificateNfcScanViewModelImpl = (CertificateNfcScanViewModelImpl) obj;
                MutableStateFlow mutableStateFlow = certificateNfcScanViewModelImpl.l;
                do {
                    value = mutableStateFlow.getValue();
                    ((Boolean) value).getClass();
                } while (!mutableStateFlow.i(value, Boolean.FALSE));
                MutableStateFlow mutableStateFlow2 = certificateNfcScanViewModelImpl.f55907k;
                do {
                    value2 = mutableStateFlow2.getValue();
                } while (!mutableStateFlow2.i(value2, null));
                return Unit.f71739a;
            case 22:
                ((ManagedActivityResultLauncher) obj).a(new Intent("android.settings.NFC_SETTINGS"));
                return Unit.f71739a;
            case 23:
                CoroutineDispatchers coroutineDispatchers = ((CheckMaintenanceStatusService) obj).g;
                if (coroutineDispatchers != null) {
                    return CoroutineScopeKt.a(coroutineDispatchers.getF43531c());
                }
                Intrinsics.h("dispatcherProvider");
                throw null;
            case 24:
                return ((Iterable) obj).iterator();
            case 25:
                MutableIntState mutableIntState = (MutableIntState) obj;
                ComposableSingletons$LVTimelineKt composableSingletons$LVTimelineKt = ComposableSingletons$LVTimelineKt.f50952a;
                Random.Companion companion3 = Random.INSTANCE;
                mutableIntState.i(LVTimelineKt.c(mutableIntState.f()));
                return Unit.f71739a;
            case 26:
                int i4 = ConnectPlan.y;
                List<Certificate> listA = ((Handshake) obj).a();
                ArrayList arrayList = new ArrayList(CollectionsKt.t(listA, 10));
                for (Certificate certificate : listA) {
                    certificate.getClass();
                    arrayList.add((X509Certificate) certificate);
                }
                return arrayList;
            case 27:
                return ((LegacyTextFieldState) obj).d();
            case 28:
                return new TextFieldScrollerPosition((Orientation) obj, f2, i3, objArr == true ? 1 : 0);
            default:
                DeepLinkDispatcherActivity deepLinkDispatcherActivity = (DeepLinkDispatcherActivity) obj;
                int i5 = DeepLinkDispatcherActivity.q;
                deepLinkDispatcherActivity.D();
                deepLinkDispatcherActivity.finish();
                return Unit.f71739a;
        }
    }
}
