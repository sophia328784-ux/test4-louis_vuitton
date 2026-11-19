package com.vuitton.android.domain.repository;

import java.util.UUID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/repository/SpotlightRepository;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface SpotlightRepository {
    Flow a(UUID uuid);

    UUID b(String str);

    Object c(String str, ContinuationImpl continuationImpl);

    Unit d(UUID uuid);
}
