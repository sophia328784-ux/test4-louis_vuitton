package com.vuitton.android.presentation.screen.authentication.forgetpassword;

import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import androidx.navigation.SavedStateHandleKt;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.usecase.authentication.oauth.ForgetPasswordInitiateUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.ForgetPasswordValidateUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.forms.GetRegistrationFormUseCase;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.authentication.common.validation.FormPasswordValidationRules;
import com.vuitton.android.presentation.screen.authentication.common.validation.PasswordUiModel;
import com.vuitton.android.presentation.screen.authentication.common.validation.PasswordValidationState;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.models.ForgetPasswordTrackingUiModel;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.models.ForgetPasswordViewState;
import com.vuitton.android.presentation.screen.authentication.login.NativeLoginRoute;
import com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisor;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.analytics.HitType;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.ck;
import defpackage.dy;
import defpackage.g3;
import defpackage.iv;
import defpackage.md;
import defpackage.rq;
import defpackage.rt;
import defpackage.v40;
import java.util.Set;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002BQ\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModel;", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/domain/usecase/authentication/oauth/ForgetPasswordInitiateUseCase;", "forgetPasswordInitiateUseCase", "Lcom/vuitton/android/domain/usecase/authentication/oauth/ForgetPasswordValidateUseCase;", "forgetPasswordValidateUseCase", "Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;", "forgetPasswordFormSupervisor", "Lcom/vuitton/android/domain/usecase/forms/GetRegistrationFormUseCase;", "getRegistrationFormUseCase", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;", "passwordValidationRules", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/authentication/oauth/ForgetPasswordInitiateUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/ForgetPasswordValidateUseCase;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/domain/usecase/forms/GetRegistrationFormUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ForgetPasswordViewModelImpl extends ViewModel implements ForgetPasswordViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Monitor f53500a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ForgetPasswordInitiateUseCase f53501b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ForgetPasswordValidateUseCase f53502c;
    public final DynamicFormSupervisor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GetRegistrationFormUseCase f53503e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FormPasswordValidationRules f53504f;
    public final AnalyticsTracker g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final InAppDispatch f53505h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableStateFlow f53506i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableStateFlow f53507j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableStateFlow f53508k;
    public final MutableStateFlow l;
    public final MutableStateFlow m;
    public final MutableStateFlow n;
    public final SharedFlowImpl o;
    public final SharedFlow p;
    public final SharedFlowImpl q;
    public final SharedFlow r;
    public final StateFlow s;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModelImpl$1", f = "ForgetPasswordViewModelImpl.kt", l = {95}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f53509b;

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return ForgetPasswordViewModelImpl.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f53509b;
            if (i2 == 0) {
                ResultKt.b(obj);
                this.f53509b = 1;
                if (ForgetPasswordViewModelImpl.yc(ForgetPasswordViewModelImpl.this, this) == coroutineSingletons) {
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
        public static final /* synthetic */ int[] f53511a;

        static {
            int[] iArr = new int[FormSectionTypeUiModel.values().length];
            try {
                iArr[FormSectionTypeUiModel.NEW_PASSWORD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FormSectionTypeUiModel.CONFIRM_PASSWORD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f53511a = iArr;
        }
    }

    @Inject
    public ForgetPasswordViewModelImpl(SavedStateHandle savedStateHandle, Monitor monitor, ForgetPasswordInitiateUseCase forgetPasswordInitiateUseCase, ForgetPasswordValidateUseCase forgetPasswordValidateUseCase, DynamicFormSupervisor dynamicFormSupervisor, GetRegistrationFormUseCase getRegistrationFormUseCase, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, FormPasswordValidationRules formPasswordValidationRules, AnalyticsTracker analyticsTracker) {
        savedStateHandle.getClass();
        monitor.getClass();
        forgetPasswordInitiateUseCase.getClass();
        forgetPasswordValidateUseCase.getClass();
        dynamicFormSupervisor.getClass();
        getRegistrationFormUseCase.getClass();
        requireUserInAppDispatchUseCase.getClass();
        formPasswordValidationRules.getClass();
        analyticsTracker.getClass();
        this.f53500a = monitor;
        this.f53501b = forgetPasswordInitiateUseCase;
        this.f53502c = forgetPasswordValidateUseCase;
        this.d = dynamicFormSupervisor;
        this.f53503e = getRegistrationFormUseCase;
        this.f53504f = formPasswordValidationRules;
        this.g = analyticsTracker;
        this.f53505h = requireUserInAppDispatchUseCase.f49912a.b();
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(((NativeLoginRoute.ForgetPassword) SavedStateHandleKt.a(savedStateHandle, Reflection.f71922a.b(NativeLoginRoute.ForgetPassword.class), MapsKt.c())).f53594a);
        this.f53506i = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a("");
        this.f53507j = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(new PasswordUiModel());
        this.f53508k = mutableStateFlowA3;
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(bool);
        this.l = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(null);
        this.m = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(bool);
        this.n = mutableStateFlowA6;
        SharedFlowImpl sharedFlowImplB = SharedFlowKt.b(0, 1, null, 5);
        this.o = sharedFlowImplB;
        this.p = FlowKt.a(sharedFlowImplB);
        SharedFlowImpl sharedFlowImplB2 = SharedFlowKt.b(0, 1, null, 5);
        this.q = sharedFlowImplB2;
        this.r = FlowKt.a(sharedFlowImplB2);
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA4, mutableStateFlowA5, mutableStateFlowA3, mutableStateFlowA6, dynamicFormSupervisor.getF57468c()};
        Flow<ForgetPasswordViewState> flow = new Flow<ForgetPasswordViewState>() { // from class: com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModelImpl$special$$inlined$combine$1$3", f = "ForgetPasswordViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super ForgetPasswordViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f53522b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f53523c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f53523c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f53523c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f53522b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        String str = (String) obj2;
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        String str2 = (String) obj3;
                        Object obj4 = objArr[2];
                        obj4.getClass();
                        boolean zBooleanValue = ((Boolean) obj4).booleanValue();
                        String str3 = (String) objArr[3];
                        Object obj5 = objArr[4];
                        obj5.getClass();
                        PasswordUiModel passwordUiModel = (PasswordUiModel) obj5;
                        Object obj6 = objArr[5];
                        obj6.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj6).booleanValue();
                        Object obj7 = objArr[6];
                        obj7.getClass();
                        ForgetPasswordViewState forgetPasswordViewState = new ForgetPasswordViewState(str, str2, zBooleanValue2, zBooleanValue, str3, passwordUiModel, (FormUiModel) obj7, false, 128, null);
                        this.f53523c = null;
                        this.d = null;
                        this.f53522b = 1;
                        if (flowCollector.emit(forgetPasswordViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModelImpl$special$$inlined$combine$1.2
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
        this.s = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new ForgetPasswordViewState(null, null, false, false, null, null, null, false, 255, null));
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null), 3);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public static final Object yc(ForgetPasswordViewModelImpl forgetPasswordViewModelImpl, ContinuationImpl continuationImpl) {
        ForgetPasswordViewModelImpl$loadPasswordForm$1 forgetPasswordViewModelImpl$loadPasswordForm$1;
        if (continuationImpl instanceof ForgetPasswordViewModelImpl$loadPasswordForm$1) {
            forgetPasswordViewModelImpl$loadPasswordForm$1 = (ForgetPasswordViewModelImpl$loadPasswordForm$1) continuationImpl;
            int i2 = forgetPasswordViewModelImpl$loadPasswordForm$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                forgetPasswordViewModelImpl$loadPasswordForm$1.d = i2 - Integer.MIN_VALUE;
            } else {
                forgetPasswordViewModelImpl$loadPasswordForm$1 = new ForgetPasswordViewModelImpl$loadPasswordForm$1(forgetPasswordViewModelImpl, continuationImpl);
            }
        } else {
            forgetPasswordViewModelImpl$loadPasswordForm$1 = new ForgetPasswordViewModelImpl$loadPasswordForm$1(forgetPasswordViewModelImpl, continuationImpl);
        }
        ForgetPasswordViewModelImpl$loadPasswordForm$1 forgetPasswordViewModelImpl$loadPasswordForm$2 = forgetPasswordViewModelImpl$loadPasswordForm$1;
        Object obj = forgetPasswordViewModelImpl$loadPasswordForm$2.f53514b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = forgetPasswordViewModelImpl$loadPasswordForm$2.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            Set setZ = ArraysKt.Z(new FormSectionTypeUiModel[]{FormSectionTypeUiModel.NEW_PASSWORD, FormSectionTypeUiModel.CONFIRM_PASSWORD});
            DynamicFormSupervisor dynamicFormSupervisor = forgetPasswordViewModelImpl.d;
            ForgetPasswordViewModelImpl$loadPasswordForm$2 forgetPasswordViewModelImpl$loadPasswordForm$3 = new ForgetPasswordViewModelImpl$loadPasswordForm$2(forgetPasswordViewModelImpl, null);
            g3 g3Var = new g3(1, setZ);
            ck ckVar = new ck(forgetPasswordViewModelImpl, 29);
            dy dyVar = new dy(12);
            forgetPasswordViewModelImpl$loadPasswordForm$2.d = 1;
            if (dynamicFormSupervisor.b(forgetPasswordViewModelImpl$loadPasswordForm$3, (124 & 2) != 0 ? new iv(2) : g3Var, (124 & 4) != 0 ? new rq(7) : null, (124 & 8) != 0 ? new iv(3) : null, (124 & 16) != 0 ? new rt(11) : null, (124 & 32) != 0 ? new iv(4) : null, (124 & 64) != 0 ? new rq(8) : null, (124 & 128) != 0 ? new iv(5) : ckVar, (124 & 256) != 0 ? new iv(6) : dyVar, forgetPasswordViewModelImpl$loadPasswordForm$2) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            ((Result) obj).getClass();
        }
        return Unit.f71739a;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModel
    public final void A(String str) {
        str.getClass();
        this.m.setValue(null);
        this.f53507j.setValue(str);
    }

    @Override // com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModel
    public final boolean H3() {
        MutableStateFlow mutableStateFlow = this.f53508k;
        return !((PasswordValidationState) ((SnapshotMutableStateImpl) ((PasswordUiModel) mutableStateFlow.getValue()).d).getF10755b()).f53495a && ((PasswordUiModel) mutableStateFlow.getValue()).b();
    }

    @Override // com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModel
    public final Flow L5() {
        return this.r;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModel
    public final void T7() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new ForgetPasswordViewModelImpl$initiatePassword$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModel
    public final void W4() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new ForgetPasswordViewModelImpl$validatePassword$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getS() {
        return this.s;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModel
    public final void f(FormSectionTypeUiModel formSectionTypeUiModel, Object obj) {
        formSectionTypeUiModel.getClass();
        this.d.j(formSectionTypeUiModel, obj, new rq(9));
        if (WhenMappings.f53511a[formSectionTypeUiModel.ordinal()] == 1) {
            MutableStateFlow mutableStateFlow = this.f53508k;
            ((SnapshotMutableStateImpl) ((PasswordUiModel) mutableStateFlow.getValue()).f53492a).setValue(null);
            if (obj.toString().length() == 0) {
                ((PasswordUiModel) mutableStateFlow.getValue()).c();
            }
        }
    }

    @Override // com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModel
    public final Flow getEvent() {
        return this.p;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModel
    public final void q3(String str) {
        str.getClass();
        this.l.setValue(Boolean.FALSE);
        this.f53506i.setValue(StringsKt.J(str, "\n", ""));
    }

    @Override // com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModel
    public final void tc() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new ForgetPasswordViewModelImpl$resendEmailCode$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModel
    public final void y4(ForgetPasswordTrackingUiModel forgetPasswordTrackingUiModel) {
        Hit defaultEventHit;
        forgetPasswordTrackingUiModel.getClass();
        if (forgetPasswordTrackingUiModel.equals(ForgetPasswordTrackingUiModel.ForgetPasswordEmailScreen.f53573a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "identification_forgot_password", "identification_forgot_password", "mylv_native_authentification", null, 17, null);
        } else if (forgetPasswordTrackingUiModel.equals(ForgetPasswordTrackingUiModel.ForgetPasswordResetScreen.f53574a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "identification_reset_code", "identification_forgot_password", "mylv_native_authentification", null, 17, null);
        } else if (forgetPasswordTrackingUiModel.equals(ForgetPasswordTrackingUiModel.ForgetPasswordEditPasswordScreen.f53572a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "identification_create_new_password", "identification_forgot_password", "mylv_native_authentification", null, 17, null);
        } else if (forgetPasswordTrackingUiModel.equals(ForgetPasswordTrackingUiModel.OnSendCodeCtaEvent.f53580a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "new_password_creation", "send_code_cta_click", "mylv_native", "create_new_password", "mylv_native_authentification", null, 65, null);
        } else if (forgetPasswordTrackingUiModel.equals(ForgetPasswordTrackingUiModel.OnConfirmOnResetCodeEvent.f53576a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "new_password_creation", "reset_code_confirm_cta", "mylv_native", "create_new_password", "mylv_native_authentification", null, 65, null);
        } else if (forgetPasswordTrackingUiModel.equals(ForgetPasswordTrackingUiModel.OnSendCodeAgainEvent.f53579a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "new_password_creation", "send_code_again", "mylv_native", "click", "mylv_native_authentification", null, 65, null);
        } else if (forgetPasswordTrackingUiModel.equals(ForgetPasswordTrackingUiModel.OnForgetPasswordConfirmEvent.f53577a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "new_password_creation", "new_password_confirm_cta", "mylv_native", "create_new_password", "mylv_native_authentification", null, 65, null);
        } else if (forgetPasswordTrackingUiModel.equals(ForgetPasswordTrackingUiModel.PasswordResetSuccess.f53582a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(HitType.PasswordResetSuccess.f66515a, "new_password_creation", "password_reset_success", "mylv_native", "create_new_password", "mylv_native_authentification", null, 64, null);
        } else if (forgetPasswordTrackingUiModel.equals(ForgetPasswordTrackingUiModel.PasswordResetFailure.f53581a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "new_password_creation", "password_reset_fail", "mylv_native", "create_new_password", "mylv_native_authentification", null, 65, null);
        } else if (forgetPasswordTrackingUiModel.equals(ForgetPasswordTrackingUiModel.OnCloseEvent.f53575a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "new_password_creation", "close", "mylv_native", "create_new_password", "mylv_native_authentification", null, 65, null);
        } else {
            if (!forgetPasswordTrackingUiModel.equals(ForgetPasswordTrackingUiModel.OnPreviousEvent.f53578a)) {
                v40.g();
                return;
            }
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "new_password_creation", "back_button", "mylv_native", "create_new_password", "mylv_native_authentification", null, 65, null);
        }
        this.g.a(defaultEventHit);
    }
}
