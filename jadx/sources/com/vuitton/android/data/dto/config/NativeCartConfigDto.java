package com.vuitton.android.data.dto.config;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010BC\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\t\u0010\nBM\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/config/NativeCartConfigDto;", "", "", "isApplePayExpress", "", "commercialNotificationText", "commercialNotificationModalTitle", "commercialNotificationModalContent", "checkoutUrl", "<init>", "(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class NativeCartConfigDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Boolean f45422a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45423b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45424c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f45425e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/config/NativeCartConfigDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/config/NativeCartConfigDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<NativeCartConfigDto> serializer() {
            return NativeCartConfigDto$$serializer.f45426a;
        }
    }

    public /* synthetic */ NativeCartConfigDto(int i2, Boolean bool, String str, String str2, String str3, String str4, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f45422a = null;
        } else {
            this.f45422a = bool;
        }
        if ((i2 & 2) == 0) {
            this.f45423b = null;
        } else {
            this.f45423b = str;
        }
        if ((i2 & 4) == 0) {
            this.f45424c = null;
        } else {
            this.f45424c = str2;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str3;
        }
        if ((i2 & 16) == 0) {
            this.f45425e = null;
        } else {
            this.f45425e = str4;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NativeCartConfigDto)) {
            return false;
        }
        NativeCartConfigDto nativeCartConfigDto = (NativeCartConfigDto) obj;
        return Intrinsics.c(this.f45422a, nativeCartConfigDto.f45422a) && Intrinsics.c(this.f45423b, nativeCartConfigDto.f45423b) && Intrinsics.c(this.f45424c, nativeCartConfigDto.f45424c) && Intrinsics.c(this.d, nativeCartConfigDto.d) && Intrinsics.c(this.f45425e, nativeCartConfigDto.f45425e);
    }

    public final int hashCode() {
        Boolean bool = this.f45422a;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        String str = this.f45423b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f45424c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.d;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f45425e;
        return iHashCode4 + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("NativeCartConfigDto(isApplePayExpress=");
        sb.append(this.f45422a);
        sb.append(", commercialNotificationText=");
        sb.append(this.f45423b);
        sb.append(", commercialNotificationModalTitle=");
        cj.C(sb, this.f45424c, ", commercialNotificationModalContent=", this.d, ", checkoutUrl=");
        return n00.r(this.f45425e, ")", sb);
    }

    public NativeCartConfigDto() {
        this((Boolean) null, (String) null, (String) null, (String) null, (String) null, 31, (DefaultConstructorMarker) null);
    }

    public NativeCartConfigDto(Boolean bool, String str, String str2, String str3, String str4) {
        this.f45422a = bool;
        this.f45423b = str;
        this.f45424c = str2;
        this.d = str3;
        this.f45425e = str4;
    }

    public /* synthetic */ NativeCartConfigDto(Boolean bool, String str, String str2, String str3, String str4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : bool, (i2 & 2) != 0 ? null : str, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : str3, (i2 & 16) != 0 ? null : str4);
    }
}
