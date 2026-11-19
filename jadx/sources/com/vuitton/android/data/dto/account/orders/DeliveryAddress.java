package com.vuitton.android.data.dto.account.orders;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012Bg\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000b\u0010\fBk\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u000b\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/data/dto/account/orders/DeliveryAddress;", "", "", "province", "postalCode", "country", "city", "address4", "address3", "address2", "address1", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class DeliveryAddress {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44337a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44338b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44339c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f44340e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f44341f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f44342h;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/account/orders/DeliveryAddress$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/account/orders/DeliveryAddress;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<DeliveryAddress> serializer() {
            return DeliveryAddress$$serializer.f44343a;
        }
    }

    public /* synthetic */ DeliveryAddress(int i2, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f44337a = null;
        } else {
            this.f44337a = str;
        }
        if ((i2 & 2) == 0) {
            this.f44338b = null;
        } else {
            this.f44338b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f44339c = null;
        } else {
            this.f44339c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str4;
        }
        if ((i2 & 16) == 0) {
            this.f44340e = null;
        } else {
            this.f44340e = str5;
        }
        if ((i2 & 32) == 0) {
            this.f44341f = null;
        } else {
            this.f44341f = str6;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = str7;
        }
        if ((i2 & 128) == 0) {
            this.f44342h = null;
        } else {
            this.f44342h = str8;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeliveryAddress)) {
            return false;
        }
        DeliveryAddress deliveryAddress = (DeliveryAddress) obj;
        return Intrinsics.c(this.f44337a, deliveryAddress.f44337a) && Intrinsics.c(this.f44338b, deliveryAddress.f44338b) && Intrinsics.c(this.f44339c, deliveryAddress.f44339c) && Intrinsics.c(this.d, deliveryAddress.d) && Intrinsics.c(this.f44340e, deliveryAddress.f44340e) && Intrinsics.c(this.f44341f, deliveryAddress.f44341f) && Intrinsics.c(this.g, deliveryAddress.g) && Intrinsics.c(this.f44342h, deliveryAddress.f44342h);
    }

    public final int hashCode() {
        String str = this.f44337a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f44338b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f44339c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f44340e;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f44341f;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.g;
        int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.f44342h;
        return iHashCode7 + (str8 != null ? str8.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("DeliveryAddress(province=", this.f44337a, ", postalCode=", this.f44338b, ", country=");
        cj.C(sbS, this.f44339c, ", city=", this.d, ", address4=");
        cj.C(sbS, this.f44340e, ", address3=", this.f44341f, ", address2=");
        return tr.l(sbS, this.g, ", address1=", this.f44342h, ")");
    }

    public DeliveryAddress() {
        this((String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, 255, (DefaultConstructorMarker) null);
    }

    public DeliveryAddress(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        this.f44337a = str;
        this.f44338b = str2;
        this.f44339c = str3;
        this.d = str4;
        this.f44340e = str5;
        this.f44341f = str6;
        this.g = str7;
        this.f44342h = str8;
    }

    public /* synthetic */ DeliveryAddress(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : str5, (i2 & 32) != 0 ? null : str6, (i2 & 64) != 0 ? null : str7, (i2 & 128) != 0 ? null : str8);
    }
}
