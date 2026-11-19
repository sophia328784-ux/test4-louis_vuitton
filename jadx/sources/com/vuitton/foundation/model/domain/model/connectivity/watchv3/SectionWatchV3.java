package com.vuitton.foundation.model.domain.model.connectivity.watchv3;

import com.vuitton.foundation.model.domain.model.connectivity.common.FaqCategory;
import com.vuitton.foundation.model.domain.model.connectivity.common.Tutorial;
import com.vuitton.foundation.model.domain.model.connectivity.watch.SectionWatchVideo;
import defpackage.a;
import defpackage.fc;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001Ba\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/watchv3/SectionWatchV3;", "", "", "assetTutorial", "assetWatchVideo", "", "Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;", "sectionFaq", "Lcom/vuitton/foundation/model/domain/model/connectivity/common/Tutorial;", "sectionTutorials", "Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchVideo;", "sectionWatchVideo", "skuList", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchVideo;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SectionWatchV3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67419a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67420b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f67421c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SectionWatchVideo f67422e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f67423f;

    public /* synthetic */ SectionWatchV3(String str, String str2, List list, List list2, SectionWatchVideo sectionWatchVideo, List list3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : list, (i2 & 8) != 0 ? null : list2, (i2 & 16) != 0 ? null : sectionWatchVideo, (i2 & 32) != 0 ? null : list3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SectionWatchV3)) {
            return false;
        }
        SectionWatchV3 sectionWatchV3 = (SectionWatchV3) obj;
        return Intrinsics.c(this.f67419a, sectionWatchV3.f67419a) && Intrinsics.c(this.f67420b, sectionWatchV3.f67420b) && Intrinsics.c(this.f67421c, sectionWatchV3.f67421c) && Intrinsics.c(this.d, sectionWatchV3.d) && Intrinsics.c(this.f67422e, sectionWatchV3.f67422e) && Intrinsics.c(this.f67423f, sectionWatchV3.f67423f);
    }

    public final int hashCode() {
        String str = this.f67419a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f67420b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        List list = this.f67421c;
        int iHashCode3 = (iHashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        List list2 = this.d;
        int iHashCode4 = (iHashCode3 + (list2 == null ? 0 : list2.hashCode())) * 31;
        SectionWatchVideo sectionWatchVideo = this.f67422e;
        int iHashCode5 = (iHashCode4 + (sectionWatchVideo == null ? 0 : sectionWatchVideo.hashCode())) * 31;
        List list3 = this.f67423f;
        return iHashCode5 + (list3 != null ? list3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("SectionWatchV3(assetTutorial=", this.f67419a, ", assetWatchVideo=", this.f67420b, ", sectionFaq=");
        a.C(sbS, this.f67421c, ", sectionTutorials=", this.d, ", sectionWatchVideo=");
        sbS.append(this.f67422e);
        sbS.append(", skuList=");
        sbS.append(this.f67423f);
        sbS.append(")");
        return sbS.toString();
    }

    public SectionWatchV3(String str, String str2, List<FaqCategory> list, List<Tutorial> list2, SectionWatchVideo sectionWatchVideo, List<String> list3) {
        this.f67419a = str;
        this.f67420b = str2;
        this.f67421c = list;
        this.d = list2;
        this.f67422e = sectionWatchVideo;
        this.f67423f = list3;
    }

    public SectionWatchV3() {
        this(null, null, null, null, null, null, 63, null);
    }
}
