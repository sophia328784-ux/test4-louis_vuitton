package com.vuitton.foundation.model.domain.model.connectivity.watch;

import com.vuitton.foundation.model.domain.model.connectivity.sync.SectionFaq;
import com.vuitton.foundation.model.domain.model.connectivity.sync.SectionTutorials;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0085\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\b¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionPromise;", "", "", "assetMyWatch", "assetProductList", "assetTutorial", "assetWatchVideo", "assetWatchface", "", "Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionFaq;", "sectionFaq", "Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionTutorials;", "sectionTutorials", "Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchVideo;", "sectionWatchVideo", "Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;", "sectionWatchfaces", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchVideo;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SectionPromise {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67391a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67392b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67393c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67394e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f67395f;
    public final List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SectionWatchVideo f67396h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f67397i;

    public /* synthetic */ SectionPromise(String str, String str2, String str3, String str4, String str5, List list, List list2, SectionWatchVideo sectionWatchVideo, List list3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : str5, (i2 & 32) != 0 ? null : list, (i2 & 64) != 0 ? null : list2, (i2 & 128) != 0 ? null : sectionWatchVideo, (i2 & 256) != 0 ? null : list3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SectionPromise)) {
            return false;
        }
        SectionPromise sectionPromise = (SectionPromise) obj;
        return Intrinsics.c(this.f67391a, sectionPromise.f67391a) && Intrinsics.c(this.f67392b, sectionPromise.f67392b) && Intrinsics.c(this.f67393c, sectionPromise.f67393c) && Intrinsics.c(this.d, sectionPromise.d) && Intrinsics.c(this.f67394e, sectionPromise.f67394e) && Intrinsics.c(this.f67395f, sectionPromise.f67395f) && Intrinsics.c(this.g, sectionPromise.g) && Intrinsics.c(this.f67396h, sectionPromise.f67396h) && Intrinsics.c(this.f67397i, sectionPromise.f67397i);
    }

    public final int hashCode() {
        String str = this.f67391a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f67392b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f67393c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f67394e;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        List list = this.f67395f;
        int iHashCode6 = (iHashCode5 + (list == null ? 0 : list.hashCode())) * 31;
        List list2 = this.g;
        int iHashCode7 = (iHashCode6 + (list2 == null ? 0 : list2.hashCode())) * 31;
        SectionWatchVideo sectionWatchVideo = this.f67396h;
        int iHashCode8 = (iHashCode7 + (sectionWatchVideo == null ? 0 : sectionWatchVideo.hashCode())) * 31;
        List list3 = this.f67397i;
        return iHashCode8 + (list3 != null ? list3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("SectionPromise(assetMyWatch=", this.f67391a, ", assetProductList=", this.f67392b, ", assetTutorial=");
        cj.C(sbS, this.f67393c, ", assetWatchVideo=", this.d, ", assetWatchface=");
        d21.z(this.f67394e, ", sectionFaq=", ", sectionTutorials=", sbS, this.f67395f);
        sbS.append(this.g);
        sbS.append(", sectionWatchVideo=");
        sbS.append(this.f67396h);
        sbS.append(", sectionWatchfaces=");
        return a.o(sbS, this.f67397i, ")");
    }

    public SectionPromise(String str, String str2, String str3, String str4, String str5, List<SectionFaq> list, List<SectionTutorials> list2, SectionWatchVideo sectionWatchVideo, List<SectionWatchfaces> list3) {
        this.f67391a = str;
        this.f67392b = str2;
        this.f67393c = str3;
        this.d = str4;
        this.f67394e = str5;
        this.f67395f = list;
        this.g = list2;
        this.f67396h = sectionWatchVideo;
        this.f67397i = list3;
    }

    public SectionPromise() {
        this(null, null, null, null, null, null, null, null, null, 511, null);
    }
}
