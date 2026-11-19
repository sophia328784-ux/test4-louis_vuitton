package com.vuitton.android.domain.usecase.dispatch;

import com.vuitton.android.domain.repository.InAppDispatchRepository;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "", "Lcom/vuitton/android/domain/repository/InAppDispatchRepository;", "inAppDispatchRepository", "<init>", "(Lcom/vuitton/android/domain/repository/InAppDispatchRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class RequireUserInAppDispatchUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InAppDispatchRepository f49912a;

    @Inject
    public RequireUserInAppDispatchUseCase(InAppDispatchRepository inAppDispatchRepository) {
        inAppDispatchRepository.getClass();
        this.f49912a = inAppDispatchRepository;
    }
}
