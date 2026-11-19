package com.vuitton.android.presentation.di.provider;

import com.vuitton.android.domain.provider.feature.FeatureCheckerProvider;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import java.util.Arrays;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/di/provider/FeatureCheckerProviderImpl;", "Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FeatureCheckerProviderImpl implements FeatureCheckerProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f51484a;

    @Inject
    public FeatureCheckerProviderImpl(IsFeatureAvailableUseCase isFeatureAvailableUseCase) {
        isFeatureAvailableUseCase.getClass();
        this.f51484a = isFeatureAvailableUseCase;
    }

    @Override // com.vuitton.android.domain.provider.feature.FeatureCheckerProvider
    public final boolean a(Feature[] featureArr) {
        return this.f51484a.b((Feature[]) Arrays.copyOf(featureArr, featureArr.length));
    }
}
