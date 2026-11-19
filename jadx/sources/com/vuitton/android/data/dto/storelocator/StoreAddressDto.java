package com.vuitton.android.data.dto.storelocator;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB?\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\tBM\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/storelocator/StoreAddressDto;", "", "", "street", "city", "state", "country", "zipcode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class StoreAddressDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46830a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46831b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46832c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f46833e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/storelocator/StoreAddressDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/storelocator/StoreAddressDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<StoreAddressDto> serializer() {
            return StoreAddressDto$$serializer.f46834a;
        }
    }

    public /* synthetic */ StoreAddressDto(int i2, String str, String str2, String str3, String str4, String str5, SerializationConstructorMarker serializationConstructorMarker) {
        if (8 != (i2 & 8)) {
            PluginExceptionsKt.b(i2, 8, StoreAddressDto$$serializer.f46834a.getF19838b());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f46830a = null;
        } else {
            this.f46830a = str;
        }
        if ((i2 & 2) == 0) {
            this.f46831b = null;
        } else {
            this.f46831b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f46832c = null;
        } else {
            this.f46832c = str3;
        }
        this.d = str4;
        if ((i2 & 16) == 0) {
            this.f46833e = null;
        } else {
            this.f46833e = str5;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StoreAddressDto)) {
            return false;
        }
        StoreAddressDto storeAddressDto = (StoreAddressDto) obj;
        return Intrinsics.c(this.f46830a, storeAddressDto.f46830a) && Intrinsics.c(this.f46831b, storeAddressDto.f46831b) && Intrinsics.c(this.f46832c, storeAddressDto.f46832c) && Intrinsics.c(this.d, storeAddressDto.d) && Intrinsics.c(this.f46833e, storeAddressDto.f46833e);
    }

    public final int hashCode() {
        String str = this.f46830a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f46831b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f46832c;
        int iB = fc.b((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31, 31, this.d);
        String str4 = this.f46833e;
        return iB + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("StoreAddressDto(street=", this.f46830a, ", city=", this.f46831b, ", state=");
        cj.C(sbS, this.f46832c, ", country=", this.d, ", zipcode=");
        return n00.r(this.f46833e, ")", sbS);
    }

    public StoreAddressDto(String str, String str2, String str3, String str4, String str5) {
        str4.getClass();
        this.f46830a = str;
        this.f46831b = str2;
        this.f46832c = str3;
        this.d = str4;
        this.f46833e = str5;
    }

    public /* synthetic */ StoreAddressDto(String str, String str2, String str3, String str4, String str5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, str4, (i2 & 16) != 0 ? null : str5);
    }
}
