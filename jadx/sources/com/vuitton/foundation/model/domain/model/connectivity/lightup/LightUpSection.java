package com.vuitton.foundation.model.domain.model.connectivity.lightup;

import com.vuitton.foundation.model.domain.model.connectivity.common.FaqCategory;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BI\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LightUpSection;", "", "", "Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;", "faqKeepAll", "faqTrainer", "faqTrunk", "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/HomePageContent;", "homePageContent", "<init>", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/HomePageContent;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LightUpSection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f67328a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f67329b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f67330c;
    public final HomePageContent d;

    public /* synthetic */ LightUpSection(List list, List list2, List list3, HomePageContent homePageContent, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : list, (i2 & 2) != 0 ? null : list2, (i2 & 4) != 0 ? null : list3, (i2 & 8) != 0 ? null : homePageContent);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LightUpSection)) {
            return false;
        }
        LightUpSection lightUpSection = (LightUpSection) obj;
        return Intrinsics.c(this.f67328a, lightUpSection.f67328a) && Intrinsics.c(this.f67329b, lightUpSection.f67329b) && Intrinsics.c(this.f67330c, lightUpSection.f67330c) && Intrinsics.c(this.d, lightUpSection.d);
    }

    public final int hashCode() {
        List list = this.f67328a;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List list2 = this.f67329b;
        int iHashCode2 = (iHashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        List list3 = this.f67330c;
        int iHashCode3 = (iHashCode2 + (list3 == null ? 0 : list3.hashCode())) * 31;
        HomePageContent homePageContent = this.d;
        return iHashCode3 + (homePageContent != null ? homePageContent.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = o60.s("LightUpSection(faqKeepAll=", ", faqTrainer=", ", faqTrunk=", this.f67328a, this.f67329b);
        sbS.append(this.f67330c);
        sbS.append(", homePageContent=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }

    public LightUpSection(List<FaqCategory> list, List<FaqCategory> list2, List<FaqCategory> list3, HomePageContent homePageContent) {
        this.f67328a = list;
        this.f67329b = list2;
        this.f67330c = list3;
        this.d = homePageContent;
    }

    public LightUpSection() {
        this(null, null, null, null, 15, null);
    }
}
