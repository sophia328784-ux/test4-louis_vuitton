package com.vuitton.android.presentation.screen.authentication.welcome;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.domain.provider.environment.EnvironmentProvider;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.video.GetLiveVideoUseCase;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import com.vuitton.android.presentation.screen.authentication.welcome.model.WelcomeViewState;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B)\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModel;", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;", "getLiveVideoUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;", "environmentProvider", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class WelcomeViewModelImpl extends ViewModel implements WelcomeViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetLiveVideoUseCase f54250a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EnvironmentProvider f54251b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableStateFlow f54252c;
    public final MutableStateFlow d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableStateFlow f54253e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableStateFlow f54254f;
    public final MutableStateFlow g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f54255h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f54256i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f54257j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Flow f54258k;
    public final StateFlow l;

    @Inject
    public WelcomeViewModelImpl(SavedStateHandle savedStateHandle, GetLiveVideoUseCase getLiveVideoUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, EnvironmentProvider environmentProvider) {
        savedStateHandle.getClass();
        getLiveVideoUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        environmentProvider.getClass();
        this.f54250a = getLiveVideoUseCase;
        this.f54251b = environmentProvider;
        Boolean bool = (Boolean) savedStateHandle.a("CONNECTED_OBJECT_LINK");
        Boolean bool2 = (Boolean) savedStateHandle.a("MANAGED_SETTINGS_LINK");
        LoginContext loginContext = (LoginContext) savedStateHandle.a("LOGIN_CONTEXT");
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(loginContext == null ? LoginContext.DEFAULT : loginContext);
        this.f54252c = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(new AssetVideoUiModel(null, null, null, null, null, null, null, CertificateBody.profileType, null));
        this.d = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(Boolean.FALSE);
        this.f54253e = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(Boolean.valueOf(bool != null ? bool.booleanValue() : true));
        this.f54254f = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(Boolean.valueOf(bool2 != null ? bool2.booleanValue() : true));
        this.g = mutableStateFlowA5;
        this.f54255h = isFeatureAvailableUseCase.b(new Feature[]{Feature.NATIVE_LOGIN});
        this.f54256i = isFeatureAvailableUseCase.b(new Feature[]{Feature.NATIVE_REGISTER});
        this.f54257j = isFeatureAvailableUseCase.b(new Feature[]{Feature.NATIVE_REGISTER_KISA});
        this.f54258k = FlowKt.y(ChannelKt.a(0, 7, null));
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA4, mutableStateFlowA5, mutableStateFlowA2, mutableStateFlowA3};
        Flow<WelcomeViewState> flow = new Flow<WelcomeViewState>() { // from class: com.vuitton.android.presentation.screen.authentication.welcome.WelcomeViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.welcome.WelcomeViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.welcome.WelcomeViewModelImpl$special$$inlined$combine$1$3", f = "WelcomeViewModel.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super WelcomeViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f54263b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f54264c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f54264c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f54264c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f54263b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        LoginContext loginContext = (LoginContext) obj2;
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        boolean zBooleanValue = ((Boolean) obj3).booleanValue();
                        Object obj4 = objArr[2];
                        obj4.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj4).booleanValue();
                        Object obj5 = objArr[3];
                        obj5.getClass();
                        Object obj6 = objArr[4];
                        obj6.getClass();
                        WelcomeViewState welcomeViewState = new WelcomeViewState(loginContext, (AssetVideoUiModel) obj5, ((Boolean) obj6).booleanValue(), false, zBooleanValue, zBooleanValue2, false, 72, null);
                        this.f54264c = null;
                        this.d = null;
                        this.f54263b = 1;
                        if (flowCollector.emit(welcomeViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.authentication.welcome.WelcomeViewModelImpl$special$$inlined$combine$1.2
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
        this.l = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new WelcomeViewState(null, null, false, false, false, false, false, CertificateBody.profileType, null));
        BuildersKt.c(ViewModelKt.a(this), null, null, new WelcomeViewModelImpl$getLoginVideoUrl$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.authentication.welcome.WelcomeViewModel
    /* JADX INFO: renamed from: L0, reason: from getter */
    public final boolean getF54255h() {
        return this.f54255h;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.welcome.WelcomeViewModel
    /* JADX INFO: renamed from: R, reason: from getter */
    public final boolean getF54257j() {
        return this.f54257j;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.welcome.WelcomeViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getL() {
        return this.l;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.welcome.WelcomeViewModel
    /* JADX INFO: renamed from: j0, reason: from getter */
    public final boolean getF54256i() {
        return this.f54256i;
    }
}
