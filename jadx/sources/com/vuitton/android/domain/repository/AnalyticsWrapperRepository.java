package com.vuitton.android.domain.repository;

import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.analytics.UserProperty;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AnalyticsWrapperRepository {
    boolean a();

    void b(InAppDispatch inAppDispatch, Hit hit);

    void c();

    void d(UserProperty.WebViewUserProperty webViewUserProperty);

    void e(InAppDispatch inAppDispatch, AppConfig appConfig, boolean z, boolean z2);

    Object f(ContinuationImpl continuationImpl);
}
