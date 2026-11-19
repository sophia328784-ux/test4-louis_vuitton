package com.vuitton.android.domain.usecase.careservices;

import com.vuitton.android.domain.repository.RepairRepository;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/careservices/GetRepairCancellationReasonUseCase;", "", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/repository/RepairRepository;", "repairRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/repository/RepairRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetRepairCancellationReasonUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f49545a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RepairRepository f49546b;

    @Inject
    public GetRepairCancellationReasonUseCase(RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, RepairRepository repairRepository) {
        requireCachedAppConfigUseCase.getClass();
        repairRepository.getClass();
        this.f49545a = requireCachedAppConfigUseCase;
        this.f49546b = repairRepository;
    }
}
