package com.vuitton.android.presentation.screen.authentication.register;

import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.R;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterBirthInfoUiModel;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterCredentialsUiModel;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterErrorListExceptionUiModelKt;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterExceptionUiModel;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterTrackingUiModel;
import com.vuitton.foundation.model.domain.model.authentication.oauth.NativeRegisterErrorListException;
import defpackage.md;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl$confirmBirthInfo$1", f = "NativeRegisterViewModelImpl.kt", l = {396}, m = "invokeSuspend", v = 2)
final class NativeRegisterViewModelImpl$confirmBirthInfo$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53734b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NativeRegisterViewModelImpl f53735c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeRegisterViewModelImpl$confirmBirthInfo$1(Continuation continuation, NativeRegisterViewModelImpl nativeRegisterViewModelImpl) {
        super(2, continuation);
        this.f53735c = nativeRegisterViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeRegisterViewModelImpl$confirmBirthInfo$1(continuation, this.f53735c);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeRegisterViewModelImpl$confirmBirthInfo$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objZc;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53734b;
        NativeRegisterViewModelImpl nativeRegisterViewModelImpl = this.f53735c;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f53734b = 1;
            objZc = NativeRegisterViewModelImpl.zc(nativeRegisterViewModelImpl, this);
            if (objZc == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objZc = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objZc instanceof Result.Failure)) {
            nativeRegisterViewModelImpl.Hc();
            nativeRegisterViewModelImpl.L4(NativeRegisterTrackingUiModel.OnConfirmBirthInfoSuccess.f54006a);
        }
        Throwable thA = Result.a(objZc);
        if (thA != null && (thA instanceof NativeRegisterErrorListException)) {
            List<NativeRegisterExceptionUiModel> list = NativeRegisterErrorListExceptionUiModelKt.a((NativeRegisterErrorListException) thA).f53955b;
            for (NativeRegisterExceptionUiModel nativeRegisterExceptionUiModel : list) {
                if (nativeRegisterExceptionUiModel instanceof NativeRegisterExceptionUiModel.InvalidPassword) {
                    ((SnapshotMutableStateImpl) ((NativeRegisterCredentialsUiModel) nativeRegisterViewModelImpl.E.getValue()).f53952b.f53492a).setValue(((NativeRegisterExceptionUiModel.InvalidPassword) nativeRegisterExceptionUiModel).f53967b);
                    nativeRegisterViewModelImpl.m.i();
                } else if ((nativeRegisterExceptionUiModel instanceof NativeRegisterExceptionUiModel.PhoneNumberTooShort) || (nativeRegisterExceptionUiModel instanceof NativeRegisterExceptionUiModel.PhoneNumberTooLong) || (nativeRegisterExceptionUiModel instanceof NativeRegisterExceptionUiModel.PhoneNumberInvalid) || (nativeRegisterExceptionUiModel instanceof NativeRegisterExceptionUiModel.PhoneNumberInvalidCountry)) {
                    ((NativeRegisterBirthInfoUiModel) nativeRegisterViewModelImpl.G.getValue()).f53946i.c(nativeRegisterExceptionUiModel.getF53956a());
                    nativeRegisterViewModelImpl.l.i();
                } else {
                    NativeRegisterViewModelImpl.Fc(nativeRegisterViewModelImpl, new StringResourceUiModel.ResId(R.string.error_generic, null, 2, null));
                }
            }
            BuildersKt.c(ViewModelKt.a(nativeRegisterViewModelImpl), null, null, new NativeRegisterViewModelImpl$redirectToEarlierStep$1(list, nativeRegisterViewModelImpl, null), 3);
        }
        return Unit.f71739a;
    }
}
