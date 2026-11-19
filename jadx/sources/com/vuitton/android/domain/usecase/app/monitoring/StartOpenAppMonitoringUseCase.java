package com.vuitton.android.domain.usecase.app.monitoring;

import com.vuitton.android.domain.repository.OpenAppTimestampRepository;
import com.vuitton.foundation.logger.Logger;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\bB\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/android/domain/usecase/app/monitoring/StartOpenAppMonitoringUseCase;", "", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/repository/OpenAppTimestampRepository;", "openAppTimestampRepository", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/repository/OpenAppTimestampRepository;)V", "Companion", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class StartOpenAppMonitoringUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f49252a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final OpenAppTimestampRepository f49253b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/domain/usecase/app/monitoring/StartOpenAppMonitoringUseCase$Companion;", "", "", "TAG", "Ljava/lang/String;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public StartOpenAppMonitoringUseCase(Logger logger, OpenAppTimestampRepository openAppTimestampRepository) {
        logger.getClass();
        openAppTimestampRepository.getClass();
        this.f49252a = logger;
        this.f49253b = openAppTimestampRepository;
    }
}
