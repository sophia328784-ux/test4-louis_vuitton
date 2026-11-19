package com.vuitton.android.domain.usecase.forms;

import com.vuitton.core.infrastructure.data.forms.repository.FormRepository;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.forms.FormDispatchId;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/forms/GetCompleteProfileFormUseCase;", "", "Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;", "bestFormDispatchIdUseCase", "Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepository;", "formRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetCompleteProfileFormUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BestFormDispatchIdUseCase f50055a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FormRepository f50056b;

    @Inject
    public GetCompleteProfileFormUseCase(BestFormDispatchIdUseCase bestFormDispatchIdUseCase, FormRepository formRepository) {
        bestFormDispatchIdUseCase.getClass();
        formRepository.getClass();
        this.f50055a = bestFormDispatchIdUseCase;
        this.f50056b = formRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(InAppDispatch inAppDispatch, ContinuationImpl continuationImpl) {
        GetCompleteProfileFormUseCase$run$1 getCompleteProfileFormUseCase$run$1;
        Object objB;
        if (continuationImpl instanceof GetCompleteProfileFormUseCase$run$1) {
            getCompleteProfileFormUseCase$run$1 = (GetCompleteProfileFormUseCase$run$1) continuationImpl;
            int i2 = getCompleteProfileFormUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getCompleteProfileFormUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getCompleteProfileFormUseCase$run$1 = new GetCompleteProfileFormUseCase$run$1(this, continuationImpl);
            }
        } else {
            getCompleteProfileFormUseCase$run$1 = new GetCompleteProfileFormUseCase$run$1(this, continuationImpl);
        }
        Object obj = getCompleteProfileFormUseCase$run$1.f50057b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getCompleteProfileFormUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            getCompleteProfileFormUseCase$run$1.d = 1;
            objB = this.f50055a.b(inAppDispatch, null, getCompleteProfileFormUseCase$run$1);
            if (objB != coroutineSingletons) {
            }
        }
        if (i3 != 1) {
            if (i3 == 2) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        objB = ((Result) obj).f71708b;
        Throwable thA = Result.a(objB);
        if (thA != null) {
            return new Result.Failure(thA);
        }
        ResultKt.b(objB);
        String str = ((FormDispatchId) objB).f67581a;
        getCompleteProfileFormUseCase$run$1.d = 2;
        Object objH = this.f50056b.h(str, getCompleteProfileFormUseCase$run$1);
        return objH == coroutineSingletons ? coroutineSingletons : objH;
    }
}
