package com.vuitton.foundation.model.domain.model.osa;

import com.batch.android.s.b;
import defpackage.cj;
import defpackage.fc;
import defpackage.pq0;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/osa/StoreInformationItem;", "", "", b.a.f24015b, "name", "address", "address2", "phone", "imageUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class StoreInformationItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67781a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67782b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67783c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67784e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f67785f;

    public StoreInformationItem(String str, String str2, String str3, String str4, String str5, String str6) {
        pq0.z(str, str2, str3, str4, str5);
        str6.getClass();
        this.f67781a = str;
        this.f67782b = str2;
        this.f67783c = str3;
        this.d = str4;
        this.f67784e = str5;
        this.f67785f = str6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StoreInformationItem)) {
            return false;
        }
        StoreInformationItem storeInformationItem = (StoreInformationItem) obj;
        return Intrinsics.c(this.f67781a, storeInformationItem.f67781a) && Intrinsics.c(this.f67782b, storeInformationItem.f67782b) && Intrinsics.c(this.f67783c, storeInformationItem.f67783c) && Intrinsics.c(this.d, storeInformationItem.d) && Intrinsics.c(this.f67784e, storeInformationItem.f67784e) && Intrinsics.c(this.f67785f, storeInformationItem.f67785f);
    }

    public final int hashCode() {
        return this.f67785f.hashCode() + fc.b(fc.b(fc.b(fc.b(this.f67781a.hashCode() * 31, 31, this.f67782b), 31, this.f67783c), 31, this.d), 31, this.f67784e);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("StoreInformationItem(id=", this.f67781a, ", name=", this.f67782b, ", address=");
        cj.C(sbS, this.f67783c, ", address2=", this.d, ", phone=");
        return tr.l(sbS, this.f67784e, ", imageUrl=", this.f67785f, ")");
    }
}
