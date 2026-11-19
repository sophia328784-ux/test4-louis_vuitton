package com.kakao.sdk.user.model;

import com.google.gson.annotations.SerializedName;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\r\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\u0004\b\t\u0010\nR\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u000b\u001a\u0004\b\f\u0010\rR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001f\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b\b\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/kakao/sdk/user/model/UserShippingAddresses;", "", "", "userId", "", "needsAgreement", "", "Lcom/kakao/sdk/user/model/ShippingAddress;", "shippingAddresses", "<init>", "(Ljava/lang/Long;Ljava/lang/Boolean;Ljava/util/List;)V", "Ljava/lang/Long;", "getUserId", "()Ljava/lang/Long;", "Ljava/lang/Boolean;", "getNeedsAgreement", "()Ljava/lang/Boolean;", "Ljava/util/List;", "getShippingAddresses", "()Ljava/util/List;", "user_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class UserShippingAddresses {

    @SerializedName("shipping_addresses_needs_agreement")
    private final Boolean needsAgreement;
    private final List<ShippingAddress> shippingAddresses;
    private final Long userId;

    public UserShippingAddresses(Long l, Boolean bool, List<ShippingAddress> list) {
        this.userId = l;
        this.needsAgreement = bool;
        this.shippingAddresses = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UserShippingAddresses)) {
            return false;
        }
        UserShippingAddresses userShippingAddresses = (UserShippingAddresses) obj;
        return Intrinsics.c(this.userId, userShippingAddresses.userId) && Intrinsics.c(this.needsAgreement, userShippingAddresses.needsAgreement) && Intrinsics.c(this.shippingAddresses, userShippingAddresses.shippingAddresses);
    }

    public final int hashCode() {
        Long l = this.userId;
        int iHashCode = (l == null ? 0 : l.hashCode()) * 31;
        Boolean bool = this.needsAgreement;
        int iHashCode2 = (iHashCode + (bool == null ? 0 : bool.hashCode())) * 31;
        List<ShippingAddress> list = this.shippingAddresses;
        return iHashCode2 + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("UserShippingAddresses(userId=");
        sb.append(this.userId);
        sb.append(", needsAgreement=");
        sb.append(this.needsAgreement);
        sb.append(", shippingAddresses=");
        return tr.m(sb, this.shippingAddresses, ')');
    }
}
