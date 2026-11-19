package com.vuitton.android.presentation.screen.certificates.diamonds.transfer;

import android.app.Application;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.R;
import com.vuitton.android.core.extensions.SerializationExtKt;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.certificates.CertificateMonitoring;
import com.vuitton.android.domain.usecase.certificate.TransferCertificateUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.certificates.components.transfer.CertificateTransferFormEntries;
import com.vuitton.android.presentation.screen.certificates.diamonds.transfer.model.CertificateTransferUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateDiamondUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateRubyUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateTrackingUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateTrackingUiModelKt;
import com.vuitton.android.presentation.screen.certificates.model.CertificateUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.appointment.PhoneNumber;
import com.vuitton.foundation.model.domain.model.certificate.Certificate;
import com.vuitton.foundation.model.domain.model.certificate.CertificateDiamond;
import com.vuitton.foundation.model.domain.model.certificate.CertificateRuby;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.RegionCode;
import com.vuitton.foundation.model.domain.model.profile.Country;
import defpackage.md;
import java.io.IOException;
import java.io.InputStream;
import java.time.LocalDateTime;
import java.util.Iterator;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
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
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0015BI\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0016"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModel;", "Landroid/app/Application;", "application", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lkotlinx/serialization/json/Json;", "json", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/certificate/TransferCertificateUseCase;", "transferCertificateUseCase", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "<init>", "(Landroid/app/Application;Lcom/vuitton/foundation/logger/Logger;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/certificate/TransferCertificateUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CertificateTransferViewModelImpl extends ViewModel implements CertificateTransferViewModel {
    public static final String o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Application f55790a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Logger f55791b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Json f55792c;
    public final AnalyticsTracker d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Monitor f55793e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TransferCertificateUseCase f55794f;
    public final NotificationBuilder g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final InAppDispatch f55795h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableStateFlow f55796i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableStateFlow f55797j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableStateFlow f55798k;
    public MonitorAction l;
    public final BufferedChannel m;
    public final StateFlow n;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001c\u0010\u0004\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl$Companion;", "", "", "kotlin.jvm.PlatformType", "TAG", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        o = "CertificateTransferViewModelImpl";
    }

    @Inject
    public CertificateTransferViewModelImpl(Application application, Logger logger, Json json, AnalyticsTracker analyticsTracker, Monitor monitor, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, TransferCertificateUseCase transferCertificateUseCase, NotificationBuilder notificationBuilder) {
        application.getClass();
        logger.getClass();
        json.getClass();
        analyticsTracker.getClass();
        monitor.getClass();
        requireUserInAppDispatchUseCase.getClass();
        transferCertificateUseCase.getClass();
        notificationBuilder.getClass();
        this.f55790a = application;
        this.f55791b = logger;
        this.f55792c = json;
        this.d = analyticsTracker;
        this.f55793e = monitor;
        this.f55794f = transferCertificateUseCase;
        this.g = notificationBuilder;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        this.f55795h = inAppDispatchB;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(null);
        this.f55796i = mutableStateFlowA;
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.f55797j = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(new Pair(bool, null));
        this.f55798k = mutableStateFlowA3;
        this.m = ChannelKt.a(0, 7, null);
        final Flow[] flowArr = {mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA};
        Flow<CertificateTransferUiModel> flow = new Flow<CertificateTransferUiModel>() { // from class: com.vuitton.android.presentation.screen.certificates.diamonds.transfer.CertificateTransferViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.certificates.diamonds.transfer.CertificateTransferViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.certificates.diamonds.transfer.CertificateTransferViewModelImpl$special$$inlined$combine$1$3", f = "CertificateTransferViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super CertificateTransferUiModel>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f55804b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f55805c;
                public /* synthetic */ Object[] d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ CertificateTransferViewModelImpl f55806e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, CertificateTransferViewModelImpl certificateTransferViewModelImpl) {
                    super(3, continuation);
                    this.f55806e = certificateTransferViewModelImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.f55806e);
                    anonymousClass3.f55805c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f55805c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f55804b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        InAppDispatch inAppDispatch = this.f55806e.f55795h;
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        CertificateTransferUiModel certificateTransferUiModel = new CertificateTransferUiModel(inAppDispatch, zBooleanValue, (Pair) obj3, (CertificateUiModel) objArr[2]);
                        this.f55805c = null;
                        this.d = null;
                        this.f55804b = 1;
                        if (flowCollector.emit(certificateTransferUiModel, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.certificates.diamonds.transfer.CertificateTransferViewModelImpl$special$$inlined$combine$1.2
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
        this.n = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new CertificateTransferUiModel(inAppDispatchB, false, null, null, 14, null));
    }

    @Override // com.vuitton.android.presentation.screen.certificates.diamonds.transfer.CertificateTransferViewModel
    public final void S7(CertificateUiModel certificateUiModel) {
        this.f55796i.setValue(certificateUiModel);
    }

    @Override // com.vuitton.android.presentation.screen.certificates.diamonds.transfer.CertificateTransferViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getN() {
        return this.n;
    }

    @Override // com.vuitton.android.presentation.screen.certificates.diamonds.transfer.CertificateTransferViewModel
    public final Flow b() {
        return FlowKt.y(this.m);
    }

    @Override // com.vuitton.android.presentation.screen.certificates.diamonds.transfer.CertificateTransferViewModel
    public final void e1(Map map) throws IOException {
        String str;
        Certificate certificateRuby;
        Object next;
        String str2;
        map.getClass();
        CertificateUiModel certificateUiModel = (CertificateUiModel) this.f55796i.getValue();
        if (certificateUiModel != null) {
            this.d.a(CertificateTrackingUiModelKt.b(new CertificateTrackingUiModel.TransferCertificateActivationEvent(certificateUiModel)));
            Monitor monitor = this.f55793e;
            CertificateMonitoring.Action.TransferCertificate transferCertificate = CertificateMonitoring.Action.TransferCertificate.f48896a;
            InAppDispatch inAppDispatch = this.f55795h;
            DynatraceMonitorAction dynatraceMonitorActionA = monitor.a(inAppDispatch, transferCertificate);
            dynatraceMonitorActionA.c(certificateUiModel.getF55840b(), "SN");
            this.l = dynatraceMonitorActionA;
            if (InAppDispatchExtKt.c(inAppDispatch)) {
                InputStream inputStreamOpenRawResource = this.f55790a.getResources().openRawResource(R.raw.countries);
                inputStreamOpenRawResource.getClass();
                String strA = SerializationExtKt.a(inputStreamOpenRawResource);
                Json json = this.f55792c;
                json.getClass();
                Iterator it = ((Iterable) json.b(new ArrayListSerializer(Country.INSTANCE.serializer()), strA)).iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    } else {
                        next = it.next();
                        str2 = ((Country) next).f68160a;
                        RegionCode.f67513b.getClass();
                    }
                } while (!Intrinsics.c(str2, RegionCode.f67517h));
                Country country = (Country) next;
                str = country != null ? country.f68162c : null;
                if (str == null) {
                    str = "";
                }
            } else {
                str = null;
            }
            String str3 = inAppDispatch.f67483j;
            String str4 = (String) map.get(CertificateTransferFormEntries.PHONE_NUMBER.getEntryName());
            if (str4 == null) {
                str4 = "";
            }
            PhoneNumber phoneNumber = str != null ? new PhoneNumber(str, str3, str4) : null;
            if (certificateUiModel instanceof CertificateDiamondUiModel) {
                CertificateDiamondUiModel certificateDiamondUiModel = (CertificateDiamondUiModel) certificateUiModel;
                String str5 = certificateDiamondUiModel.f55827b;
                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                String str6 = certificateDiamondUiModel.f55828c;
                companion.getClass();
                SkuIdUiModel.Companion.b(str6);
                certificateRuby = new CertificateDiamond(str5, str6, null, null, null, certificateDiamondUiModel.f55830f, null, null, null, null, null, null, null, 8156, null);
            } else if (certificateUiModel instanceof CertificateRubyUiModel) {
                CertificateRubyUiModel certificateRubyUiModel = (CertificateRubyUiModel) certificateUiModel;
                String str7 = certificateRubyUiModel.f55840b;
                SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
                String str8 = certificateRubyUiModel.f55841c;
                companion2.getClass();
                SkuIdUiModel.Companion.b(str8);
                certificateRuby = new CertificateRuby(str7, str8, null, null, certificateRubyUiModel.f55843f, null, null, null, 236, null);
            } else {
                certificateRuby = null;
            }
            String str9 = (String) map.get(CertificateTransferFormEntries.EMAIL.getEntryName());
            String str10 = str9 == null ? "" : str9;
            String str11 = phoneNumber != null ? phoneNumber.f66543c : null;
            String str12 = str11 == null ? "" : str11;
            String str13 = (String) map.get(CertificateTransferFormEntries.KEYWORD.getEntryName());
            String str14 = str13 == null ? "" : str13;
            LocalDateTime localDateTimeNow = LocalDateTime.now();
            localDateTimeNow.getClass();
            TransferCertificateUseCase.Param param = new TransferCertificateUseCase.Param(certificateRuby, str10, str12, str14, DateTimeUtils.j("yyyy-MM-dd", localDateTimeNow));
            this.f55797j.setValue(Boolean.TRUE);
            BuildersKt.c(ViewModelKt.a(this), null, null, new CertificateTransferViewModelImpl$transferCertificate$1$2(this, param, null), 3);
        }
    }

    @Override // com.vuitton.android.presentation.screen.certificates.diamonds.transfer.CertificateTransferViewModel
    public final void u(CertificateTrackingUiModel certificateTrackingUiModel) {
        this.d.a(CertificateTrackingUiModelKt.b(certificateTrackingUiModel));
    }
}
