package com.vuitton.android.presentation.screen.authentication.register;

import com.vuitton.android.R;
import com.vuitton.android.domain.usecase.account.GetAccountStatusUseCase;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.account.profile.AccountStatusUiModel;
import com.vuitton.android.presentation.screen.account.profile.AccountStatusValueUiModel;
import com.vuitton.android.presentation.screen.account.profile.AccountStatusValueUiModelKt;
import com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterBottomSheetScreen;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterTrackingUiModel;
import com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisor;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.foundation.logger.LegacyLogger;
import com.vuitton.foundation.model.domain.model.account.AccountStatus;
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
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl$confirmCredentials$1", f = "NativeRegisterViewModelImpl.kt", l = {365, 372}, m = "invokeSuspend", v = 2)
final class NativeRegisterViewModelImpl$confirmCredentials$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f53736b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f53737c;
    public final /* synthetic */ NativeRegisterViewModelImpl d;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f53738a;

        static {
            int[] iArr = new int[AccountStatusValueUiModel.values().length];
            try {
                iArr[AccountStatusValueUiModel.ACTIVATED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f53738a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeRegisterViewModelImpl$confirmCredentials$1(Continuation continuation, NativeRegisterViewModelImpl nativeRegisterViewModelImpl) {
        super(2, continuation);
        this.d = nativeRegisterViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeRegisterViewModelImpl$confirmCredentials$1(continuation, this.d);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeRegisterViewModelImpl$confirmCredentials$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00aa  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        Object objA;
        Object obj2;
        Throwable thA;
        Object value2;
        NativeRegisterViewModelImpl nativeRegisterViewModelImpl = this.d;
        DynamicFormSupervisor dynamicFormSupervisor = nativeRegisterViewModelImpl.m;
        MutableStateFlow mutableStateFlow = nativeRegisterViewModelImpl.J;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53737c;
        if (i2 == 0) {
            ResultKt.b(obj);
            do {
                value = mutableStateFlow.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow.i(value, Boolean.TRUE));
            FormUiModel formUiModel = (FormUiModel) dynamicFormSupervisor.getF57468c().getValue();
            FormSectionTypeUiModel formSectionTypeUiModel = FormSectionTypeUiModel.EMAIL;
            FormUiModel.Companion companion = FormUiModel.f57485b;
            String strE = formUiModel.e(formSectionTypeUiModel, true);
            GetAccountStatusUseCase getAccountStatusUseCase = nativeRegisterViewModelImpl.r;
            this.f53737c = 1;
            objA = getAccountStatusUseCase.a(strE, this);
            if (objA != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        } else {
            if (i2 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            obj2 = this.f53736b;
            ResultKt.b(obj);
        }
        objA = obj2;
        thA = Result.a(objA);
        if (thA != null) {
            NativeRegisterViewModelImpl.Fc(nativeRegisterViewModelImpl, new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null));
            LegacyLogger.f66205a.c("NativeRegisterViewModelImpl", "Unable to get account status", thA);
        }
        do {
            value2 = mutableStateFlow.getValue();
            ((Boolean) value2).getClass();
        } while (!mutableStateFlow.i(value2, Boolean.FALSE));
        return Unit.f71739a;
        Result.Companion companion2 = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            try {
                objA = AccountStatusValueUiModelKt.a((AccountStatus) objA);
            } catch (Throwable th) {
                Result.Companion companion3 = Result.INSTANCE;
                objA = new Result.Failure(th);
            }
        }
        if (!(objA instanceof Result.Failure)) {
            if (WhenMappings.f53738a[((AccountStatusUiModel) objA).f52670a.ordinal()] == 1) {
                nativeRegisterViewModelImpl.g.f53487a = true;
                dynamicFormSupervisor.i();
                BufferedChannel bufferedChannel = nativeRegisterViewModelImpl.A;
                NativeRegisterBottomSheetScreen.BottomSheetAccount bottomSheetAccount = NativeRegisterBottomSheetScreen.BottomSheetAccount.f53804a;
                this.f53736b = objA;
                this.f53737c = 2;
                if (bufferedChannel.u(bottomSheetAccount, this) != coroutineSingletons) {
                    obj2 = objA;
                    objA = obj2;
                }
                return coroutineSingletons;
            }
            nativeRegisterViewModelImpl.Hc();
            nativeRegisterViewModelImpl.L4(NativeRegisterTrackingUiModel.OnConfirmCredentialSuccess.f54008a);
        }
        thA = Result.a(objA);
        if (thA != null) {
            NativeRegisterViewModelImpl.Fc(nativeRegisterViewModelImpl, new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null));
            LegacyLogger.f66205a.c("NativeRegisterViewModelImpl", "Unable to get account status", thA);
        }
        do {
            value2 = mutableStateFlow.getValue();
            ((Boolean) value2).getClass();
        } while (!mutableStateFlow.i(value2, Boolean.FALSE));
        return Unit.f71739a;
    }
}
