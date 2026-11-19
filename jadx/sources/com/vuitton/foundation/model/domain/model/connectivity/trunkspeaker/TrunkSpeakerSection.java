package com.vuitton.foundation.model.domain.model.connectivity.trunkspeaker;

import com.vuitton.foundation.model.domain.model.connectivity.common.FaqCategory;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqVideo;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/trunkspeaker/TrunkSpeakerSection;", "", "", "Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;", "faq", "", "skuList", "Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqVideo;", "video", "<init>", "(Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqVideo;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class TrunkSpeakerSection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f67383a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f67384b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FaqVideo f67385c;

    public /* synthetic */ TrunkSpeakerSection(List list, List list2, FaqVideo faqVideo, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : list, (i2 & 2) != 0 ? null : list2, (i2 & 4) != 0 ? null : faqVideo);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TrunkSpeakerSection)) {
            return false;
        }
        TrunkSpeakerSection trunkSpeakerSection = (TrunkSpeakerSection) obj;
        return Intrinsics.c(this.f67383a, trunkSpeakerSection.f67383a) && Intrinsics.c(this.f67384b, trunkSpeakerSection.f67384b) && Intrinsics.c(this.f67385c, trunkSpeakerSection.f67385c);
    }

    public final int hashCode() {
        List list = this.f67383a;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List list2 = this.f67384b;
        int iHashCode2 = (iHashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        FaqVideo faqVideo = this.f67385c;
        return iHashCode2 + (faqVideo != null ? faqVideo.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = o60.s("TrunkSpeakerSection(faq=", ", skuList=", ", video=", this.f67383a, this.f67384b);
        sbS.append(this.f67385c);
        sbS.append(")");
        return sbS.toString();
    }

    public TrunkSpeakerSection(List<FaqCategory> list, List<String> list2, FaqVideo faqVideo) {
        this.f67383a = list;
        this.f67384b = list2;
        this.f67385c = faqVideo;
    }

    public TrunkSpeakerSection() {
        this(null, null, null, 7, null);
    }
}
