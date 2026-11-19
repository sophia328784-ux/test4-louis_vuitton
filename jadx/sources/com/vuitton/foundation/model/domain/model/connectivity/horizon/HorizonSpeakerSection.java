package com.vuitton.foundation.model.domain.model.connectivity.horizon;

import com.vuitton.foundation.model.domain.model.connectivity.common.FaqCategory;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqVideo;
import com.vuitton.foundation.model.domain.model.connectivity.common.Tutorial;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BI\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/horizon/HorizonSpeakerSection;", "", "", "Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;", "faq", "", "skuList", "Lcom/vuitton/foundation/model/domain/model/connectivity/common/Tutorial;", "tutorial", "Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqVideo;", "video", "<init>", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqVideo;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class HorizonSpeakerSection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f67324a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f67325b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f67326c;
    public final FaqVideo d;

    public /* synthetic */ HorizonSpeakerSection(List list, List list2, List list3, FaqVideo faqVideo, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : list, (i2 & 2) != 0 ? null : list2, (i2 & 4) != 0 ? null : list3, (i2 & 8) != 0 ? null : faqVideo);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HorizonSpeakerSection)) {
            return false;
        }
        HorizonSpeakerSection horizonSpeakerSection = (HorizonSpeakerSection) obj;
        return Intrinsics.c(this.f67324a, horizonSpeakerSection.f67324a) && Intrinsics.c(this.f67325b, horizonSpeakerSection.f67325b) && Intrinsics.c(this.f67326c, horizonSpeakerSection.f67326c) && Intrinsics.c(this.d, horizonSpeakerSection.d);
    }

    public final int hashCode() {
        List list = this.f67324a;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List list2 = this.f67325b;
        int iHashCode2 = (iHashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        List list3 = this.f67326c;
        int iHashCode3 = (iHashCode2 + (list3 == null ? 0 : list3.hashCode())) * 31;
        FaqVideo faqVideo = this.d;
        return iHashCode3 + (faqVideo != null ? faqVideo.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = o60.s("HorizonSpeakerSection(faq=", ", skuList=", ", tutorial=", this.f67324a, this.f67325b);
        sbS.append(this.f67326c);
        sbS.append(", video=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }

    public HorizonSpeakerSection(List<FaqCategory> list, List<String> list2, List<Tutorial> list3, FaqVideo faqVideo) {
        this.f67324a = list;
        this.f67325b = list2;
        this.f67326c = list3;
        this.d = faqVideo;
    }

    public HorizonSpeakerSection() {
        this(null, null, null, null, 15, null);
    }
}
