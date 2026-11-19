package com.vuitton.android.domain.usecase.privacy.consent;

import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.android.domain.repository.ConsentRepository;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/privacy/consent/HasConsentsUseCase;", "", "Lcom/vuitton/android/domain/repository/ConsentRepository;", "consentRepository", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "coroutineDispatchers", "<init>", "(Lcom/vuitton/android/domain/repository/ConsentRepository;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class HasConsentsUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConsentRepository f50272a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CoroutineDispatchers f50273b;

    @Inject
    public HasConsentsUseCase(ConsentRepository consentRepository, CoroutineDispatchers coroutineDispatchers) {
        consentRepository.getClass();
        coroutineDispatchers.getClass();
        this.f50272a = consentRepository;
        this.f50273b = coroutineDispatchers;
    }

    public final Object a(Continuation continuation) {
        return BuildersKt.f(this.f50273b.getF43530b(), new HasConsentsUseCase$run$2(this, null), continuation);
    }
}
