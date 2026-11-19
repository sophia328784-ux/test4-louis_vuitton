package com.vuitton.android.domain.usecase.config;

import com.vuitton.android.domain.repository.AppVersionRepository;
import com.vuitton.foundation.logger.Logger;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\nB!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase;", "", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/repository/AppVersionRepository;", "appVersionRepository", "Lcom/vuitton/android/domain/usecase/config/OnAppUpdatedUseCase;", "onAppUpdatedUseCase", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/repository/AppVersionRepository;Lcom/vuitton/android/domain/usecase/config/OnAppUpdatedUseCase;)V", "Companion", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class HandleAppUpdateUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f49685a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppVersionRepository f49686b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final OnAppUpdatedUseCase f49687c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase$Companion;", "", "", "TAG", "Ljava/lang/String;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public HandleAppUpdateUseCase(Logger logger, AppVersionRepository appVersionRepository, OnAppUpdatedUseCase onAppUpdatedUseCase) {
        logger.getClass();
        appVersionRepository.getClass();
        onAppUpdatedUseCase.getClass();
        this.f49685a = logger;
        this.f49686b = appVersionRepository;
        this.f49687c = onAppUpdatedUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x007c  */
    /* JADX WARN: Code duplicated, block: B:38:0x009d  */
    /* JADX WARN: Code duplicated, block: B:41:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ae, code lost:
    
        if (r11 == r1) goto L44;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            Method dump skipped, instruction units count: 201
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.config.HandleAppUpdateUseCase.a(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
