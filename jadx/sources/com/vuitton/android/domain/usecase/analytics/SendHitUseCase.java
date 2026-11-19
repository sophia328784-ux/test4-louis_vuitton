package com.vuitton.android.domain.usecase.analytics;

import com.vuitton.android.domain.repository.AnalyticsWrapperRepository;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import dagger.Lazy;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001f\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/domain/usecase/analytics/SendHitUseCase;", "", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Ldagger/Lazy;", "Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;", "analyticsWrapperRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Ldagger/Lazy;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SendHitUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireUserInAppDispatchUseCase f49192a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Lazy f49193b;

    @Inject
    public SendHitUseCase(RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, Lazy<AnalyticsWrapperRepository> lazy) {
        requireUserInAppDispatchUseCase.getClass();
        lazy.getClass();
        this.f49192a = requireUserInAppDispatchUseCase;
        this.f49193b = lazy;
    }
}
