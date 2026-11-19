package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.connectivity.common.mapper.FaqCategoryMapperKt;
import com.vuitton.android.data.exception.ConnectivityException;
import com.vuitton.android.domain.repository.EarphoneRepository;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqVideo;
import com.vuitton.foundation.model.domain.model.connectivity.common.Video;
import com.vuitton.foundation.model.domain.model.connectivity.earphone.EarphoneSection;
import com.vuitton.foundation.model.domain.model.connectivity.sync.ConnectedObjectsConfig;
import com.vuitton.foundation.model.domain.model.connectivity.sync.SectionConnectedObject;
import com.vuitton.foundation.model.domain.model.connectivity.sync.SectionHome;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/repository/EarphoneRepositoryImpl;", "Lcom/vuitton/android/domain/repository/EarphoneRepository;", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class EarphoneRepositoryImpl implements EarphoneRepository {
    @Inject
    public EarphoneRepositoryImpl() {
    }

    @Override // com.vuitton.android.domain.repository.EarphoneRepository
    public final Video a(ConnectedObjectsConfig connectedObjectsConfig) throws Throwable {
        SectionConnectedObject sectionConnectedObject;
        EarphoneSection earphoneSection;
        SectionHome sectionHome = connectedObjectsConfig.f67332b;
        FaqVideo faqVideo = (sectionHome == null || (sectionConnectedObject = sectionHome.f67342a) == null || (earphoneSection = sectionConnectedObject.f67338b) == null) ? null : earphoneSection.f67323c;
        if (faqVideo != null) {
            return new Video(faqVideo.f67316b, faqVideo.f67315a);
        }
        throw new Throwable("Connected objects -> Video is null for earphones section");
    }

    @Override // com.vuitton.android.domain.repository.EarphoneRepository
    public final List b(ConnectedObjectsConfig connectedObjectsConfig) {
        SectionConnectedObject sectionConnectedObject;
        EarphoneSection earphoneSection;
        SectionHome sectionHome = connectedObjectsConfig.f67332b;
        return FaqCategoryMapperKt.b("Connected objects -> Faq missing for earphones", (sectionHome == null || (sectionConnectedObject = sectionHome.f67342a) == null || (earphoneSection = sectionConnectedObject.f67338b) == null) ? null : earphoneSection.f67321a);
    }

    @Override // com.vuitton.android.domain.repository.EarphoneRepository
    public final ArrayList c(ConnectedObjectsConfig connectedObjectsConfig) throws Throwable {
        ArrayList arrayList;
        SectionConnectedObject sectionConnectedObject;
        EarphoneSection earphoneSection;
        List list;
        SectionHome sectionHome = connectedObjectsConfig.f67332b;
        if (sectionHome == null || (sectionConnectedObject = sectionHome.f67342a) == null || (earphoneSection = sectionConnectedObject.f67338b) == null || (list = earphoneSection.f67322b) == null) {
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
            throw new Throwable("Connected objects -> The list of earphones products is null or empty");
        }
        return arrayList;
    }

    @Override // com.vuitton.android.domain.repository.EarphoneRepository
    public final List d(ConnectedObjectsConfig connectedObjectsConfig) throws ConnectivityException.NoEarphoneTutorialException {
        SectionConnectedObject sectionConnectedObject;
        EarphoneSection earphoneSection;
        List list;
        SectionHome sectionHome = connectedObjectsConfig.f67332b;
        if (sectionHome == null || (sectionConnectedObject = sectionHome.f67342a) == null || (earphoneSection = sectionConnectedObject.f67338b) == null || (list = earphoneSection.d) == null) {
            throw new ConnectivityException.NoEarphoneTutorialException();
        }
        return list;
    }
}
