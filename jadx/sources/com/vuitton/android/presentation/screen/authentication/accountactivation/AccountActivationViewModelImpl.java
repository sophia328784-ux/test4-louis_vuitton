package com.vuitton.android.presentation.screen.authentication.accountactivation;

import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.domain.usecase.accountactivation.AccountActivationInitiateUseCase;
import com.vuitton.android.domain.usecase.accountactivation.AccountActivationValidateUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.forms.GetAccountActivationFormUseCase;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationTrackingUiModel;
import com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationViewState;
import com.vuitton.android.presentation.screen.authentication.common.validation.FormPasswordValidationRules;
import com.vuitton.android.presentation.screen.authentication.common.validation.PasswordUiModel;
import com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisor;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.c1;
import defpackage.g3;
import defpackage.iv;
import defpackage.md;
import defpackage.p;
import defpackage.rq;
import defpackage.rt;
import defpackage.v40;
import java.util.List;
import java.util.Set;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
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
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002BQ\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModel;", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/domain/usecase/forms/GetAccountActivationFormUseCase;", "getAccountActivationFormUseCase", "Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;", "accountActivationFormSupervisor", "Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;", "passwordValidationRules", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationInitiateUseCase;", "accountActivationInitiateUseCase", "Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationValidateUseCase;", "accountActivationValidateUseCase", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "analyticsTracker", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/forms/GetAccountActivationFormUseCase;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationInitiateUseCase;Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationValidateUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AccountActivationViewModelImpl extends ViewModel implements AccountActivationViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetAccountActivationFormUseCase f53333a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DynamicFormSupervisor f53334b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FormPasswordValidationRules f53335c;
    public final NotificationBuilder d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AccountActivationInitiateUseCase f53336e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AccountActivationValidateUseCase f53337f;
    public final AnalyticsTracker g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final InAppDispatch f53338h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f53339i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableStateFlow f53340j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableStateFlow f53341k;
    public final MutableStateFlow l;
    public final MutableStateFlow m;
    public final SharedFlowImpl n;
    public final SharedFlow o;
    public final BufferedChannel p;
    public final Flow q;
    public final StateFlow r;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModelImpl$1", f = "AccountActivationViewModelImpl.kt", l = {93}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f53342b;

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return AccountActivationViewModelImpl.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f53342b;
            if (i2 == 0) {
                ResultKt.b(obj);
                this.f53342b = 1;
                if (AccountActivationViewModelImpl.yc(AccountActivationViewModelImpl.this, this) == coroutineSingletons) {
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
        public static final /* synthetic */ int[] f53344a;

        static {
            int[] iArr = new int[FormSectionTypeUiModel.values().length];
            try {
                iArr[FormSectionTypeUiModel.NEW_PASSWORD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FormSectionTypeUiModel.PRIVACY_POLICY_CONSENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f53344a = iArr;
        }
    }

    @Inject
    public AccountActivationViewModelImpl(SavedStateHandle savedStateHandle, GetAccountActivationFormUseCase getAccountActivationFormUseCase, DynamicFormSupervisor dynamicFormSupervisor, FormPasswordValidationRules formPasswordValidationRules, NotificationBuilder notificationBuilder, AccountActivationInitiateUseCase accountActivationInitiateUseCase, AccountActivationValidateUseCase accountActivationValidateUseCase, AnalyticsTracker analyticsTracker, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase) {
        savedStateHandle.getClass();
        getAccountActivationFormUseCase.getClass();
        dynamicFormSupervisor.getClass();
        formPasswordValidationRules.getClass();
        notificationBuilder.getClass();
        accountActivationInitiateUseCase.getClass();
        accountActivationValidateUseCase.getClass();
        analyticsTracker.getClass();
        requireUserInAppDispatchUseCase.getClass();
        this.f53333a = getAccountActivationFormUseCase;
        this.f53334b = dynamicFormSupervisor;
        this.f53335c = formPasswordValidationRules;
        this.d = notificationBuilder;
        this.f53336e = accountActivationInitiateUseCase;
        this.f53337f = accountActivationValidateUseCase;
        this.g = analyticsTracker;
        this.f53338h = requireUserInAppDispatchUseCase.f49912a.b();
        String str = (String) savedStateHandle.a("EXTRA_TRACKING_ORIGIN");
        this.f53339i = str == null ? "" : str;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(new PasswordUiModel());
        this.f53340j = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a("");
        this.f53341k = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(null);
        this.l = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(Boolean.FALSE);
        this.m = mutableStateFlowA4;
        SharedFlowImpl sharedFlowImplB = SharedFlowKt.b(0, 1, null, 5);
        this.n = sharedFlowImplB;
        this.o = FlowKt.a(sharedFlowImplB);
        BufferedChannel bufferedChannelA = ChannelKt.a(0, 7, null);
        this.p = bufferedChannelA;
        this.q = FlowKt.y(bufferedChannelA);
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4, dynamicFormSupervisor.getF57468c()};
        Flow<AccountActivationViewState> flow = new Flow<AccountActivationViewState>() { // from class: com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModelImpl$special$$inlined$combine$1$3", f = "AccountActivationViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super AccountActivationViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f53357b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f53358c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f53358c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f53358c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f53357b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        PasswordUiModel passwordUiModel = (PasswordUiModel) obj2;
                        Object obj3 = objArr[4];
                        obj3.getClass();
                        FormUiModel formUiModel = (FormUiModel) obj3;
                        Object obj4 = objArr[1];
                        obj4.getClass();
                        String str = (String) obj4;
                        String str2 = (String) objArr[2];
                        Object obj5 = objArr[3];
                        obj5.getClass();
                        AccountActivationViewState accountActivationViewState = new AccountActivationViewState(((Boolean) obj5).booleanValue(), passwordUiModel, str, str2, formUiModel, passwordUiModel.b() && formUiModel.i());
                        this.f53358c = null;
                        this.d = null;
                        this.f53357b = 1;
                        if (flowCollector.emit(accountActivationViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModelImpl$special$$inlined$combine$1.2
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
        this.r = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new AccountActivationViewState(false, null, null, null, null, false, 63, null));
        s8(AccountActivationTrackingUiModel.ActivateYourAccountClick.f53383a);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null), 3);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public static final Object yc(AccountActivationViewModelImpl accountActivationViewModelImpl, ContinuationImpl continuationImpl) {
        AccountActivationViewModelImpl$loadPasswordForm$1 accountActivationViewModelImpl$loadPasswordForm$1;
        if (continuationImpl instanceof AccountActivationViewModelImpl$loadPasswordForm$1) {
            accountActivationViewModelImpl$loadPasswordForm$1 = (AccountActivationViewModelImpl$loadPasswordForm$1) continuationImpl;
            int i2 = accountActivationViewModelImpl$loadPasswordForm$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                accountActivationViewModelImpl$loadPasswordForm$1.d = i2 - Integer.MIN_VALUE;
            } else {
                accountActivationViewModelImpl$loadPasswordForm$1 = new AccountActivationViewModelImpl$loadPasswordForm$1(accountActivationViewModelImpl, continuationImpl);
            }
        } else {
            accountActivationViewModelImpl$loadPasswordForm$1 = new AccountActivationViewModelImpl$loadPasswordForm$1(accountActivationViewModelImpl, continuationImpl);
        }
        AccountActivationViewModelImpl$loadPasswordForm$1 accountActivationViewModelImpl$loadPasswordForm$2 = accountActivationViewModelImpl$loadPasswordForm$1;
        Object obj = accountActivationViewModelImpl$loadPasswordForm$2.f53349b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = accountActivationViewModelImpl$loadPasswordForm$2.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            Set setZ = ArraysKt.Z(new FormSectionTypeUiModel[]{FormSectionTypeUiModel.NEW_PASSWORD, FormSectionTypeUiModel.PRIVACY_POLICY_CONSENT});
            DynamicFormSupervisor dynamicFormSupervisor = accountActivationViewModelImpl.f53334b;
            AccountActivationViewModelImpl$loadPasswordForm$2 accountActivationViewModelImpl$loadPasswordForm$3 = new AccountActivationViewModelImpl$loadPasswordForm$2(accountActivationViewModelImpl, null);
            g3 g3Var = new g3(0, setZ);
            c1 c1Var = new c1(accountActivationViewModelImpl, 4);
            p pVar = new p(11);
            accountActivationViewModelImpl$loadPasswordForm$2.d = 1;
            if (dynamicFormSupervisor.b(accountActivationViewModelImpl$loadPasswordForm$3, (124 & 2) != 0 ? new iv(2) : g3Var, (124 & 4) != 0 ? new rq(7) : null, (124 & 8) != 0 ? new iv(3) : null, (124 & 16) != 0 ? new rt(11) : null, (124 & 32) != 0 ? new iv(4) : null, (124 & 64) != 0 ? new rq(8) : null, (124 & 128) != 0 ? new iv(5) : c1Var, (124 & 256) != 0 ? new iv(6) : pVar, accountActivationViewModelImpl$loadPasswordForm$2) == coroutineSingletons) {
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

    @Override // com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModel
    public final void A(String str) {
        str.getClass();
        this.l.setValue(null);
        this.f53341k.setValue(str);
    }

    @Override // com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModel
    public final void C3() {
        s8(AccountActivationTrackingUiModel.ResendCodeClick.f53389a);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AccountActivationViewModelImpl$resendCode$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModel
    public final void K2() {
        s8(AccountActivationTrackingUiModel.ContinuePasswordClick.f53387a);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AccountActivationViewModelImpl$confirmPassword$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModel
    public final void V7() {
        s8(AccountActivationTrackingUiModel.ConfirmActivationClick.f53386a);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AccountActivationViewModelImpl$confirmActivation$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getR() {
        return this.r;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModel
    /* JADX INFO: renamed from: b, reason: from getter */
    public final Flow getQ() {
        return this.q;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModel
    public final void f(FormSectionTypeUiModel formSectionTypeUiModel, Object obj) {
        formSectionTypeUiModel.getClass();
        this.f53334b.j(formSectionTypeUiModel, obj, new rq(9));
        if (WhenMappings.f53344a[formSectionTypeUiModel.ordinal()] == 1) {
            MutableStateFlow mutableStateFlow = this.f53340j;
            ((SnapshotMutableStateImpl) ((PasswordUiModel) mutableStateFlow.getValue()).f53492a).setValue(null);
            if (obj.toString().length() == 0) {
                ((PasswordUiModel) mutableStateFlow.getValue()).c();
            }
        }
    }

    @Override // com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModel
    public final Flow getEvent() {
        return this.o;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModel
    public final void s8(AccountActivationTrackingUiModel accountActivationTrackingUiModel) {
        Hit defaultEventHit;
        String str = this.f53339i;
        str.getClass();
        List listO = CollectionsKt.O(new AdditionalProperty.Origin(str));
        if (accountActivationTrackingUiModel.equals(AccountActivationTrackingUiModel.PasswordStepScreen.f53388a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "account_creation_password_step", "account_creation_steps", "mylv_native_authentification", listO, 1, null);
        } else if (accountActivationTrackingUiModel.equals(AccountActivationTrackingUiModel.ActivationCodeStepScreen.f53384a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "account_creation_activation_code_step", "account_creation_steps", "mylv_native_authentification", listO, 1, null);
        } else if (accountActivationTrackingUiModel.equals(AccountActivationTrackingUiModel.ActivateYourAccountClick.f53383a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, str, "activate_your_account_cta", "mylv_native", "click", "mylv_native_authentification", listO, 1, null);
        } else if (accountActivationTrackingUiModel.equals(AccountActivationTrackingUiModel.ContinuePasswordClick.f53387a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "account_creation_password_step", "continue_password", "account", "click", "mylv_native_authentification", listO, 1, null);
        } else if (accountActivationTrackingUiModel.equals(AccountActivationTrackingUiModel.ResendCodeClick.f53389a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "account_creation_activation_code_step", "resend_code", "account", "click", "mylv_native_authentification", listO, 1, null);
        } else if (accountActivationTrackingUiModel.equals(AccountActivationTrackingUiModel.ConfirmActivationClick.f53386a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "account_creation_activation_code_step", "confirm_activation", "account", "account_creation", "mylv_native_authentification", listO, 1, null);
        } else {
            if (!(accountActivationTrackingUiModel instanceof AccountActivationTrackingUiModel.CloseClick)) {
                v40.g();
                return;
            }
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, ((AccountActivationTrackingUiModel.CloseClick) accountActivationTrackingUiModel).f53385a.getValue(), "close", "account", "click", "mylv_native_authentification", listO, 1, null);
        }
        this.g.a(defaultEventHit);
    }
}
