package com.vuitton.foundation.model.domain.model.product.universal;

import defpackage.d21;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/EnvironmentInfo;", "", "", "label", "", "bulletPoints", "imageUrl", "<init>", "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class EnvironmentInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67988a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f67989b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67990c;

    public EnvironmentInfo(String str, List<String> list, String str2) {
        str.getClass();
        this.f67988a = str;
        this.f67989b = list;
        this.f67990c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EnvironmentInfo)) {
            return false;
        }
        EnvironmentInfo environmentInfo = (EnvironmentInfo) obj;
        return Intrinsics.c(this.f67988a, environmentInfo.f67988a) && Intrinsics.c(this.f67989b, environmentInfo.f67989b) && Intrinsics.c(this.f67990c, environmentInfo.f67990c);
    }

    public final int hashCode() {
        int iHashCode = this.f67988a.hashCode() * 31;
        List list = this.f67989b;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        String str = this.f67990c;
        return iHashCode2 + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return n00.r(this.f67990c, ")", d21.t("EnvironmentInfo(label=", this.f67988a, ", bulletPoints=", this.f67989b, ", imageUrl="));
    }
}
