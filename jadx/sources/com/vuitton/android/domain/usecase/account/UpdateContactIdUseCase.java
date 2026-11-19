package com.vuitton.android.domain.usecase.account;

import com.vuitton.android.domain.repository.UserPreferencesRepository;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/account/UpdateContactIdUseCase;", "", "Lcom/vuitton/android/domain/repository/UserPreferencesRepository;", "userPreferencesRepository", "<init>", "(Lcom/vuitton/android/domain/repository/UserPreferencesRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class UpdateContactIdUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UserPreferencesRepository f49061a;

    @Inject
    public UpdateContactIdUseCase(UserPreferencesRepository userPreferencesRepository) {
        userPreferencesRepository.getClass();
        this.f49061a = userPreferencesRepository;
    }
}
