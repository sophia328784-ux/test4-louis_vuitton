package com.vuitton.android.presentation.screen.certificates.nfc;

import android.app.Activity;
import android.nfc.NfcAdapter;
import android.nfc.Tag;
import android.nfc.tech.NfcV;
import android.os.Bundle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.provider.buildconfig.BuildConfigProvider;
import com.vuitton.android.domain.usecase.authentication.oauth.GetSfidTokenOrNullUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.GetSlasTokenOrNullUseCase;
import com.vuitton.android.domain.usecase.certificate.UnlockCertificateUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.contact.ContactUsMode;
import com.vuitton.android.presentation.contact.models.ContactUsOrigin;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateVisionnaireUiModel;
import com.vuitton.android.presentation.screen.certificates.nfc.model.CertificateNfcScanViewState;
import com.vuitton.android.presentation.screen.certificates.nfc.model.NfcScanState;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.chat.ChatProductModel;
import com.vuitton.foundation.model.domain.model.chat.ScreenType;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.md;
import java.util.Arrays;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;
import lv.nfc.reader.data.exceptions.LVReadTagError;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003BY\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModel;", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "contactUsDelegate", "Lcom/vuitton/android/presentation/screen/certificates/nfc/NfcManager;", "nfcManager", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSfidTokenOrNullUseCase;", "getSfidTokenOrNullUseCase", "Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSlasTokenOrNullUseCase;", "getSlasTokenOrNullUseCase", "Lcom/vuitton/android/domain/usecase/certificate/UnlockCertificateUseCase;", "unlockCertificateUseCase", "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;", "buildConfigProvider", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "<init>", "(Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/presentation/screen/certificates/nfc/NfcManager;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSfidTokenOrNullUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSlasTokenOrNullUseCase;Lcom/vuitton/android/domain/usecase/certificate/UnlockCertificateUseCase;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CertificateNfcScanViewModelImpl extends ViewModel implements CertificateNfcScanViewModel, ContactUsDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ContactUsDelegate f55899a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final NfcManager f55900b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Logger f55901c;
    public final Monitor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GetSfidTokenOrNullUseCase f55902e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final GetSlasTokenOrNullUseCase f55903f;
    public final UnlockCertificateUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final BuildConfigProvider f55904h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppConfig f55905i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final InAppDispatch f55906j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableStateFlow f55907k;
    public final MutableStateFlow l;
    public MonitorAction m;
    public CertificateVisionnaireUiModel n;
    public final StateFlow o;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.certificates.nfc.CertificateNfcScanViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.certificates.nfc.CertificateNfcScanViewModelImpl$1", f = "CertificateNfcScanViewModelImpl.kt", l = {86}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f55908b;

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return CertificateNfcScanViewModelImpl.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            ContactUsDelegate contactUsDelegate = CertificateNfcScanViewModelImpl.this.f55899a;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f55908b;
            if (i2 == 0) {
                ResultKt.b(obj);
                contactUsDelegate.f8(ContactUsMode.DEFAULT);
                this.f55908b = 1;
                if (contactUsDelegate.M1(null, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            return Unit.f71739a;
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f55910a;

        static {
            int[] iArr = new int[LVReadTagError.values().length];
            try {
                iArr[LVReadTagError.lostTag.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f55910a = iArr;
        }
    }

    @Inject
    public CertificateNfcScanViewModelImpl(ContactUsDelegate contactUsDelegate, NfcManager nfcManager, Logger logger, Monitor monitor, GetSfidTokenOrNullUseCase getSfidTokenOrNullUseCase, GetSlasTokenOrNullUseCase getSlasTokenOrNullUseCase, UnlockCertificateUseCase unlockCertificateUseCase, BuildConfigProvider buildConfigProvider, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase) {
        contactUsDelegate.getClass();
        nfcManager.getClass();
        logger.getClass();
        monitor.getClass();
        getSfidTokenOrNullUseCase.getClass();
        getSlasTokenOrNullUseCase.getClass();
        unlockCertificateUseCase.getClass();
        buildConfigProvider.getClass();
        requireCachedAppConfigUseCase.getClass();
        requireUserInAppDispatchUseCase.getClass();
        this.f55899a = contactUsDelegate;
        this.f55900b = nfcManager;
        this.f55901c = logger;
        this.d = monitor;
        this.f55902e = getSfidTokenOrNullUseCase;
        this.f55903f = getSlasTokenOrNullUseCase;
        this.g = unlockCertificateUseCase;
        this.f55904h = buildConfigProvider;
        this.f55905i = requireCachedAppConfigUseCase.a();
        this.f55906j = requireUserInAppDispatchUseCase.f49912a.b();
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(null);
        this.f55907k = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(Boolean.FALSE);
        this.l = mutableStateFlowA2;
        final Flow[] flowArr = {contactUsDelegate.i(), mutableStateFlowA, mutableStateFlowA2};
        Flow<CertificateNfcScanViewState> flow = new Flow<CertificateNfcScanViewState>() { // from class: com.vuitton.android.presentation.screen.certificates.nfc.CertificateNfcScanViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.certificates.nfc.CertificateNfcScanViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.certificates.nfc.CertificateNfcScanViewModelImpl$special$$inlined$combine$1$3", f = "CertificateNfcScanViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super CertificateNfcScanViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f55917b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f55918c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f55918c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f55918c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f55917b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        NfcScanState nfcScanState = (NfcScanState) objArr[1];
                        Object obj3 = objArr[2];
                        obj3.getClass();
                        CertificateNfcScanViewState certificateNfcScanViewState = new CertificateNfcScanViewState((ContactUsUiModel) obj2, nfcScanState, ((Boolean) obj3).booleanValue());
                        this.f55918c = null;
                        this.d = null;
                        this.f55917b = 1;
                        if (flowCollector.emit(certificateNfcScanViewState, this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    } else {
                        if (i2 != 1) {
                            md.k("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.b(obj);
                    }
                    return Unit.f71739a;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object f(FlowCollector flowCollector, Continuation continuation) {
                final Flow[] flowArr2 = flowArr;
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.certificates.nfc.CertificateNfcScanViewModelImpl$special$$inlined$combine$1.2
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return new Object[flowArr2.length];
                    }
                }, new AnonymousClass3(null), flowCollector, flowArr2);
                return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
            }
        };
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        this.o = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new CertificateNfcScanViewState(null, null, false, 7, null));
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void B(ChatProductModel chatProductModel, int i2, int i3) {
        chatProductModel.getClass();
        this.f55899a.B(chatProductModel, i2, i3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void C(ScreenType screenType) {
        screenType.getClass();
        this.f55899a.C(screenType);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object E5(Continuation continuation) {
        return this.f55899a.E5(continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void I(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.f55899a.I(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object M1(ContactUsOrigin contactUsOrigin, Continuation continuation) {
        return this.f55899a.M1(contactUsOrigin, continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void Q0() {
        this.f55899a.Q0();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final Object S0(Continuation continuation) {
        return this.f55899a.S0(continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void f8(ContactUsMode contactUsMode) {
        contactUsMode.getClass();
        this.f55899a.f8(contactUsMode);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Flow i() {
        return this.f55899a.i();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void m4(StringResourceUiModel stringResourceUiModel) {
        this.f55899a.m4(stringResourceUiModel);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void r(ChatProductModel chatProductModel) {
        chatProductModel.getClass();
        this.f55899a.r(chatProductModel);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void s() {
        this.f55899a.s();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void v(String str, String str2) {
        this.f55899a.v(str, str2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object vc(Continuation continuation) {
        return this.f55899a.vc(continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void x(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.f55899a.x(chatProductModel, i2);
    }

    public final void yc(final Activity activity) {
        final CertificateNfcScanViewModelImpl$startScanning$1 certificateNfcScanViewModelImpl$startScanning$1 = new CertificateNfcScanViewModelImpl$startScanning$1(2, this, CertificateNfcScanViewModelImpl.class, "onNfcTagDetected", "onNfcTagDetected(Landroid/nfc/tech/NfcV;Landroid/app/Activity;)V", 0);
        final NfcManager nfcManager = this.f55900b;
        nfcManager.getClass();
        Logger logger = nfcManager.f55925a;
        logger.getClass();
        NfcAdapter defaultAdapter = NfcAdapter.getDefaultAdapter(activity);
        if (defaultAdapter == null) {
            logger.d("NfcManager", "NFC adapter is null, device does not support NFC", null);
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("presence", HarvestConfiguration.SLOW_START_THRESHOLD);
        defaultAdapter.enableReaderMode(activity, new NfcAdapter.ReaderCallback() { // from class: com.vuitton.android.presentation.screen.certificates.nfc.b
            @Override // android.nfc.NfcAdapter.ReaderCallback
            public final void onTagDiscovered(Tag tag) {
                int i2 = NfcManager.d;
                NfcV nfcV = NfcV.get(tag);
                NfcManager nfcManager2 = nfcManager;
                if (nfcV == null) {
                    nfcManager2.f55925a.d("NfcManager", "Tag detected but is not NfcV type", null);
                    return;
                }
                Logger logger2 = nfcManager2.f55925a;
                String string = Arrays.toString(tag.getId());
                string.getClass();
                "NFC tag detected - ID: ".concat(string);
                logger2.getClass();
                ((CertificateNfcScanViewModelImpl$startScanning$1) certificateNfcScanViewModelImpl$startScanning$1).invoke(nfcV, activity);
            }
        }, 392, bundle);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void z() {
        this.f55899a.z();
    }
}
