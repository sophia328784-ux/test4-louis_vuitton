package com.kakao.sdk.user.model;

import com.batch.android.s.b;
import com.google.gson.annotations.JsonAdapter;
import com.kakao.sdk.common.json.KakaoIntDateTypeAdapter;
import defpackage.fc;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b \b\u0086\b\u0018\u00002\u00020\u0001B{\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0013\u0010\u0014R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u001b\u001a\u0004\b\u0007\u0010\u001cR\u001c\u0010\t\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\t\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0019\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010 \u001a\u0004\b!\u0010\"R\u0019\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\f\u0010\u0018\u001a\u0004\b#\u0010\u001aR\u0019\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\r\u0010\u0018\u001a\u0004\b$\u0010\u001aR\u0019\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u0018\u001a\u0004\b%\u0010\u001aR\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0018\u001a\u0004\b&\u0010\u001aR\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0018\u001a\u0004\b'\u0010\u001aR\u0019\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0018\u001a\u0004\b(\u0010\u001aR\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0018\u001a\u0004\b)\u0010\u001a¨\u0006*"}, d2 = {"Lcom/kakao/sdk/user/model/ShippingAddress;", "", "", b.a.f24015b, "", "name", "", "isDefault", "Ljava/util/Date;", "updatedAt", "Lcom/kakao/sdk/user/model/ShippingAddressType;", "type", "baseAddress", "detailAddress", "receiverName", "receiverPhoneNumber1", "receiverPhoneNumber2", "zoneNumber", "zipCode", "<init>", "(JLjava/lang/String;ZLjava/util/Date;Lcom/kakao/sdk/user/model/ShippingAddressType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "J", "getId", "()J", "Ljava/lang/String;", "getName", "()Ljava/lang/String;", "Z", "()Z", "Ljava/util/Date;", "getUpdatedAt", "()Ljava/util/Date;", "Lcom/kakao/sdk/user/model/ShippingAddressType;", "getType", "()Lcom/kakao/sdk/user/model/ShippingAddressType;", "getBaseAddress", "getDetailAddress", "getReceiverName", "getReceiverPhoneNumber1", "getReceiverPhoneNumber2", "getZoneNumber", "getZipCode", "user_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class ShippingAddress {
    private final String baseAddress;
    private final String detailAddress;
    private final long id;
    private final boolean isDefault;
    private final String name;
    private final String receiverName;
    private final String receiverPhoneNumber1;
    private final String receiverPhoneNumber2;
    private final ShippingAddressType type;

    @JsonAdapter(KakaoIntDateTypeAdapter.class)
    private final Date updatedAt;
    private final String zipCode;
    private final String zoneNumber;

    public ShippingAddress(long j2, String str, boolean z, Date date, ShippingAddressType shippingAddressType, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        this.id = j2;
        this.name = str;
        this.isDefault = z;
        this.updatedAt = date;
        this.type = shippingAddressType;
        this.baseAddress = str2;
        this.detailAddress = str3;
        this.receiverName = str4;
        this.receiverPhoneNumber1 = str5;
        this.receiverPhoneNumber2 = str6;
        this.zoneNumber = str7;
        this.zipCode = str8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShippingAddress)) {
            return false;
        }
        ShippingAddress shippingAddress = (ShippingAddress) obj;
        return this.id == shippingAddress.id && Intrinsics.c(this.name, shippingAddress.name) && this.isDefault == shippingAddress.isDefault && Intrinsics.c(this.updatedAt, shippingAddress.updatedAt) && this.type == shippingAddress.type && Intrinsics.c(this.baseAddress, shippingAddress.baseAddress) && Intrinsics.c(this.detailAddress, shippingAddress.detailAddress) && Intrinsics.c(this.receiverName, shippingAddress.receiverName) && Intrinsics.c(this.receiverPhoneNumber1, shippingAddress.receiverPhoneNumber1) && Intrinsics.c(this.receiverPhoneNumber2, shippingAddress.receiverPhoneNumber2) && Intrinsics.c(this.zoneNumber, shippingAddress.zoneNumber) && Intrinsics.c(this.zipCode, shippingAddress.zipCode);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r1v37 */
    /* JADX WARN: Type inference failed for: r1v39 */
    /* JADX WARN: Type inference failed for: r1v4, types: [int] */
    public final int hashCode() {
        int iHashCode = Long.hashCode(this.id) * 31;
        String str = this.name;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        boolean z = this.isDefault;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        int i2 = (iHashCode2 + r1) * 31;
        Date date = this.updatedAt;
        int iHashCode3 = (i2 + (date == null ? 0 : date.hashCode())) * 31;
        ShippingAddressType shippingAddressType = this.type;
        int iHashCode4 = (iHashCode3 + (shippingAddressType == null ? 0 : shippingAddressType.hashCode())) * 31;
        String str2 = this.baseAddress;
        int iHashCode5 = (iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.detailAddress;
        int iHashCode6 = (iHashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.receiverName;
        int iHashCode7 = (iHashCode6 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.receiverPhoneNumber1;
        int iHashCode8 = (iHashCode7 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.receiverPhoneNumber2;
        int iHashCode9 = (iHashCode8 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.zoneNumber;
        int iHashCode10 = (iHashCode9 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.zipCode;
        return iHashCode10 + (str8 != null ? str8.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ShippingAddress(id=");
        sb.append(this.id);
        sb.append(", name=");
        sb.append(this.name);
        sb.append(", isDefault=");
        sb.append(this.isDefault);
        sb.append(", updatedAt=");
        sb.append(this.updatedAt);
        sb.append(", type=");
        sb.append(this.type);
        sb.append(", baseAddress=");
        sb.append(this.baseAddress);
        sb.append(", detailAddress=");
        sb.append(this.detailAddress);
        sb.append(", receiverName=");
        sb.append(this.receiverName);
        sb.append(", receiverPhoneNumber1=");
        sb.append(this.receiverPhoneNumber1);
        sb.append(", receiverPhoneNumber2=");
        sb.append(this.receiverPhoneNumber2);
        sb.append(", zoneNumber=");
        sb.append(this.zoneNumber);
        sb.append(", zipCode=");
        return fc.l(sb, this.zipCode, ')');
    }
}
