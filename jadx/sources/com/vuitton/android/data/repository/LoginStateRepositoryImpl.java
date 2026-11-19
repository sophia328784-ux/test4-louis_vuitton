package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.repository.LoginStateRepository;
import com.vuitton.foundation.model.domain.model.authentication.LoginState;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/repository/LoginStateRepositoryImpl;", "Lcom/vuitton/android/domain/repository/LoginStateRepository;", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LoginStateRepositoryImpl implements LoginStateRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableStateFlow f47790a = StateFlowKt.a(LoginState.LOGGED_OUT);

    @Inject
    public LoginStateRepositoryImpl() {
    }

    @Override // com.vuitton.android.domain.repository.LoginStateRepository
    public final StateFlow a() {
        return this.f47790a;
    }

    @Override // com.vuitton.android.domain.repository.LoginStateRepository
    public final Object b(LoginState loginState) {
        try {
            Result.Companion companion = Result.INSTANCE;
            this.f47790a.setValue(loginState);
            return Unit.f71739a;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            return new Result.Failure(th);
        }
    }
}
