package com.vuitton.android.presentation.screen.certificates.nfc;

import android.app.Activity;
import android.nfc.tech.NfcV;
import androidx.lifecycle.MutableLiveData;
import com.vuitton.android.data.net.interceptor.UserAgentInterceptor;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.certificates.CertificateMonitoring;
import com.vuitton.android.domain.usecase.authentication.oauth.GetSfidTokenOrNullUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.GetSlasTokenOrNullUseCase;
import com.vuitton.android.presentation.screen.certificates.model.CertificateVisionnaireUiModel;
import com.vuitton.android.presentation.screen.certificates.nfc.model.NfcErrorType;
import com.vuitton.android.presentation.screen.certificates.nfc.model.NfcScanState;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.secrets.SecretKey;
import defpackage.md;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;
import lv.nfc.reader.data.models.LVResult;
import lv.nfc.reader.data.models.LVTagInput;
import lv.nfc.reader.data.models.LVTagResult;
import lv.nfc.reader.utils.LVConstants;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.certificates.nfc.CertificateNfcScanViewModelImpl$onNfcTagDetected$1", f = "CertificateNfcScanViewModelImpl.kt", l = {151, 152}, m = "invokeSuspend", v = 2)
final class CertificateNfcScanViewModelImpl$onNfcTagDetected$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f55911b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f55912c;
    public final /* synthetic */ CertificateNfcScanViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Activity f55913e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ NfcV f55914f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CertificateNfcScanViewModelImpl$onNfcTagDetected$1(CertificateNfcScanViewModelImpl certificateNfcScanViewModelImpl, Activity activity, NfcV nfcV, Continuation continuation) {
        super(2, continuation);
        this.d = certificateNfcScanViewModelImpl;
        this.f55913e = activity;
        this.f55914f = nfcV;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CertificateNfcScanViewModelImpl$onNfcTagDetected$1(this.d, this.f55913e, this.f55914f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CertificateNfcScanViewModelImpl$onNfcTagDetected$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:40:0x009b  */
    /* JADX WARN: Code duplicated, block: B:41:0x009d  */
    /* JADX WARN: Code duplicated, block: B:44:0x00c9 A[Catch: Exception -> 0x0019, TryCatch #0 {Exception -> 0x0019, blocks: (B:7:0x0013, B:38:0x0097, B:42:0x009e, B:44:0x00c9, B:49:0x00d2, B:51:0x00ee, B:53:0x00f2, B:55:0x00f9, B:54:0x00f7, B:13:0x0024, B:31:0x0083, B:34:0x0088, B:28:0x0078), top: B:72:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:47:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:48:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:54:0x00f7 A[Catch: Exception -> 0x0019, TryCatch #0 {Exception -> 0x0019, blocks: (B:7:0x0013, B:38:0x0097, B:42:0x009e, B:44:0x00c9, B:49:0x00d2, B:51:0x00ee, B:53:0x00f2, B:55:0x00f9, B:54:0x00f7, B:13:0x0024, B:31:0x0083, B:34:0x0088, B:28:0x0078), top: B:72:0x000b }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        Object value2;
        Object value3;
        Object value4;
        String str;
        String str2;
        String str3;
        CertificateVisionnaireUiModel certificateVisionnaireUiModel;
        String str4;
        String str5;
        CertificateVisionnaireUiModel certificateVisionnaireUiModel2;
        List listO;
        String str6;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f55912c;
        CertificateNfcScanViewModelImpl certificateNfcScanViewModelImpl = this.d;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                MutableStateFlow mutableStateFlow = certificateNfcScanViewModelImpl.f55907k;
                MutableStateFlow mutableStateFlow2 = certificateNfcScanViewModelImpl.l;
                Logger logger = certificateNfcScanViewModelImpl.f55901c;
                if (!(mutableStateFlow.getValue() instanceof NfcScanState.Scanning)) {
                    String str7 = CertificateNfcScanViewModelImplKt.f55921a;
                    logger.getClass();
                    return Unit.f71739a;
                }
                if (((Boolean) mutableStateFlow2.getValue()).booleanValue()) {
                    String str8 = CertificateNfcScanViewModelImplKt.f55921a;
                    logger.getClass();
                    return Unit.f71739a;
                }
                do {
                    value3 = mutableStateFlow2.getValue();
                    ((Boolean) value3).getClass();
                } while (!mutableStateFlow2.i(value3, Boolean.TRUE));
                MutableStateFlow mutableStateFlow3 = certificateNfcScanViewModelImpl.f55907k;
                do {
                    value4 = mutableStateFlow3.getValue();
                } while (!mutableStateFlow3.i(value4, NfcScanState.Processing.f55938a));
                GetSfidTokenOrNullUseCase getSfidTokenOrNullUseCase = certificateNfcScanViewModelImpl.f55902e;
                this.f55912c = 1;
                obj = getSfidTokenOrNullUseCase.a(this);
                if (obj == coroutineSingletons) {
                }
                return coroutineSingletons;
            }
            if (i2 == 1) {
                ResultKt.b(obj);
            } else {
                if (i2 != 2) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                String str9 = this.f55911b;
                ResultKt.b(obj);
                str = str9;
            }
            str2 = (String) obj;
            if (str2 == null) {
                str3 = "";
            } else {
                str3 = str2;
            }
            NfcManager nfcManager = certificateNfcScanViewModelImpl.f55900b;
            AppConfig appConfig = certificateNfcScanViewModelImpl.f55905i;
            NfcManager nfcManager2 = certificateNfcScanViewModelImpl.f55900b;
            String strA = nfcManager.f55926b.a(SecretKey.NFC_SDK_CLIENT_ID);
            String strA2 = nfcManager2.f55926b.a(SecretKey.NFC_SDK_CLIENT_SECRET);
            UserAgentInterceptor.Companion companion = UserAgentInterceptor.f47097c;
            Activity activity = this.f55913e;
            certificateNfcScanViewModelImpl.f55904h.getClass();
            companion.getClass();
            String strA3 = UserAgentInterceptor.Companion.a(activity, false);
            certificateVisionnaireUiModel = certificateNfcScanViewModelImpl.n;
            if (certificateVisionnaireUiModel != null) {
                str4 = certificateVisionnaireUiModel.f55888i;
            } else {
                str4 = null;
            }
            if (str4 == null) {
                str5 = "";
            } else {
                str5 = str4;
            }
            Map<String, String> mapCreateHeaders = LVConstants.createHeaders(str, str3, strA, strA2, strA3, str5);
            certificateNfcScanViewModelImpl.f55901c.c("NFC TAG", appConfig.G.f67240b, null);
            NfcV nfcV = this.f55914f;
            String str10 = appConfig.G.f67240b;
            mapCreateHeaders.getClass();
            certificateVisionnaireUiModel2 = certificateNfcScanViewModelImpl.n;
            if (certificateVisionnaireUiModel2 != null || (str6 = certificateVisionnaireUiModel2.f55887h) == null) {
                listO = EmptyList.f71768b;
            } else {
                listO = CollectionsKt.O(str6);
            }
            nfcManager2.getClass();
            nfcV.getClass();
            str10.getClass();
            listO.getClass();
            LVTagInput lVTagInput = new LVTagInput(str10, nfcV, mapCreateHeaders, listO);
            nfcManager2.getClass();
            MutableLiveData<LVResult<LVTagResult>> mutableLiveDataScan = nfcManager2.f55927c.scan(lVTagInput);
            mutableLiveDataScan.getClass();
            mutableLiveDataScan.observeForever(new CertificateNfcScanViewModelImplKt$sam$androidx_lifecycle_Observer$0(new a(certificateNfcScanViewModelImpl)));
            return Unit.f71739a;
            String str11 = (String) obj;
            if (str11 == null) {
                str11 = "";
            }
            GetSlasTokenOrNullUseCase getSlasTokenOrNullUseCase = certificateNfcScanViewModelImpl.f55903f;
            this.f55911b = str11;
            this.f55912c = 2;
            Object objA = getSlasTokenOrNullUseCase.a(this);
            if (objA != coroutineSingletons) {
                str = str11;
                obj = objA;
                str2 = (String) obj;
                if (str2 == null) {
                    str3 = "";
                } else {
                    str3 = str2;
                }
                NfcManager nfcManager3 = certificateNfcScanViewModelImpl.f55900b;
                AppConfig appConfig2 = certificateNfcScanViewModelImpl.f55905i;
                NfcManager nfcManager4 = certificateNfcScanViewModelImpl.f55900b;
                String strA4 = nfcManager3.f55926b.a(SecretKey.NFC_SDK_CLIENT_ID);
                String strA5 = nfcManager4.f55926b.a(SecretKey.NFC_SDK_CLIENT_SECRET);
                UserAgentInterceptor.Companion companion2 = UserAgentInterceptor.f47097c;
                Activity activity2 = this.f55913e;
                certificateNfcScanViewModelImpl.f55904h.getClass();
                companion2.getClass();
                String strA6 = UserAgentInterceptor.Companion.a(activity2, false);
                certificateVisionnaireUiModel = certificateNfcScanViewModelImpl.n;
                if (certificateVisionnaireUiModel != null) {
                    str4 = certificateVisionnaireUiModel.f55888i;
                } else {
                    str4 = null;
                }
                if (str4 == null) {
                    str5 = "";
                } else {
                    str5 = str4;
                }
                Map<String, String> mapCreateHeaders2 = LVConstants.createHeaders(str, str3, strA4, strA5, strA6, str5);
                certificateNfcScanViewModelImpl.f55901c.c("NFC TAG", appConfig2.G.f67240b, null);
                NfcV nfcV2 = this.f55914f;
                String str12 = appConfig2.G.f67240b;
                mapCreateHeaders2.getClass();
                certificateVisionnaireUiModel2 = certificateNfcScanViewModelImpl.n;
                if (certificateVisionnaireUiModel2 != null) {
                    listO = EmptyList.f71768b;
                } else {
                    listO = EmptyList.f71768b;
                }
                nfcManager4.getClass();
                nfcV2.getClass();
                str12.getClass();
                listO.getClass();
                LVTagInput lVTagInput2 = new LVTagInput(str12, nfcV2, mapCreateHeaders2, listO);
                nfcManager4.getClass();
                MutableLiveData<LVResult<LVTagResult>> mutableLiveDataScan2 = nfcManager4.f55927c.scan(lVTagInput2);
                mutableLiveDataScan2.getClass();
                mutableLiveDataScan2.observeForever(new CertificateNfcScanViewModelImplKt$sam$androidx_lifecycle_Observer$0(new a(certificateNfcScanViewModelImpl)));
                return Unit.f71739a;
            }
            return coroutineSingletons;
        } catch (Exception e2) {
            certificateNfcScanViewModelImpl.f55901c.c(CertificateNfcScanViewModelImplKt.f55921a, "Error during scan", e2);
            MutableStateFlow mutableStateFlow4 = certificateNfcScanViewModelImpl.l;
            do {
                value = mutableStateFlow4.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow4.i(value, Boolean.FALSE));
            MutableStateFlow mutableStateFlow5 = certificateNfcScanViewModelImpl.f55907k;
            do {
                value2 = mutableStateFlow5.getValue();
            } while (!mutableStateFlow5.i(value2, new NfcScanState.Error(NfcErrorType.TECHNICAL_ERROR, e2.getMessage())));
            MonitorAction monitorAction = certificateNfcScanViewModelImpl.m;
            if (monitorAction != null) {
                monitorAction.d(new CertificateMonitoring.Error.NfcScanError(e2));
                Result.Companion companion3 = Result.INSTANCE;
            }
            MonitorAction monitorAction2 = certificateNfcScanViewModelImpl.m;
            if (monitorAction2 != null) {
                monitorAction2.b();
                Result.Companion companion4 = Result.INSTANCE;
            }
            certificateNfcScanViewModelImpl.m = null;
        }
    }
}
