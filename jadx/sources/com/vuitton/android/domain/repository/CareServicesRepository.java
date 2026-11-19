package com.vuitton.android.domain.repository;

import com.vuitton.foundation.model.domain.model.careservices.CareServiceUpdate;
import com.vuitton.foundation.model.domain.model.careservices.CreateCareServiceParam;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/repository/CareServicesRepository;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface CareServicesRepository {
    Object a(AppConfig appConfig, String str, ContinuationImpl continuationImpl);

    Object b(AppConfig appConfig, ContinuationImpl continuationImpl);

    Object c(AppConfig appConfig, String str, CareServiceUpdate careServiceUpdate, ContinuationImpl continuationImpl);

    Object d(AppConfig appConfig, CreateCareServiceParam createCareServiceParam, ContinuationImpl continuationImpl);
}
