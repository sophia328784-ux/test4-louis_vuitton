package com.vuitton.android.presentation.screen.account.myinformation;

import com.vuitton.android.R;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.mylv.MyInformationMonitoring;
import com.vuitton.android.domain.usecase.account.profile.UpdatePasswordUseCase;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.foundation.model.domain.model.account.updatepassword.PasswordUpdateErrorReason;
import com.vuitton.foundation.model.domain.model.account.updatepassword.UpdatePasswordException;
import com.vuitton.foundation.model.domain.model.profile.ProfilePwdUpdate;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl$savePasswordChanges$1", f = "MyInformationViewModelImpl.kt", l = {453, 456}, m = "invokeSuspend", v = 2)
final class MyInformationViewModelImpl$savePasswordChanges$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f52564b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f52565c;
    public MyInformationViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f52566e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MyInformationViewModelImpl f52567f;
    public final /* synthetic */ String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ String f52568h;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f52569a;

        static {
            int[] iArr = new int[PasswordUpdateErrorReason.values().length];
            try {
                iArr[PasswordUpdateErrorReason.INVALID_NEW_PASSWORD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PasswordUpdateErrorReason.INVALID_OLD_PASSWORD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PasswordUpdateErrorReason.INVALID_REPEATED_PASSWORD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f52569a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyInformationViewModelImpl$savePasswordChanges$1(MyInformationViewModelImpl myInformationViewModelImpl, String str, String str2, Continuation continuation) {
        super(2, continuation);
        this.f52567f = myInformationViewModelImpl;
        this.g = str;
        this.f52568h = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MyInformationViewModelImpl$savePasswordChanges$1(this.f52567f, this.g, this.f52568h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MyInformationViewModelImpl$savePasswordChanges$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0093  */
    /* JADX WARN: Code duplicated, block: B:27:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:28:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:30:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:32:0x00d7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:33:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:35:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:36:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:37:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:38:0x00f4  */
    /* JADX WARN: Instruction removed from duplicated block: B:27:0x00a3, please report this as an issue */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MonitorAction monitorActionA;
        Object value;
        Object objA;
        MonitorAction monitorAction;
        MyInformationViewModelImpl myInformationViewModelImpl;
        Throwable thA;
        Object value2;
        int i2;
        StringResourceUiModel.ResId resId;
        MyInformationViewModelImpl myInformationViewModelImpl2 = this.f52567f;
        MutableStateFlow mutableStateFlow = myInformationViewModelImpl2.x;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = this.f52566e;
        if (i3 == 0) {
            ResultKt.b(obj);
            monitorActionA = myInformationViewModelImpl2.f52528b.a(myInformationViewModelImpl2.s, MyInformationMonitoring.Action.EditPassword.f48920a);
            do {
                value = mutableStateFlow.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow.i(value, Boolean.TRUE));
            UpdatePasswordUseCase updatePasswordUseCase = myInformationViewModelImpl2.l;
            ProfilePwdUpdate profilePwdUpdate = new ProfilePwdUpdate(this.g, this.f52568h);
            this.f52564b = monitorActionA;
            this.f52566e = 1;
            objA = updatePasswordUseCase.a(profilePwdUpdate, this);
            if (objA != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i3 == 1) {
            MonitorAction monitorAction2 = this.f52564b;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
            monitorActionA = monitorAction2;
        } else {
            if (i3 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            myInformationViewModelImpl = this.d;
            objA = this.f52565c;
            monitorAction = this.f52564b;
            ResultKt.b(obj);
        }
        myInformationViewModelImpl.Dc(new StringResourceUiModel.ResId(R.string.mylv_password_modify, null, 2, null), true);
        monitorActionA = monitorAction;
        thA = Result.a(objA);
        if (thA != null) {
            monitorActionA.d(new MyInformationMonitoring.Error.EditPasswordError(thA));
            if (thA instanceof UpdatePasswordException.InvalidPassword) {
                myInformationViewModelImpl2.f52527a.c("MyInformationViewModelImpl", "Error to validate Login: " + thA.getMessage(), null);
                myInformationViewModelImpl2.Dc(new StringResourceUiModel.ResId(R.string.invalid_password, null, 2, null), false);
            } else if (thA instanceof UpdatePasswordException.UpdatePasswordFailed) {
                i2 = WhenMappings.f52569a[((UpdatePasswordException.UpdatePasswordFailed) thA).f66357b.ordinal()];
                if (i2 != 1) {
                    resId = new StringResourceUiModel.ResId(R.string.mylv_password_tooshort_or_not_contains_number_or_uppercase, null, 2, null);
                } else if (i2 != 2) {
                    resId = new StringResourceUiModel.ResId(R.string.invalid_password, null, 2, null);
                } else if (i2 != 3) {
                    resId = new StringResourceUiModel.ResId(R.string.error_generic, null, 2, null);
                } else {
                    resId = new StringResourceUiModel.ResId(R.string.mylv_password_repeated, null, 2, null);
                }
                myInformationViewModelImpl2.Dc(resId, false);
            }
        }
        monitorActionA.b();
        do {
            value2 = mutableStateFlow.getValue();
            ((Boolean) value2).getClass();
        } while (!mutableStateFlow.i(value2, Boolean.FALSE));
        return Unit.f71739a;
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            SharedFlowImpl sharedFlowImpl = myInformationViewModelImpl2.v;
            MyInformationSideEffect.EditPassword.PasswordChangeSuccess passwordChangeSuccess = MyInformationSideEffect.EditPassword.PasswordChangeSuccess.f52524a;
            this.f52564b = monitorActionA;
            this.f52565c = objA;
            this.d = myInformationViewModelImpl2;
            this.f52566e = 2;
            if (sharedFlowImpl.emit(passwordChangeSuccess, this) != coroutineSingletons) {
                monitorAction = monitorActionA;
                myInformationViewModelImpl = myInformationViewModelImpl2;
                myInformationViewModelImpl.Dc(new StringResourceUiModel.ResId(R.string.mylv_password_modify, null, 2, null), true);
                monitorActionA = monitorAction;
            }
            return coroutineSingletons;
        }
        thA = Result.a(objA);
        if (thA != null) {
            monitorActionA.d(new MyInformationMonitoring.Error.EditPasswordError(thA));
            if (thA instanceof UpdatePasswordException.InvalidPassword) {
                myInformationViewModelImpl2.f52527a.c("MyInformationViewModelImpl", "Error to validate Login: " + thA.getMessage(), null);
                myInformationViewModelImpl2.Dc(new StringResourceUiModel.ResId(R.string.invalid_password, null, 2, null), false);
            } else if (thA instanceof UpdatePasswordException.UpdatePasswordFailed) {
                i2 = WhenMappings.f52569a[((UpdatePasswordException.UpdatePasswordFailed) thA).f66357b.ordinal()];
                if (i2 != 1) {
                    resId = new StringResourceUiModel.ResId(R.string.mylv_password_tooshort_or_not_contains_number_or_uppercase, null, 2, null);
                } else if (i2 != 2) {
                    resId = new StringResourceUiModel.ResId(R.string.invalid_password, null, 2, null);
                } else if (i2 != 3) {
                    resId = new StringResourceUiModel.ResId(R.string.error_generic, null, 2, null);
                } else {
                    resId = new StringResourceUiModel.ResId(R.string.mylv_password_repeated, null, 2, null);
                }
                myInformationViewModelImpl2.Dc(resId, false);
            }
        }
        monitorActionA.b();
        do {
            value2 = mutableStateFlow.getValue();
            ((Boolean) value2).getClass();
        } while (!mutableStateFlow.i(value2, Boolean.FALSE));
        return Unit.f71739a;
    }
}
