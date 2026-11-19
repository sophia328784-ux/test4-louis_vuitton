package com.vuitton.android.domain.usecase.connectivity.lightup;

import com.vuitton.android.domain.repository.LightUpRepository;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpObjectsUseCase;", "", "Lcom/vuitton/android/domain/repository/LightUpRepository;", "lightUpRepository", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "<init>", "(Lcom/vuitton/android/domain/repository/LightUpRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetLightUpObjectsUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LightUpRepository f49798a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f49799b;

    @Inject
    public GetLightUpObjectsUseCase(LightUpRepository lightUpRepository, IsFeatureAvailableUseCase isFeatureAvailableUseCase) {
        lightUpRepository.getClass();
        isFeatureAvailableUseCase.getClass();
        this.f49798a = lightUpRepository;
        this.f49799b = isFeatureAvailableUseCase;
    }
}
