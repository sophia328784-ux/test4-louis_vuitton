package com.vuitton.android.presentation.di.provider;

import com.vuitton.android.domain.provider.api.ApiEndpointProvider;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.foundation.model.domain.error.session.SessionException;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/di/provider/ApiEndpointProviderImpl;", "Lcom/vuitton/android/domain/provider/api/ApiEndpointProvider;", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ApiEndpointProviderImpl implements ApiEndpointProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f51483a;

    @Inject
    public ApiEndpointProviderImpl(RequireCachedAppConfigUseCase requireCachedAppConfigUseCase) {
        requireCachedAppConfigUseCase.getClass();
        this.f51483a = requireCachedAppConfigUseCase;
    }

    @Override // com.vuitton.android.domain.provider.api.ApiEndpointProvider
    public final Object a() throws Throwable {
        Object failure;
        try {
            Result.Companion companion = Result.INSTANCE;
            String str = this.f51483a.a().z;
            if (str == null) {
                throw new SessionException.NoFacadeApiUrl();
            }
            failure = new Result(str);
            Throwable thA = Result.a(failure);
            if (thA != null) {
                if (thA instanceof CancellationException) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            return ((Result) failure).f71708b;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
    }
}
