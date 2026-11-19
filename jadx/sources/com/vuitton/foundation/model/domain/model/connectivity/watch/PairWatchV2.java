package com.vuitton.foundation.model.domain.model.connectivity.watch;

import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/watch/PairWatchV2;", "", "", "serialNumber", "iotKey", "watchPublicKey", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PairWatchV2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67386a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67387b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67388c;

    public PairWatchV2(String str, String str2, String str3) {
        cj.z(str, str2, str3);
        this.f67386a = str;
        this.f67387b = str2;
        this.f67388c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PairWatchV2)) {
            return false;
        }
        PairWatchV2 pairWatchV2 = (PairWatchV2) obj;
        return Intrinsics.c(this.f67386a, pairWatchV2.f67386a) && Intrinsics.c(this.f67387b, pairWatchV2.f67387b) && Intrinsics.c(this.f67388c, pairWatchV2.f67388c);
    }

    public final int hashCode() {
        return this.f67388c.hashCode() + fc.b(this.f67386a.hashCode() * 31, 31, this.f67387b);
    }

    public final String toString() {
        return n00.r(this.f67388c, ")", fc.s("PairWatchV2(serialNumber=", this.f67386a, ", iotKey=", this.f67387b, ", watchPublicKey="));
    }

    public /* synthetic */ PairWatchV2(String str, String str2, String str3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? "" : str3);
    }
}
