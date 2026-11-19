package com.vuitton.android.domain.usecase.analytics.tools.appsflyer;

import com.vuitton.android.domain.repository.AppsFlyerRepository;
import com.vuitton.android.domain.repository.UserPreferencesRepository;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/SetAppsFlyerCustomerIdUseCase;", "", "Lcom/vuitton/android/domain/repository/AppsFlyerRepository;", "appsFlyerRepository", "Lcom/vuitton/android/domain/repository/UserPreferencesRepository;", "userPreferencesRepository", "<init>", "(Lcom/vuitton/android/domain/repository/AppsFlyerRepository;Lcom/vuitton/android/domain/repository/UserPreferencesRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SetAppsFlyerCustomerIdUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AppsFlyerRepository f49219a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UserPreferencesRepository f49220b;

    @Inject
    public SetAppsFlyerCustomerIdUseCase(AppsFlyerRepository appsFlyerRepository, UserPreferencesRepository userPreferencesRepository) {
        appsFlyerRepository.getClass();
        userPreferencesRepository.getClass();
        this.f49219a = appsFlyerRepository;
        this.f49220b = userPreferencesRepository;
    }
}
