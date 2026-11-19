package com.vuitton.foundation.model.domain.model.exclusivesales;

import defpackage.cj;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesCategoryLinks;", "", "", "dimId", "imageUrl", "offerDisplayName", "offerDescription", "largeImageUrl", "offerId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ExclusiveSalesCategoryLinks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67571a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67572b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67573c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67574e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f67575f;

    public ExclusiveSalesCategoryLinks(String str, String str2, String str3, String str4, String str5, String str6) {
        str.getClass();
        this.f67571a = str;
        this.f67572b = str2;
        this.f67573c = str3;
        this.d = str4;
        this.f67574e = str5;
        this.f67575f = str6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ExclusiveSalesCategoryLinks)) {
            return false;
        }
        ExclusiveSalesCategoryLinks exclusiveSalesCategoryLinks = (ExclusiveSalesCategoryLinks) obj;
        return Intrinsics.c(this.f67571a, exclusiveSalesCategoryLinks.f67571a) && Intrinsics.c(this.f67572b, exclusiveSalesCategoryLinks.f67572b) && Intrinsics.c(this.f67573c, exclusiveSalesCategoryLinks.f67573c) && Intrinsics.c(this.d, exclusiveSalesCategoryLinks.d) && Intrinsics.c(this.f67574e, exclusiveSalesCategoryLinks.f67574e) && Intrinsics.c(this.f67575f, exclusiveSalesCategoryLinks.f67575f);
    }

    public final int hashCode() {
        int iHashCode = this.f67571a.hashCode() * 31;
        String str = this.f67572b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f67573c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.d;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f67574e;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f67575f;
        return iHashCode5 + (str5 != null ? str5.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ExclusiveSalesCategoryLinks(dimId=", this.f67571a, ", imageUrl=", this.f67572b, ", offerDisplayName=");
        cj.C(sbS, this.f67573c, ", offerDescription=", this.d, ", largeImageUrl=");
        return tr.l(sbS, this.f67574e, ", offerId=", this.f67575f, ")");
    }
}
