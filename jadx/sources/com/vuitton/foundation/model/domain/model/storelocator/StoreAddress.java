package com.vuitton.foundation.model.domain.model.storelocator;

import defpackage.fc;
import defpackage.pq0;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/storelocator/StoreAddress;", "", "", "street", "city", "state", "country", "zipcode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class StoreAddress {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68249a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68250b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f68251c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f68252e;

    public StoreAddress(String str, String str2, String str3, String str4, String str5) {
        pq0.z(str, str2, str3, str4, str5);
        this.f68249a = str;
        this.f68250b = str2;
        this.f68251c = str3;
        this.d = str4;
        this.f68252e = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StoreAddress)) {
            return false;
        }
        StoreAddress storeAddress = (StoreAddress) obj;
        return Intrinsics.c(this.f68249a, storeAddress.f68249a) && Intrinsics.c(this.f68250b, storeAddress.f68250b) && Intrinsics.c(this.f68251c, storeAddress.f68251c) && Intrinsics.c(this.d, storeAddress.d) && Intrinsics.c(this.f68252e, storeAddress.f68252e);
    }

    public final int hashCode() {
        return this.f68252e.hashCode() + fc.b(fc.b(fc.b(this.f68249a.hashCode() * 31, 31, this.f68250b), 31, this.f68251c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f68249a);
        sb.append(", ");
        sb.append(this.f68252e);
        sb.append(" ");
        sb.append(this.f68250b);
        return tr.l(sb, ", ", this.f68251c, " ", this.d);
    }
}
