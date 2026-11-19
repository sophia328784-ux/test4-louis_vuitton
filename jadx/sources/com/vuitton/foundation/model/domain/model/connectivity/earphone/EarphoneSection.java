package com.vuitton.foundation.model.domain.model.connectivity.earphone;

import com.vuitton.foundation.model.domain.model.connectivity.common.FaqCategory;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqVideo;
import com.vuitton.foundation.model.domain.model.connectivity.common.Tutorial;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BI\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0002¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/earphone/EarphoneSection;", "", "", "Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;", "faq", "", "skuList", "Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqVideo;", "video", "Lcom/vuitton/foundation/model/domain/model/connectivity/common/Tutorial;", "tutorial", "<init>", "(Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqVideo;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class EarphoneSection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f67321a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f67322b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FaqVideo f67323c;
    public final List d;

    public /* synthetic */ EarphoneSection(List list, List list2, FaqVideo faqVideo, List list3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : list, (i2 & 2) != 0 ? null : list2, (i2 & 4) != 0 ? null : faqVideo, (i2 & 8) != 0 ? null : list3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EarphoneSection)) {
            return false;
        }
        EarphoneSection earphoneSection = (EarphoneSection) obj;
        return Intrinsics.c(this.f67321a, earphoneSection.f67321a) && Intrinsics.c(this.f67322b, earphoneSection.f67322b) && Intrinsics.c(this.f67323c, earphoneSection.f67323c) && Intrinsics.c(this.d, earphoneSection.d);
    }

    public final int hashCode() {
        List list = this.f67321a;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List list2 = this.f67322b;
        int iHashCode2 = (iHashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        FaqVideo faqVideo = this.f67323c;
        int iHashCode3 = (iHashCode2 + (faqVideo == null ? 0 : faqVideo.hashCode())) * 31;
        List list3 = this.d;
        return iHashCode3 + (list3 != null ? list3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = o60.s("EarphoneSection(faq=", ", skuList=", ", video=", this.f67321a, this.f67322b);
        sbS.append(this.f67323c);
        sbS.append(", tutorial=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }

    public EarphoneSection(List<FaqCategory> list, List<String> list2, FaqVideo faqVideo, List<Tutorial> list3) {
        this.f67321a = list;
        this.f67322b = list2;
        this.f67323c = faqVideo;
        this.d = list3;
    }

    public EarphoneSection() {
        this(null, null, null, null, 15, null);
    }
}
