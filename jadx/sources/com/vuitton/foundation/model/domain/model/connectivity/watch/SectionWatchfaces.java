package com.vuitton.foundation.model.domain.model.connectivity.watch;

import com.vuitton.foundation.model.domain.model.connectivity.watchface.Content;
import defpackage.cj;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BO\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\t0\bj\b\u0012\u0004\u0012\u00020\t`\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;", "", "", "assetIcon", "Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/Content;", "content", "identifier", "title", "Ljava/util/ArrayList;", "", "Lkotlin/collections/ArrayList;", "versions", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/Content;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SectionWatchfaces {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67400a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Content f67401b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67402c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f67403e;

    public /* synthetic */ SectionWatchfaces(String str, Content content, String str2, String str3, ArrayList arrayList, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : content, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : str3, arrayList);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SectionWatchfaces)) {
            return false;
        }
        SectionWatchfaces sectionWatchfaces = (SectionWatchfaces) obj;
        return Intrinsics.c(this.f67400a, sectionWatchfaces.f67400a) && Intrinsics.c(this.f67401b, sectionWatchfaces.f67401b) && Intrinsics.c(this.f67402c, sectionWatchfaces.f67402c) && Intrinsics.c(this.d, sectionWatchfaces.d) && Intrinsics.c(this.f67403e, sectionWatchfaces.f67403e);
    }

    public final int hashCode() {
        String str = this.f67400a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Content content = this.f67401b;
        int iHashCode2 = (iHashCode + (content == null ? 0 : content.hashCode())) * 31;
        String str2 = this.f67402c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.d;
        return this.f67403e.hashCode() + ((iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SectionWatchfaces(assetIcon=");
        sb.append(this.f67400a);
        sb.append(", content=");
        sb.append(this.f67401b);
        sb.append(", identifier=");
        cj.C(sb, this.f67402c, ", title=", this.d, ", versions=");
        sb.append(this.f67403e);
        sb.append(")");
        return sb.toString();
    }

    public SectionWatchfaces(String str, Content content, String str2, String str3, ArrayList<Integer> arrayList) {
        arrayList.getClass();
        this.f67400a = str;
        this.f67401b = content;
        this.f67402c = str2;
        this.d = str3;
        this.f67403e = arrayList;
    }
}
