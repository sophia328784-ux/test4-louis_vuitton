package com.vuitton.android.domain.usecase.dispatch;

import com.vuitton.android.domain.repository.InAppDispatchRepository;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;", "", "Lcom/vuitton/android/domain/repository/InAppDispatchRepository;", "inAppDispatchRepository", "<init>", "(Lcom/vuitton/android/domain/repository/InAppDispatchRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetUserInAppDispatchOrNullUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InAppDispatchRepository f49911a;

    @Inject
    public GetUserInAppDispatchOrNullUseCase(InAppDispatchRepository inAppDispatchRepository) {
        inAppDispatchRepository.getClass();
        this.f49911a = inAppDispatchRepository;
    }

    public final InAppDispatch a() throws Throwable {
        Object failure;
        try {
            Result.Companion companion = Result.INSTANCE;
            failure = new Result(this.f49911a.b());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        Object obj = ((Result) failure).f71708b;
        if (obj instanceof Result.Failure) {
            obj = null;
        }
        return (InAppDispatch) obj;
    }
}
