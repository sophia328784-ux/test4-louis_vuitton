package com.vuitton.android.domain.usecase.analytics;

import com.vuitton.android.domain.repository.AnalyticsWrapperRepository;
import dagger.Lazy;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\b\u0007\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/domain/usecase/analytics/AreAnalyticsInitializedUseCase;", "", "Ldagger/Lazy;", "Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;", "analyticsWrapperRepositoryProvider", "<init>", "(Ldagger/Lazy;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AreAnalyticsInitializedUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Lazy f49173a;

    @Inject
    public AreAnalyticsInitializedUseCase(Lazy<AnalyticsWrapperRepository> lazy) {
        lazy.getClass();
        this.f49173a = lazy;
    }
}
