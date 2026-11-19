package com.vuitton.android.data.dto.account.orders;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011BK\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bBW\b\u0010\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\n\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/data/dto/account/orders/DeliveryDto;", "", "", "name", "date", "storeName", "trackingLink", "additionalInformation", "Lcom/vuitton/android/data/dto/account/orders/DeliveryAddress;", "address", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/account/orders/DeliveryAddress;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/account/orders/DeliveryAddress;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class DeliveryDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44344a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44345b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44346c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f44347e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final DeliveryAddress f44348f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/account/orders/DeliveryDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/account/orders/DeliveryDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<DeliveryDto> serializer() {
            return DeliveryDto$$serializer.f44349a;
        }
    }

    public /* synthetic */ DeliveryDto(int i2, String str, String str2, String str3, String str4, String str5, DeliveryAddress deliveryAddress, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, DeliveryDto$$serializer.f44349a.getF19838b());
            throw null;
        }
        this.f44344a = str;
        if ((i2 & 2) == 0) {
            this.f44345b = null;
        } else {
            this.f44345b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f44346c = null;
        } else {
            this.f44346c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str4;
        }
        if ((i2 & 16) == 0) {
            this.f44347e = null;
        } else {
            this.f44347e = str5;
        }
        if ((i2 & 32) == 0) {
            this.f44348f = null;
        } else {
            this.f44348f = deliveryAddress;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeliveryDto)) {
            return false;
        }
        DeliveryDto deliveryDto = (DeliveryDto) obj;
        return Intrinsics.c(this.f44344a, deliveryDto.f44344a) && Intrinsics.c(this.f44345b, deliveryDto.f44345b) && Intrinsics.c(this.f44346c, deliveryDto.f44346c) && Intrinsics.c(this.d, deliveryDto.d) && Intrinsics.c(this.f44347e, deliveryDto.f44347e) && Intrinsics.c(this.f44348f, deliveryDto.f44348f);
    }

    public final int hashCode() {
        int iHashCode = this.f44344a.hashCode() * 31;
        String str = this.f44345b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f44346c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.d;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f44347e;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        DeliveryAddress deliveryAddress = this.f44348f;
        return iHashCode5 + (deliveryAddress != null ? deliveryAddress.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("DeliveryDto(name=", this.f44344a, ", date=", this.f44345b, ", storeName=");
        cj.C(sbS, this.f44346c, ", trackingLink=", this.d, ", additionalInformation=");
        sbS.append(this.f44347e);
        sbS.append(", address=");
        sbS.append(this.f44348f);
        sbS.append(")");
        return sbS.toString();
    }

    public DeliveryDto(String str, String str2, String str3, String str4, String str5, DeliveryAddress deliveryAddress) {
        str.getClass();
        this.f44344a = str;
        this.f44345b = str2;
        this.f44346c = str3;
        this.d = str4;
        this.f44347e = str5;
        this.f44348f = deliveryAddress;
    }

    public /* synthetic */ DeliveryDto(String str, String str2, String str3, String str4, String str5, DeliveryAddress deliveryAddress, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : str5, (i2 & 32) != 0 ? null : deliveryAddress);
    }
}
