package com.vuitton.foundation.model.domain.model.connectivity.common;

import com.batch.android.s.b;
import defpackage.a;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BE\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0006¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;", "", "", b.a.f24015b, "title", "iconUrl", "", "Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqItem;", "items", "Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqPdf;", "pdf", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FaqCategory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67307a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67308b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67309c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f67310e;

    public FaqCategory(String str, String str2, String str3, List<FaqItem> list, List<FaqPdf> list2) {
        list.getClass();
        this.f67307a = str;
        this.f67308b = str2;
        this.f67309c = str3;
        this.d = list;
        this.f67310e = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FaqCategory)) {
            return false;
        }
        FaqCategory faqCategory = (FaqCategory) obj;
        return Intrinsics.c(this.f67307a, faqCategory.f67307a) && Intrinsics.c(this.f67308b, faqCategory.f67308b) && Intrinsics.c(this.f67309c, faqCategory.f67309c) && Intrinsics.c(this.d, faqCategory.d) && Intrinsics.c(this.f67310e, faqCategory.f67310e);
    }

    public final int hashCode() {
        String str = this.f67307a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f67308b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f67309c;
        int iA = n00.a((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31, 31, this.d);
        List list = this.f67310e;
        return iA + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("FaqCategory(id=", this.f67307a, ", title=", this.f67308b, ", iconUrl=");
        d21.z(this.f67309c, ", items=", ", pdf=", sbS, this.d);
        return a.o(sbS, this.f67310e, ")");
    }

    public /* synthetic */ FaqCategory(String str, String str2, String str3, List list, List list2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, list, (i2 & 16) != 0 ? null : list2);
    }
}
