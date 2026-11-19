package com.vuitton.foundation.model.domain.model.connectivity.watchface;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.connectivity.common.Video;
import defpackage.cj;
import defpackage.fc;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u009d\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u001a\u0010\t\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\u0002\u0018\u0001`\b\u0012\u001a\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\u0002\u0018\u0001`\b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\u0016\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u0007j\b\u0012\u0004\u0012\u00020\u000f`\b¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/WatchfacePresentation;", "", "", b.a.f24015b, "title", "description", "icon", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "assetTopList", "assetBottomList", "Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;", "presentationVideo", "howToGetWatchVideo", "presentationPlaceholder", "", "versions", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;Ljava/lang/String;Ljava/util/ArrayList;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class WatchfacePresentation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67411a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67412b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67413c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f67414e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f67415f;
    public final Video g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Video f67416h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f67417i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayList f67418j;

    public WatchfacePresentation(String str, String str2, String str3, String str4, ArrayList<String> arrayList, ArrayList<String> arrayList2, Video video, Video video2, String str5, ArrayList<Integer> arrayList3) {
        arrayList3.getClass();
        this.f67411a = str;
        this.f67412b = str2;
        this.f67413c = str3;
        this.d = str4;
        this.f67414e = arrayList;
        this.f67415f = arrayList2;
        this.g = video;
        this.f67416h = video2;
        this.f67417i = str5;
        this.f67418j = arrayList3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WatchfacePresentation)) {
            return false;
        }
        WatchfacePresentation watchfacePresentation = (WatchfacePresentation) obj;
        return Intrinsics.c(this.f67411a, watchfacePresentation.f67411a) && Intrinsics.c(this.f67412b, watchfacePresentation.f67412b) && Intrinsics.c(this.f67413c, watchfacePresentation.f67413c) && Intrinsics.c(this.d, watchfacePresentation.d) && Intrinsics.c(this.f67414e, watchfacePresentation.f67414e) && Intrinsics.c(this.f67415f, watchfacePresentation.f67415f) && Intrinsics.c(this.g, watchfacePresentation.g) && Intrinsics.c(this.f67416h, watchfacePresentation.f67416h) && Intrinsics.c(this.f67417i, watchfacePresentation.f67417i) && Intrinsics.c(this.f67418j, watchfacePresentation.f67418j);
    }

    public final int hashCode() {
        String str = this.f67411a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f67412b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f67413c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        ArrayList arrayList = this.f67414e;
        int iHashCode5 = (iHashCode4 + (arrayList == null ? 0 : arrayList.hashCode())) * 31;
        ArrayList arrayList2 = this.f67415f;
        int iHashCode6 = (iHashCode5 + (arrayList2 == null ? 0 : arrayList2.hashCode())) * 31;
        Video video = this.g;
        int iHashCode7 = (iHashCode6 + (video == null ? 0 : video.hashCode())) * 31;
        Video video2 = this.f67416h;
        int iHashCode8 = (iHashCode7 + (video2 == null ? 0 : video2.hashCode())) * 31;
        String str5 = this.f67417i;
        return this.f67418j.hashCode() + ((iHashCode8 + (str5 != null ? str5.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("WatchfacePresentation(id=", this.f67411a, ", title=", this.f67412b, ", description=");
        cj.C(sbS, this.f67413c, ", icon=", this.d, ", assetTopList=");
        sbS.append(this.f67414e);
        sbS.append(", assetBottomList=");
        sbS.append(this.f67415f);
        sbS.append(", presentationVideo=");
        sbS.append(this.g);
        sbS.append(", howToGetWatchVideo=");
        sbS.append(this.f67416h);
        sbS.append(", presentationPlaceholder=");
        sbS.append(this.f67417i);
        sbS.append(", versions=");
        sbS.append(this.f67418j);
        sbS.append(")");
        return sbS.toString();
    }
}
