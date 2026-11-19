package com.vuitton.android.domain.usecase.privacy;

import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.android.domain.repository.ConsentRepository;
import com.vuitton.android.domain.usecase.privacy.consent.GetConsentTypeUseCase;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\nB!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase;", "", "Lcom/vuitton/android/domain/repository/ConsentRepository;", "consentRepository", "Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;", "getConsentTypeUseCase", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "coroutineDispatchers", "<init>", "(Lcom/vuitton/android/domain/repository/ConsentRepository;Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V", "Companion", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class NeedShowPrivacyConsentUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConsentRepository f50259a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GetConsentTypeUseCase f50260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CoroutineDispatchers f50261c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase$Companion;", "", "", "MAX_MONTH_BEFORE_RECHECK", "I", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public NeedShowPrivacyConsentUseCase(ConsentRepository consentRepository, GetConsentTypeUseCase getConsentTypeUseCase, CoroutineDispatchers coroutineDispatchers) {
        consentRepository.getClass();
        getConsentTypeUseCase.getClass();
        coroutineDispatchers.getClass();
        this.f50259a = consentRepository;
        this.f50260b = getConsentTypeUseCase;
        this.f50261c = coroutineDispatchers;
    }

    public final Object a(ContinuationImpl continuationImpl) {
        return BuildersKt.f(this.f50261c.getF43530b(), new NeedShowPrivacyConsentUseCase$run$2(this, null), continuationImpl);
    }
}
