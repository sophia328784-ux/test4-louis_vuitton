package com.vuitton.android.domain.usecase.app.monitoring;

import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.repository.OpenAppTimestampRepository;
import com.vuitton.android.domain.usecase.dispatch.GetUserInAppDispatchOrNullUseCase;
import com.vuitton.foundation.logger.Logger;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\fB)\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/vuitton/android/domain/usecase/app/monitoring/EndOpenAppMonitoringUseCase;", "", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;", "getUserInAppDispatchOrNullUseCase", "Lcom/vuitton/android/domain/repository/OpenAppTimestampRepository;", "openAppTimestampRepository", "<init>", "(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;Lcom/vuitton/android/domain/repository/OpenAppTimestampRepository;)V", "Companion", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class EndOpenAppMonitoringUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Monitor f49249a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Logger f49250b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GetUserInAppDispatchOrNullUseCase f49251c;
    public final OpenAppTimestampRepository d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/domain/usecase/app/monitoring/EndOpenAppMonitoringUseCase$Companion;", "", "", "TAG", "Ljava/lang/String;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public EndOpenAppMonitoringUseCase(Monitor monitor, Logger logger, GetUserInAppDispatchOrNullUseCase getUserInAppDispatchOrNullUseCase, OpenAppTimestampRepository openAppTimestampRepository) {
        monitor.getClass();
        logger.getClass();
        getUserInAppDispatchOrNullUseCase.getClass();
        openAppTimestampRepository.getClass();
        this.f49249a = monitor;
        this.f49250b = logger;
        this.f49251c = getUserInAppDispatchOrNullUseCase;
        this.d = openAppTimestampRepository;
    }
}
