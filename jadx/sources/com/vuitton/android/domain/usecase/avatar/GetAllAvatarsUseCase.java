package com.vuitton.android.domain.usecase.avatar;

import com.vuitton.android.domain.repository.AvatarRepository;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/avatar/GetAllAvatarsUseCase;", "", "Lcom/vuitton/android/domain/repository/AvatarRepository;", "avatarRepository", "<init>", "(Lcom/vuitton/android/domain/repository/AvatarRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetAllAvatarsUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AvatarRepository f49444a;

    @Inject
    public GetAllAvatarsUseCase(AvatarRepository avatarRepository) {
        avatarRepository.getClass();
        this.f49444a = avatarRepository;
    }
}
