package com.vuitton.android.domain.repository;

import com.vuitton.foundation.model.domain.model.connectivity.common.Video;
import com.vuitton.foundation.model.domain.model.connectivity.sync.ConnectedObjectsConfig;
import com.vuitton.foundation.model.domain.model.connectivity.watch.PairWatchV2;
import com.vuitton.foundation.model.domain.model.connectivity.watch.UnpairWatchV2;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/repository/WatchRepository;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface WatchRepository {
    Video a(ConnectedObjectsConfig connectedObjectsConfig);

    Object b(boolean z, ContinuationImpl continuationImpl);

    Object c(ConnectedObjectsConfig connectedObjectsConfig, Continuation continuation);

    Object d(ConnectedObjectsConfig connectedObjectsConfig, List list, ContinuationImpl continuationImpl);

    Object e(String str, String str2, ContinuationImpl continuationImpl);

    Object f(InAppDispatch inAppDispatch, String str, int i2, ContinuationImpl continuationImpl);

    Object g(InAppDispatch inAppDispatch, PairWatchV2 pairWatchV2, ContinuationImpl continuationImpl);

    Object h(InAppDispatch inAppDispatch, UnpairWatchV2 unpairWatchV2, ContinuationImpl continuationImpl);

    ArrayList i(ConnectedObjectsConfig connectedObjectsConfig);
}
