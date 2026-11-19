package com.vuitton.android.data.dto.certificate.diamond;

import android.os.Parcel;
import android.os.Parcelable;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB+\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007B9\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/certificate/diamond/CertificateDiamondItemDto;", "Landroid/os/Parcelable;", "", "carat", "color", "clarity", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CertificateDiamondItemDto implements Parcelable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45231b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45232c;
    public final String d;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Parcelable.Creator<CertificateDiamondItemDto> CREATOR = new Creator();

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/certificate/diamond/CertificateDiamondItemDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/certificate/diamond/CertificateDiamondItemDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CertificateDiamondItemDto> serializer() {
            return CertificateDiamondItemDto$$serializer.f45233a;
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CertificateDiamondItemDto> {
        @Override // android.os.Parcelable.Creator
        public final CertificateDiamondItemDto createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new CertificateDiamondItemDto(parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final CertificateDiamondItemDto[] newArray(int i2) {
            return new CertificateDiamondItemDto[i2];
        }
    }

    public /* synthetic */ CertificateDiamondItemDto(int i2, String str, String str2, String str3, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f45231b = null;
        } else {
            this.f45231b = str;
        }
        if ((i2 & 2) == 0) {
            this.f45232c = null;
        } else {
            this.f45232c = str2;
        }
        if ((i2 & 4) == 0) {
            this.d = null;
        } else {
            this.d = str3;
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CertificateDiamondItemDto)) {
            return false;
        }
        CertificateDiamondItemDto certificateDiamondItemDto = (CertificateDiamondItemDto) obj;
        return Intrinsics.c(this.f45231b, certificateDiamondItemDto.f45231b) && Intrinsics.c(this.f45232c, certificateDiamondItemDto.f45232c) && Intrinsics.c(this.d, certificateDiamondItemDto.d);
    }

    public final int hashCode() {
        String str = this.f45231b;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f45232c;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.d;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        return n00.r(this.d, ")", fc.s("CertificateDiamondItemDto(carat=", this.f45231b, ", color=", this.f45232c, ", clarity="));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f45231b);
        parcel.writeString(this.f45232c);
        parcel.writeString(this.d);
    }

    public CertificateDiamondItemDto() {
        this((String) null, (String) null, (String) null, 7, (DefaultConstructorMarker) null);
    }

    public CertificateDiamondItemDto(String str, String str2, String str3) {
        this.f45231b = str;
        this.f45232c = str2;
        this.d = str3;
    }

    public /* synthetic */ CertificateDiamondItemDto(String str, String str2, String str3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3);
    }
}
