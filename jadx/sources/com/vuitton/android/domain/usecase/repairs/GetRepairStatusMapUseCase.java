package com.vuitton.android.domain.usecase.repairs;

import com.vuitton.android.domain.repository.RepairRepository;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/repairs/GetRepairStatusMapUseCase;", "", "Lcom/vuitton/android/domain/repository/RepairRepository;", "repairRepository", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "<init>", "(Lcom/vuitton/android/domain/repository/RepairRepository;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetRepairStatusMapUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RepairRepository f50357a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RequireUserInAppDispatchUseCase f50358b;

    @Inject
    public GetRepairStatusMapUseCase(RepairRepository repairRepository, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase) {
        repairRepository.getClass();
        requireUserInAppDispatchUseCase.getClass();
        this.f50357a = repairRepository;
        this.f50358b = requireUserInAppDispatchUseCase;
    }
}
