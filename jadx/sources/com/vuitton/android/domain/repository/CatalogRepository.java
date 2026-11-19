package com.vuitton.android.domain.repository;

import com.vuitton.foundation.model.domain.model.common.ResultStrategyLazy;
import com.vuitton.foundation.model.domain.model.product.universal.CustomizationId;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/repository/CatalogRepository;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface CatalogRepository {
    Object a(String str, List list, boolean z, ContinuationImpl continuationImpl);

    Object b(String str, boolean z, CustomizationId customizationId, String str2, String str3, boolean z2, ContinuationImpl continuationImpl);

    Object c(String str, String str2, ContinuationImpl continuationImpl);

    Unit d();

    Object e(String str, String str2, Integer num, ContinuationImpl continuationImpl);

    Object f(String str, int i2, String str2, boolean z, ContinuationImpl continuationImpl);

    Object g(String str, String str2, int i2, String str3, boolean z, ContinuationImpl continuationImpl);

    Object h(String str, String str2, int i2, String str3, boolean z, ContinuationImpl continuationImpl);

    Object i(List list, boolean z, ContinuationImpl continuationImpl);

    Object j(String str, ContinuationImpl continuationImpl);

    Object k(List list, ContinuationImpl continuationImpl);

    Object l(ContinuationImpl continuationImpl);

    void m();

    ResultStrategyLazy n();
}
