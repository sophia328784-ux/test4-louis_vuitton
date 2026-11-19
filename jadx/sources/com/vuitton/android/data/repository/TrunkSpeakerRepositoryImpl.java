package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.repository.TrunkSpeakerRepository;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqCategory;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqVideo;
import com.vuitton.foundation.model.domain.model.connectivity.common.Video;
import com.vuitton.foundation.model.domain.model.connectivity.sync.ConnectedObjectsConfig;
import com.vuitton.foundation.model.domain.model.connectivity.sync.SectionConnectedObject;
import com.vuitton.foundation.model.domain.model.connectivity.sync.SectionHome;
import com.vuitton.foundation.model.domain.model.connectivity.trunkspeaker.TrunkSpeakerSection;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/repository/TrunkSpeakerRepositoryImpl;", "Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TrunkSpeakerRepositoryImpl implements TrunkSpeakerRepository {
    @Inject
    public TrunkSpeakerRepositoryImpl() {
    }

    @Override // com.vuitton.android.domain.repository.TrunkSpeakerRepository
    public final List a(ConnectedObjectsConfig connectedObjectsConfig) {
        SectionConnectedObject sectionConnectedObject;
        TrunkSpeakerSection trunkSpeakerSection;
        List list;
        connectedObjectsConfig.getClass();
        SectionHome sectionHome = connectedObjectsConfig.f67332b;
        return (sectionHome == null || (sectionConnectedObject = sectionHome.f67342a) == null || (trunkSpeakerSection = sectionConnectedObject.d) == null || (list = trunkSpeakerSection.f67383a) == null) ? EmptyList.f71768b : list;
    }

    @Override // com.vuitton.android.domain.repository.TrunkSpeakerRepository
    public final ArrayList b(ConnectedObjectsConfig connectedObjectsConfig) {
        connectedObjectsConfig.getClass();
        List listA = a(connectedObjectsConfig);
        ArrayList arrayList = new ArrayList();
        Iterator it = listA.iterator();
        while (it.hasNext()) {
            CollectionsKt.j(arrayList, ((FaqCategory) it.next()).d);
        }
        return arrayList;
    }

    @Override // com.vuitton.android.domain.repository.TrunkSpeakerRepository
    public final Video c(ConnectedObjectsConfig connectedObjectsConfig) {
        SectionConnectedObject sectionConnectedObject;
        TrunkSpeakerSection trunkSpeakerSection;
        SectionHome sectionHome = connectedObjectsConfig.f67332b;
        FaqVideo faqVideo = (sectionHome == null || (sectionConnectedObject = sectionHome.f67342a) == null || (trunkSpeakerSection = sectionConnectedObject.d) == null) ? null : trunkSpeakerSection.f67385c;
        return faqVideo != null ? new Video(faqVideo.f67316b, faqVideo.f67315a) : new Video(null, null);
    }

    @Override // com.vuitton.android.domain.repository.TrunkSpeakerRepository
    public final Object d(ConnectedObjectsConfig connectedObjectsConfig) {
        SectionConnectedObject sectionConnectedObject;
        TrunkSpeakerSection trunkSpeakerSection;
        List list;
        SectionHome sectionHome = connectedObjectsConfig.f67332b;
        if (sectionHome == null || (sectionConnectedObject = sectionHome.f67342a) == null || (trunkSpeakerSection = sectionConnectedObject.d) == null || (list = trunkSpeakerSection.f67384b) == null) {
            return EmptyList.f71768b;
        }
        List<String> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        for (String str : list2) {
            SkuId.Companion companion = SkuId.INSTANCE;
            str.getClass();
            arrayList.add(new SkuId(str));
        }
        return arrayList;
    }
}
