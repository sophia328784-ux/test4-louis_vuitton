package com.vuitton.android.domain.repository;

import com.vuitton.android.data.datasource.dynamicyield.DynamicYieldDataSource$special$$inlined$map$1;
import com.vuitton.foundation.model.domain.model.config.Region;
import com.vuitton.foundation.model.domain.model.dynamicyield.DYBusinessEvent;
import com.vuitton.foundation.model.domain.model.dynamicyield.DYPageType;
import com.vuitton.foundation.model.domain.model.dynamicyield.DYUserEventType;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/repository/DynamicYieldRepository;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface DynamicYieldRepository {
    Object a(String str, ContinuationImpl continuationImpl);

    Object b(DYUserEventType dYUserEventType, String str, ContinuationImpl continuationImpl);

    Object c(String str, boolean z, Region region, ContinuationImpl continuationImpl);

    DynamicYieldDataSource$special$$inlined$map$1 d();

    Object e(DYBusinessEvent dYBusinessEvent, ContinuationImpl continuationImpl);

    Object f(String str, DYPageType dYPageType, ContinuationImpl continuationImpl);

    Object g(boolean z, ContinuationImpl continuationImpl);

    Object h(String str, ContinuationImpl continuationImpl);

    Object i(String str);

    Object j(ContinuationImpl continuationImpl);

    Object k(ContinuationImpl continuationImpl);
}
