package com.vuitton.foundation.model.domain.model.dynamicyield;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYVariation;", "", "", "Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYRecommendation;", "recommendationList", "", "decisionId", "<init>", "(Ljava/util/List;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class DYVariation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f67566a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67567b;

    public DYVariation(List<DYRecommendation> list, String str) {
        list.getClass();
        this.f67566a = list;
        this.f67567b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DYVariation)) {
            return false;
        }
        DYVariation dYVariation = (DYVariation) obj;
        return Intrinsics.c(this.f67566a, dYVariation.f67566a) && Intrinsics.c(this.f67567b, dYVariation.f67567b);
    }

    public final int hashCode() {
        int iHashCode = this.f67566a.hashCode() * 31;
        String str = this.f67567b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "DYVariation(recommendationList=" + this.f67566a + ", decisionId=" + this.f67567b + ")";
    }

    public /* synthetic */ DYVariation(List list, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i2 & 2) != 0 ? null : str);
    }
}
