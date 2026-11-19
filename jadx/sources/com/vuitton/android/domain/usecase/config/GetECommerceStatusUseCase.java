package com.vuitton.android.domain.usecase.config;

import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.model.domain.model.product.availability.ECommerceStatus;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;", "", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetECommerceStatusUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f49679a;

    @Inject
    public GetECommerceStatusUseCase(RequireCachedAppConfigUseCase requireCachedAppConfigUseCase) {
        requireCachedAppConfigUseCase.getClass();
        this.f49679a = requireCachedAppConfigUseCase;
    }

    public final ECommerceStatus a() {
        AppConfig appConfigA = this.f49679a.a();
        boolean z = appConfigA.Y;
        boolean z2 = appConfigA.Z;
        if (z || z2) {
            return (z || !z2) ? ECommerceStatus.Enabled : ECommerceStatus.WebOnly;
        }
        return ECommerceStatus.Disabled;
    }
}
