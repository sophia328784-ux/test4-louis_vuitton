package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.connectivity.common.mapper.FaqCategoryMapperKt;
import com.vuitton.android.data.exception.ConnectivityException;
import com.vuitton.android.domain.repository.WatchV3Repository;
import com.vuitton.foundation.model.domain.model.connectivity.common.Video;
import com.vuitton.foundation.model.domain.model.connectivity.sync.ConnectedObjectsConfig;
import com.vuitton.foundation.model.domain.model.connectivity.sync.SectionConnectedObject;
import com.vuitton.foundation.model.domain.model.connectivity.sync.SectionHome;
import com.vuitton.foundation.model.domain.model.connectivity.watch.SectionWatchVideo;
import com.vuitton.foundation.model.domain.model.connectivity.watchv3.SectionWatchV3;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/repository/WatchV3RepositoryImpl;", "Lcom/vuitton/android/domain/repository/WatchV3Repository;", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class WatchV3RepositoryImpl implements WatchV3Repository {
    @Inject
    public WatchV3RepositoryImpl() {
    }

    @Override // com.vuitton.android.domain.repository.WatchV3Repository
    public final Video a(ConnectedObjectsConfig connectedObjectsConfig) throws Throwable {
        SectionConnectedObject sectionConnectedObject;
        SectionWatchV3 sectionWatchV3;
        SectionHome sectionHome = connectedObjectsConfig.f67332b;
        SectionWatchVideo sectionWatchVideo = (sectionHome == null || (sectionConnectedObject = sectionHome.f67342a) == null || (sectionWatchV3 = sectionConnectedObject.f67340e) == null) ? null : sectionWatchV3.f67422e;
        if (sectionWatchVideo != null) {
            return new Video(sectionWatchVideo.f67398a, sectionWatchVideo.f67399b);
        }
        throw new Throwable("Connected objects -> Video is null for watch");
    }

    @Override // com.vuitton.android.domain.repository.WatchV3Repository
    public final List b(ConnectedObjectsConfig connectedObjectsConfig) throws ConnectivityException.WatchTutorialException {
        SectionConnectedObject sectionConnectedObject;
        SectionWatchV3 sectionWatchV3;
        List list;
        SectionHome sectionHome = connectedObjectsConfig.f67332b;
        if (sectionHome == null || (sectionConnectedObject = sectionHome.f67342a) == null || (sectionWatchV3 = sectionConnectedObject.f67340e) == null || (list = sectionWatchV3.d) == null) {
            throw new ConnectivityException.WatchTutorialException();
        }
        return list;
    }

    @Override // com.vuitton.android.domain.repository.WatchV3Repository
    public final ArrayList c(ConnectedObjectsConfig connectedObjectsConfig) throws Throwable {
        ArrayList arrayList;
        SectionConnectedObject sectionConnectedObject;
        SectionWatchV3 sectionWatchV3;
        List list;
        SectionHome sectionHome = connectedObjectsConfig.f67332b;
        if (sectionHome == null || (sectionConnectedObject = sectionHome.f67342a) == null || (sectionWatchV3 = sectionConnectedObject.f67340e) == null || (list = sectionWatchV3.f67423f) == null) {
            arrayList = null;
        } else {
            List<String> list2 = list;
            arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            for (String str : list2) {
                SkuId.Companion companion = SkuId.INSTANCE;
                str.getClass();
                arrayList.add(new SkuId(str));
            }
        }
        if (arrayList == null || arrayList.isEmpty()) {
            throw new Throwable("Connected objects -> Watch V3 sku list is empty");
        }
        return arrayList;
    }

    @Override // com.vuitton.android.domain.repository.WatchV3Repository
    public final List d(ConnectedObjectsConfig connectedObjectsConfig) {
        SectionConnectedObject sectionConnectedObject;
        SectionWatchV3 sectionWatchV3;
        SectionHome sectionHome = connectedObjectsConfig.f67332b;
        return FaqCategoryMapperKt.b("Connected objects -> Faq missing for watch v3", (sectionHome == null || (sectionConnectedObject = sectionHome.f67342a) == null || (sectionWatchV3 = sectionConnectedObject.f67340e) == null) ? null : sectionWatchV3.f67421c);
    }
}
