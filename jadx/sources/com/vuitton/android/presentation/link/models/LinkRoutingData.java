package com.vuitton.android.presentation.link.models;

import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B1\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/link/models/LinkRoutingData;", "", "", "", "excludedAppLinks", "storeLocatorUrl", "", "isExclusiveOfferEnabled", "isCertificatesEnabled", "<init>", "(Ljava/util/Set;Ljava/lang/String;ZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LinkRoutingData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Set f51632a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f51633b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f51634c;
    public final boolean d;

    public LinkRoutingData(Set<String> set, String str, boolean z, boolean z2) {
        set.getClass();
        str.getClass();
        this.f51632a = set;
        this.f51633b = str;
        this.f51634c = z;
        this.d = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LinkRoutingData)) {
            return false;
        }
        LinkRoutingData linkRoutingData = (LinkRoutingData) obj;
        return Intrinsics.c(this.f51632a, linkRoutingData.f51632a) && Intrinsics.c(this.f51633b, linkRoutingData.f51633b) && this.f51634c == linkRoutingData.f51634c && this.d == linkRoutingData.d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.d) + o60.b(fc.b(this.f51632a.hashCode() * 31, 31, this.f51633b), 31, this.f51634c);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LinkRoutingData(excludedAppLinks=");
        sb.append(this.f51632a);
        sb.append(", storeLocatorUrl=");
        sb.append(this.f51633b);
        sb.append(", isExclusiveOfferEnabled=");
        return pq0.p(sb, this.f51634c, ", isCertificatesEnabled=", this.d, ")");
    }

    public /* synthetic */ LinkRoutingData(Set set, String str, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(set, str, (i2 & 4) != 0 ? false : z, (i2 & 8) != 0 ? false : z2);
    }
}
