package com.vuitton.android.presentation.screen.certificates.diamonds.add;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import androidx.navigation.SavedStateHandleKt;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.certificates.CertificateMonitoring;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.certificate.AddCertificateChinaConsentUseCase;
import com.vuitton.android.domain.usecase.certificate.AddCertificateUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.certificates.CertificateRoute;
import com.vuitton.android.presentation.screen.certificates.components.add.AddCertificateFormEntries;
import com.vuitton.android.presentation.screen.certificates.diamonds.add.model.AddCertificateInfoBuyerUiModel;
import com.vuitton.android.presentation.screen.certificates.diamonds.add.model.AddCertificateInfoIndividualNumberUiModel;
import com.vuitton.android.presentation.screen.certificates.diamonds.add.model.AddCertificateInfoUiModel;
import com.vuitton.android.presentation.screen.certificates.diamonds.add.model.AddCertificateUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateTrackingUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateTrackingUiModelKt;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt;
import defpackage.md;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0017BQ\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModel;", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase;", "addCertificateUseCase", "Lcom/vuitton/android/domain/usecase/certificate/AddCertificateChinaConsentUseCase;", "addCertificateChinaConsentUseCase", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase;Lcom/vuitton/android/domain/usecase/certificate/AddCertificateChinaConsentUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AddCertificateViewModelImpl extends ViewModel implements AddCertificateViewModel {
    public static final String s;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f55751a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnalyticsTracker f55752b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Monitor f55753c;
    public final NotificationBuilder d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AddCertificateUseCase f55754e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AddCertificateChinaConsentUseCase f55755f;
    public final GetProfileUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f55756h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final InAppDispatch f55757i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableStateFlow f55758j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableStateFlow f55759k;
    public final MutableStateFlow l;
    public final MutableStateFlow m;
    public final MutableStateFlow n;
    public final MutableStateFlow o;
    public MonitorAction p;
    public final BufferedChannel q;
    public final StateFlow r;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0082\u0003\u0018\u00002\u00020\u0001R\u001c\u0010\u0004\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$Companion;", "", "", "kotlin.jvm.PlatformType", "TAG", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        s = "AddCertificateViewModelImpl";
    }

    @Inject
    public AddCertificateViewModelImpl(SavedStateHandle savedStateHandle, Logger logger, AnalyticsTracker analyticsTracker, Monitor monitor, NotificationBuilder notificationBuilder, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, AddCertificateUseCase addCertificateUseCase, AddCertificateChinaConsentUseCase addCertificateChinaConsentUseCase, GetProfileUseCase getProfileUseCase) {
        Object value;
        savedStateHandle.getClass();
        logger.getClass();
        analyticsTracker.getClass();
        monitor.getClass();
        notificationBuilder.getClass();
        requireUserInAppDispatchUseCase.getClass();
        addCertificateUseCase.getClass();
        addCertificateChinaConsentUseCase.getClass();
        getProfileUseCase.getClass();
        this.f55751a = logger;
        this.f55752b = analyticsTracker;
        this.f55753c = monitor;
        this.d = notificationBuilder;
        this.f55754e = addCertificateUseCase;
        this.f55755f = addCertificateChinaConsentUseCase;
        this.g = getProfileUseCase;
        this.f55756h = ((CertificateRoute.Add) SavedStateHandleKt.a(savedStateHandle, Reflection.f71922a.b(CertificateRoute.Add.class), MapsKt.c())).f55599a;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        this.f55757i = inAppDispatchB;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(AddCertificateInfoIndividualNumberUiModel.f55782c);
        this.f55758j = mutableStateFlowA;
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.f55759k = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(bool);
        this.l = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(bool);
        this.m = mutableStateFlowA4;
        this.n = StateFlowKt.a(null);
        this.o = StateFlowKt.a(null);
        this.q = ChannelKt.a(0, 7, null);
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4};
        Flow<AddCertificateUiModel> flow = new Flow<AddCertificateUiModel>() { // from class: com.vuitton.android.presentation.screen.certificates.diamonds.add.AddCertificateViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.certificates.diamonds.add.AddCertificateViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.certificates.diamonds.add.AddCertificateViewModelImpl$special$$inlined$combine$1$3", f = "AddCertificateViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super AddCertificateUiModel>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f55776b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f55777c;
                public /* synthetic */ Object[] d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ AddCertificateViewModelImpl f55778e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, AddCertificateViewModelImpl addCertificateViewModelImpl) {
                    super(3, continuation);
                    this.f55778e = addCertificateViewModelImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.f55778e);
                    anonymousClass3.f55777c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f55777c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f55776b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        AddCertificateViewModelImpl addCertificateViewModelImpl = this.f55778e;
                        InAppDispatch inAppDispatch = addCertificateViewModelImpl.f55757i;
                        String str = addCertificateViewModelImpl.f55756h;
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        AddCertificateInfoUiModel addCertificateInfoUiModel = (AddCertificateInfoUiModel) obj2;
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        boolean zBooleanValue = ((Boolean) obj3).booleanValue();
                        Object obj4 = objArr[2];
                        obj4.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj4).booleanValue();
                        Object obj5 = objArr[3];
                        obj5.getClass();
                        AddCertificateUiModel addCertificateUiModel = new AddCertificateUiModel(inAppDispatch, addCertificateInfoUiModel, null, str, zBooleanValue, zBooleanValue2, ((Boolean) obj5).booleanValue(), 4, null);
                        this.f55777c = null;
                        this.d = null;
                        this.f55776b = 1;
                        if (flowCollector.emit(addCertificateUiModel, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.certificates.diamonds.add.AddCertificateViewModelImpl$special$$inlined$combine$1.2
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return new Object[flowArr2.length];
                    }
                }, new AnonymousClass3(null, this), flowCollector, flowArr2);
                return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
            }
        };
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        this.r = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new AddCertificateUiModel(inAppDispatchB, null, null, null, false, false, false, 126, null));
        if (InAppDispatchExtKt.c(inAppDispatchB)) {
            do {
                value = mutableStateFlowA4.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlowA4.i(value, Boolean.TRUE));
            BuildersKt.c(ViewModelKt.a(this), null, null, new AddCertificateViewModelImpl$getUserLoginAndAtgId$1(null, this), 3);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public static final Object yc(AddCertificateViewModelImpl addCertificateViewModelImpl, ContinuationImpl continuationImpl) {
        AddCertificateViewModelImpl$addChinaConsent$1 addCertificateViewModelImpl$addChinaConsent$1;
        CharSequence charSequence;
        MutableStateFlow mutableStateFlow = addCertificateViewModelImpl.o;
        MutableStateFlow mutableStateFlow2 = addCertificateViewModelImpl.n;
        if (continuationImpl instanceof AddCertificateViewModelImpl$addChinaConsent$1) {
            addCertificateViewModelImpl$addChinaConsent$1 = (AddCertificateViewModelImpl$addChinaConsent$1) continuationImpl;
            int i2 = addCertificateViewModelImpl$addChinaConsent$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                addCertificateViewModelImpl$addChinaConsent$1.d = i2 - Integer.MIN_VALUE;
            } else {
                addCertificateViewModelImpl$addChinaConsent$1 = new AddCertificateViewModelImpl$addChinaConsent$1(addCertificateViewModelImpl, continuationImpl);
            }
        } else {
            addCertificateViewModelImpl$addChinaConsent$1 = new AddCertificateViewModelImpl$addChinaConsent$1(addCertificateViewModelImpl, continuationImpl);
        }
        Object obj = addCertificateViewModelImpl$addChinaConsent$1.f55763b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = addCertificateViewModelImpl$addChinaConsent$1.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        CharSequence charSequence2 = (CharSequence) mutableStateFlow2.getValue();
        if (charSequence2 == null || charSequence2.length() == 0 || (charSequence = (CharSequence) mutableStateFlow.getValue()) == null || charSequence.length() == 0) {
            Result.Companion companion = Result.INSTANCE;
            return new Result.Failure(new Exception("China consent request failed: missing userLogin or userAtgId"));
        }
        AddCertificateChinaConsentUseCase addCertificateChinaConsentUseCase = addCertificateViewModelImpl.f55755f;
        String str = (String) mutableStateFlow.getValue();
        if (str == null) {
            str = "";
        }
        String str2 = (String) mutableStateFlow2.getValue();
        AddCertificateChinaConsentUseCase.Param param = new AddCertificateChinaConsentUseCase.Param(str, str2 != null ? str2 : "");
        addCertificateViewModelImpl$addChinaConsent$1.d = 1;
        Object objA = addCertificateChinaConsentUseCase.a(param, addCertificateViewModelImpl$addChinaConsent$1);
        return objA == coroutineSingletons ? coroutineSingletons : objA;
    }

    public static final void zc(AddCertificateViewModelImpl addCertificateViewModelImpl) {
        BuildersKt.c(ViewModelKt.a(addCertificateViewModelImpl), null, null, new AddCertificateViewModelImpl$notifyError$1(null, addCertificateViewModelImpl), 3);
    }

    public final void Ac(Map map) {
        String str = (String) map.get(AddCertificateFormEntries.INDIVIDUAL_NUMBER.getEntryName());
        if (str == null) {
            str = "";
        }
        String str2 = (String) map.get(AddCertificateFormEntries.BUYER_NAME.getEntryName());
        String str3 = str2 != null ? str2 : "";
        this.f55759k.setValue(Boolean.TRUE);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AddCertificateViewModelImpl$addCertificate$1(this, str, str3, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.certificates.diamonds.add.AddCertificateViewModel
    public final void I6() {
        this.f55758j.setValue(AddCertificateInfoIndividualNumberUiModel.f55782c);
        u(CertificateTrackingUiModel.OpenIndividualNumberInfoEvent.f55871a);
    }

    @Override // com.vuitton.android.presentation.screen.certificates.diamonds.add.AddCertificateViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getR() {
        return this.r;
    }

    @Override // com.vuitton.android.presentation.screen.certificates.diamonds.add.AddCertificateViewModel
    public final Flow b() {
        return FlowKt.y(this.q);
    }

    @Override // com.vuitton.android.presentation.screen.certificates.diamonds.add.AddCertificateViewModel
    public final void j8(boolean z) {
        this.f55752b.a(CertificateTrackingUiModelKt.b(new CertificateTrackingUiModel.ConsentCheckboxToggledEvent(z)));
    }

    @Override // com.vuitton.android.presentation.screen.certificates.diamonds.add.AddCertificateViewModel
    public final void k5(Map map) {
        map.getClass();
        this.f55752b.a(CertificateTrackingUiModelKt.b(CertificateTrackingUiModel.ActivateCertificateEvent.f55848a));
        String str = (String) map.get(AddCertificateFormEntries.INDIVIDUAL_NUMBER.getEntryName());
        if (str == null) {
            str = "";
        }
        Monitor monitor = this.f55753c;
        CertificateMonitoring.Action.ActivateCertificate activateCertificate = CertificateMonitoring.Action.ActivateCertificate.f48893a;
        InAppDispatch inAppDispatch = this.f55757i;
        DynatraceMonitorAction dynatraceMonitorActionA = monitor.a(inAppDispatch, activateCertificate);
        dynatraceMonitorActionA.c(str, "SN");
        this.p = dynatraceMonitorActionA;
        if (!InAppDispatchExtKt.c(inAppDispatch)) {
            Ac(map);
        } else {
            this.f55759k.setValue(Boolean.TRUE);
            BuildersKt.c(ViewModelKt.a(this), null, null, new AddCertificateViewModelImpl$addConsentAndAddCertificate$1(this, map, null), 3);
        }
    }

    @Override // com.vuitton.android.presentation.screen.certificates.diamonds.add.AddCertificateViewModel
    public final void u(CertificateTrackingUiModel certificateTrackingUiModel) {
        this.f55752b.a(CertificateTrackingUiModelKt.b(certificateTrackingUiModel));
    }

    @Override // com.vuitton.android.presentation.screen.certificates.diamonds.add.AddCertificateViewModel
    public final void xa() {
        this.f55758j.setValue(AddCertificateInfoBuyerUiModel.f55781c);
        u(CertificateTrackingUiModel.OpenBuyerNameInfoEvent.f55868a);
    }
}
