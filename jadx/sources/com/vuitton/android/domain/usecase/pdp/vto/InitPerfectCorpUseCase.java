package com.vuitton.android.domain.usecase.pdp.vto;

import com.vuitton.android.domain.repository.PerfectCorpRepository;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import dagger.Lazy;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001f\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/domain/usecase/pdp/vto/InitPerfectCorpUseCase;", "", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Ldagger/Lazy;", "Lcom/vuitton/android/domain/repository/PerfectCorpRepository;", "perfectCorpRepositoryProvider", "<init>", "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Ldagger/Lazy;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class InitPerfectCorpUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireUserInAppDispatchUseCase f50208a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Lazy f50209b;

    @Inject
    public InitPerfectCorpUseCase(RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, Lazy<PerfectCorpRepository> lazy) {
        requireUserInAppDispatchUseCase.getClass();
        lazy.getClass();
        this.f50208a = requireUserInAppDispatchUseCase;
        this.f50209b = lazy;
    }
}
