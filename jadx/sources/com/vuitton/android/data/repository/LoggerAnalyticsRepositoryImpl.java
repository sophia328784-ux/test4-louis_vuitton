package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.repository.AnalyticsRepository;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.analytics.UserProperty;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/repository/LoggerAnalyticsRepositoryImpl;", "Lcom/vuitton/android/domain/repository/AnalyticsRepository;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "<init>", "(Lcom/vuitton/foundation/logger/Logger;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LoggerAnalyticsRepositoryImpl implements AnalyticsRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f47786a;

    @Inject
    public LoggerAnalyticsRepositoryImpl(Logger logger) {
        logger.getClass();
        this.f47786a = logger;
    }

    @Override // com.vuitton.android.domain.repository.AnalyticsRepository
    public final void a(InAppDispatch inAppDispatch) {
        inAppDispatch.getClass();
        this.f47786a.getClass();
    }

    @Override // com.vuitton.android.domain.repository.AnalyticsRepository
    public final void b(InAppDispatch inAppDispatch, Hit hit) {
        inAppDispatch.getClass();
        hit.getClass();
        hit.toString();
        this.f47786a.getClass();
    }

    @Override // com.vuitton.android.domain.repository.AnalyticsRepository
    public final void c() {
        this.f47786a.getClass();
    }

    @Override // com.vuitton.android.domain.repository.AnalyticsRepository
    public final void d(UserProperty.WebViewUserProperty webViewUserProperty) {
        webViewUserProperty.toString();
        this.f47786a.getClass();
    }
}
