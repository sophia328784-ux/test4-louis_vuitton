package com.kakao.sdk.user.model;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\b\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/kakao/sdk/user/model/RevokedServiceTerms;", "", "", "tag", "", "agreed", "<init>", "(Ljava/lang/String;Z)V", "Ljava/lang/String;", "getTag", "()Ljava/lang/String;", "Z", "getAgreed", "()Z", "user_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class RevokedServiceTerms {
    private final boolean agreed;
    private final String tag;

    public RevokedServiceTerms(String str, boolean z) {
        str.getClass();
        this.tag = str;
        this.agreed = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RevokedServiceTerms)) {
            return false;
        }
        RevokedServiceTerms revokedServiceTerms = (RevokedServiceTerms) obj;
        return Intrinsics.c(this.tag, revokedServiceTerms.tag) && this.agreed == revokedServiceTerms.agreed;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    public final int hashCode() {
        int iHashCode = this.tag.hashCode() * 31;
        boolean z = this.agreed;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return iHashCode + r1;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RevokedServiceTerms(tag=");
        sb.append(this.tag);
        sb.append(", agreed=");
        return d21.q(sb, this.agreed, ')');
    }
}
