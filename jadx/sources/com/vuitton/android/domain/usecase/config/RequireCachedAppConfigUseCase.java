package com.vuitton.android.domain.usecase.config;

import com.vuitton.android.domain.repository.AppConfigRepository;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "", "Lcom/vuitton/android/domain/repository/AppConfigRepository;", "appConfigRepository", "<init>", "(Lcom/vuitton/android/domain/repository/AppConfigRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class RequireCachedAppConfigUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AppConfigRepository f49710a;

    @Inject
    public RequireCachedAppConfigUseCase(AppConfigRepository appConfigRepository) {
        appConfigRepository.getClass();
        this.f49710a = appConfigRepository;
    }

    public final AppConfig a() {
        AppConfig appConfigC = this.f49710a.c();
        if (appConfigC != null) {
            return appConfigC;
        }
        md.k("Error: No cached for app config... Please review your development work! Ensure that the app configuration is properly loaded before use. Consider moving your logic after obtaining the configuration.");
        return null;
    }
}
