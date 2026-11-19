package com.vuitton.android.domain.usecase.environments;

import com.vuitton.android.domain.repository.UserPreferencesRepository;
import com.vuitton.android.domain.usecase.app.ResetAppDataUseCase;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/environments/UpdateEnvironmentUseCase;", "", "Lcom/vuitton/android/domain/usecase/app/ResetAppDataUseCase;", "resetAppDataUseCase", "Lcom/vuitton/android/domain/repository/UserPreferencesRepository;", "userPreferencesRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/app/ResetAppDataUseCase;Lcom/vuitton/android/domain/repository/UserPreferencesRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class UpdateEnvironmentUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ResetAppDataUseCase f49994a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UserPreferencesRepository f49995b;

    @Inject
    public UpdateEnvironmentUseCase(ResetAppDataUseCase resetAppDataUseCase, UserPreferencesRepository userPreferencesRepository) {
        resetAppDataUseCase.getClass();
        userPreferencesRepository.getClass();
        this.f49994a = resetAppDataUseCase;
        this.f49995b = userPreferencesRepository;
    }
}
