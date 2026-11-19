package com.vuitton.android.domain.repository;

import com.vuitton.foundation.model.domain.model.connectivity.common.Video;
import com.vuitton.foundation.model.domain.model.connectivity.sync.ConnectedObjectsConfig;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/repository/EarphoneRepository;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface EarphoneRepository {
    Video a(ConnectedObjectsConfig connectedObjectsConfig);

    List b(ConnectedObjectsConfig connectedObjectsConfig);

    ArrayList c(ConnectedObjectsConfig connectedObjectsConfig);

    List d(ConnectedObjectsConfig connectedObjectsConfig);
}
