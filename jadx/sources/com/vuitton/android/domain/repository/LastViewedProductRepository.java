package com.vuitton.android.domain.repository;

import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/repository/LastViewedProductRepository;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface LastViewedProductRepository {
    Object a(List list, ContinuationImpl continuationImpl);

    StateFlow b();
}
