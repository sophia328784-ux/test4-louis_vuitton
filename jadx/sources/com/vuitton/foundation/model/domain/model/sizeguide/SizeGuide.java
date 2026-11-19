package com.vuitton.foundation.model.domain.model.sizeguide;

import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u00ad\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u001e\u0010\f\u001a\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00060\u00060\u000b\u0012\u001e\u0010\r\u001a\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00060\u00060\u000b\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0006\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/sizeguide/SizeGuide;", "", "", "title", "reinsuranceText", "selectYourCountryTitle", "", "cmCountryList", "inchesCountryList", "cmLabel", "inchesLabel", "", "cmTableMap", "inchesTableMap", "howToMeasureTitle", "Lcom/vuitton/foundation/model/domain/model/sizeguide/HowToMeasureItem;", "howToMeasureList", "topDescription", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SizeGuide {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68207a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68208b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f68209c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f68210e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f68211f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Map f68212h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Map f68213i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f68214j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final List f68215k;
    public final String l;

    public SizeGuide(String str, String str2, String str3, List<String> list, List<String> list2, String str4, String str5, Map<String, ? extends List<? extends List<String>>> map, Map<String, ? extends List<? extends List<String>>> map2, String str6, List<HowToMeasureItem> list3, String str7) {
        str.getClass();
        str3.getClass();
        list.getClass();
        list2.getClass();
        str4.getClass();
        str5.getClass();
        map.getClass();
        map2.getClass();
        str6.getClass();
        list3.getClass();
        this.f68207a = str;
        this.f68208b = str2;
        this.f68209c = str3;
        this.d = list;
        this.f68210e = list2;
        this.f68211f = str4;
        this.g = str5;
        this.f68212h = map;
        this.f68213i = map2;
        this.f68214j = str6;
        this.f68215k = list3;
        this.l = str7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SizeGuide)) {
            return false;
        }
        SizeGuide sizeGuide = (SizeGuide) obj;
        return Intrinsics.c(this.f68207a, sizeGuide.f68207a) && Intrinsics.c(this.f68208b, sizeGuide.f68208b) && Intrinsics.c(this.f68209c, sizeGuide.f68209c) && Intrinsics.c(this.d, sizeGuide.d) && Intrinsics.c(this.f68210e, sizeGuide.f68210e) && Intrinsics.c(this.f68211f, sizeGuide.f68211f) && Intrinsics.c(this.g, sizeGuide.g) && Intrinsics.c(this.f68212h, sizeGuide.f68212h) && Intrinsics.c(this.f68213i, sizeGuide.f68213i) && Intrinsics.c(this.f68214j, sizeGuide.f68214j) && Intrinsics.c(this.f68215k, sizeGuide.f68215k) && Intrinsics.c(this.l, sizeGuide.l);
    }

    public final int hashCode() {
        int iHashCode = this.f68207a.hashCode() * 31;
        String str = this.f68208b;
        int iA = n00.a(fc.b((this.f68213i.hashCode() + ((this.f68212h.hashCode() + fc.b(fc.b(n00.a(n00.a(fc.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.f68209c), 31, this.d), 31, this.f68210e), 31, this.f68211f), 31, this.g)) * 31)) * 31, 31, this.f68214j), 31, this.f68215k);
        String str2 = this.l;
        return iA + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("SizeGuide(title=", this.f68207a, ", reinsuranceText=", this.f68208b, ", selectYourCountryTitle=");
        d21.z(this.f68209c, ", cmCountryList=", ", inchesCountryList=", sbS, this.d);
        o60.B(", cmLabel=", this.f68211f, ", inchesLabel=", sbS, this.f68210e);
        sbS.append(this.g);
        sbS.append(", cmTableMap=");
        sbS.append(this.f68212h);
        sbS.append(", inchesTableMap=");
        sbS.append(this.f68213i);
        sbS.append(", howToMeasureTitle=");
        sbS.append(this.f68214j);
        sbS.append(", howToMeasureList=");
        sbS.append(this.f68215k);
        sbS.append(", topDescription=");
        sbS.append(this.l);
        sbS.append(")");
        return sbS.toString();
    }
}
