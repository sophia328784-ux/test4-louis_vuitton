package com.kakao.sdk.user.model;

import com.batch.android.s.b;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001f\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/kakao/sdk/user/model/UserServiceTerms;", "", "", b.a.f24015b, "", "Lcom/kakao/sdk/user/model/ServiceTerms;", "serviceTerms", "<init>", "(JLjava/util/List;)V", "J", "getId", "()J", "Ljava/util/List;", "getServiceTerms", "()Ljava/util/List;", "user_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class UserServiceTerms {
    private final long id;
    private final List<ServiceTerms> serviceTerms;

    public UserServiceTerms(long j2, List<ServiceTerms> list) {
        this.id = j2;
        this.serviceTerms = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UserServiceTerms)) {
            return false;
        }
        UserServiceTerms userServiceTerms = (UserServiceTerms) obj;
        return this.id == userServiceTerms.id && Intrinsics.c(this.serviceTerms, userServiceTerms.serviceTerms);
    }

    public final int hashCode() {
        int iHashCode = Long.hashCode(this.id) * 31;
        List<ServiceTerms> list = this.serviceTerms;
        return iHashCode + (list == null ? 0 : list.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("UserServiceTerms(id=");
        sb.append(this.id);
        sb.append(", serviceTerms=");
        return tr.m(sb, this.serviceTerms, ')');
    }
}
