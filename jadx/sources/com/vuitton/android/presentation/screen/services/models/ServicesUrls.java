package com.vuitton.android.presentation.screen.services.models;

import defpackage.cj;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0087\b\u0018\u00002\u00020\u0001BU\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;", "", "", "storeLocatorUrl", "giftingUrl", "personalizationUrl", "contactUrl", "faqUrl", "careServiceUrl", "deliveryUrl", "environmentalCharacteristicsUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ServicesUrls {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f64398a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f64399b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f64400c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f64401e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f64402f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f64403h;

    public ServicesUrls(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        str.getClass();
        this.f64398a = str;
        this.f64399b = str2;
        this.f64400c = str3;
        this.d = str4;
        this.f64401e = str5;
        this.f64402f = str6;
        this.g = str7;
        this.f64403h = str8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ServicesUrls)) {
            return false;
        }
        ServicesUrls servicesUrls = (ServicesUrls) obj;
        return Intrinsics.c(this.f64398a, servicesUrls.f64398a) && Intrinsics.c(this.f64399b, servicesUrls.f64399b) && Intrinsics.c(this.f64400c, servicesUrls.f64400c) && Intrinsics.c(this.d, servicesUrls.d) && Intrinsics.c(this.f64401e, servicesUrls.f64401e) && Intrinsics.c(this.f64402f, servicesUrls.f64402f) && Intrinsics.c(this.g, servicesUrls.g) && Intrinsics.c(this.f64403h, servicesUrls.f64403h);
    }

    public final int hashCode() {
        int iHashCode = this.f64398a.hashCode() * 31;
        String str = this.f64399b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f64400c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.d;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f64401e;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f64402f;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.g;
        int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.f64403h;
        return iHashCode7 + (str7 != null ? str7.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ServicesUrls(storeLocatorUrl=", this.f64398a, ", giftingUrl=", this.f64399b, ", personalizationUrl=");
        cj.C(sbS, this.f64400c, ", contactUrl=", this.d, ", faqUrl=");
        cj.C(sbS, this.f64401e, ", careServiceUrl=", this.f64402f, ", deliveryUrl=");
        return tr.l(sbS, this.g, ", environmentalCharacteristicsUrl=", this.f64403h, ")");
    }
}
