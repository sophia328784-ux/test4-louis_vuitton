package com.vuitton.android.domain.repository;

import com.vuitton.foundation.model.domain.model.config.AbTest;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/repository/AppConfigRepository;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AppConfigRepository {
    Object a(String str, AppConfig appConfig, String str2, ContinuationImpl continuationImpl);

    Object b(ContinuationImpl continuationImpl);

    AppConfig c();

    Object d(String str, AbTest abTest, ContinuationImpl continuationImpl);

    Object e(long j2, String str, ContinuationImpl continuationImpl);
}
