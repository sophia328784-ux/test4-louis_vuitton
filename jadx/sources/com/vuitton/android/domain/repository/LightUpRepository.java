package com.vuitton.android.domain.repository;

import com.vuitton.foundation.model.domain.model.connectivity.LightUpProduct;
import com.vuitton.foundation.model.domain.model.connectivity.common.Video;
import com.vuitton.foundation.model.domain.model.connectivity.sync.ConnectedObjectsConfig;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/repository/LightUpRepository;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface LightUpRepository {
    Object a(LightUpProduct lightUpProduct, Continuation continuation);

    ArrayList b(ConnectedObjectsConfig connectedObjectsConfig);

    Collection c(ConnectedObjectsConfig connectedObjectsConfig);

    Video d(ConnectedObjectsConfig connectedObjectsConfig);

    Collection e(ConnectedObjectsConfig connectedObjectsConfig);

    Object f(String str, SuspendLambda suspendLambda);

    List g(ConnectedObjectsConfig connectedObjectsConfig);

    ArrayList h(ConnectedObjectsConfig connectedObjectsConfig);

    Serializable i(boolean z, boolean z2, ContinuationImpl continuationImpl);

    List j(ConnectedObjectsConfig connectedObjectsConfig);

    Object k(LightUpProduct lightUpProduct, Continuation continuation);
}
