package com.vuitton.android.presentation.repository;

import com.vuitton.android.domain.repository.AutomatedTestRepository;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/repository/AutomatedTestRepositoryProdImpl;", "Lcom/vuitton/android/domain/repository/AutomatedTestRepository;", "<init>", "()V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AutomatedTestRepositoryProdImpl implements AutomatedTestRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UnsupportedOperationException f52043a = new UnsupportedOperationException("Not supported in production");

    @Inject
    public AutomatedTestRepositoryProdImpl() {
    }

    @Override // com.vuitton.android.domain.repository.AutomatedTestRepository
    public final Result.Failure a() {
        Result.Companion companion = Result.INSTANCE;
        return ResultKt.a(this.f52043a);
    }

    @Override // com.vuitton.android.domain.repository.AutomatedTestRepository
    public final Result.Failure b() {
        Result.Companion companion = Result.INSTANCE;
        return ResultKt.a(this.f52043a);
    }

    @Override // com.vuitton.android.domain.repository.AutomatedTestRepository
    public final Result.Failure c() {
        Result.Companion companion = Result.INSTANCE;
        return ResultKt.a(this.f52043a);
    }

    @Override // com.vuitton.android.domain.repository.AutomatedTestRepository
    public final Result.Failure d() {
        Result.Companion companion = Result.INSTANCE;
        return ResultKt.a(this.f52043a);
    }

    @Override // com.vuitton.android.domain.repository.AutomatedTestRepository
    public final Result.Failure e() {
        Result.Companion companion = Result.INSTANCE;
        return ResultKt.a(this.f52043a);
    }
}
