package com.vuitton.android.data.dto.certificate;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.linktype.ContributionLinkLegacyDto;
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
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00152\u00020\u0001:\u0002\u0016\u0015B\u007f\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000e\u0010\u000fB\u007f\b\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u000e\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDataDto;", "", "", "cxid", "currentOwnerId", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;", "journeyLink", "purchaseDate", "purchaseStore", "formattedDimensionValue", "productionDate", "productionSite", "material", "metallicPart", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CertificateVisionnaireDataDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45204a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45205b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ContributionLinkLegacyDto f45206c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f45207e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f45208f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f45209h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f45210i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f45211j;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDataDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDataDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CertificateVisionnaireDataDto> serializer() {
            return CertificateVisionnaireDataDto$$serializer.f45212a;
        }
    }

    public /* synthetic */ CertificateVisionnaireDataDto(int i2, String str, String str2, ContributionLinkLegacyDto contributionLinkLegacyDto, String str3, String str4, String str5, String str6, String str7, String str8, String str9, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f45204a = null;
        } else {
            this.f45204a = str;
        }
        if ((i2 & 2) == 0) {
            this.f45205b = null;
        } else {
            this.f45205b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f45206c = null;
        } else {
            this.f45206c = contributionLinkLegacyDto;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str3;
        }
        if ((i2 & 16) == 0) {
            this.f45207e = null;
        } else {
            this.f45207e = str4;
        }
        if ((i2 & 32) == 0) {
            this.f45208f = null;
        } else {
            this.f45208f = str5;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = str6;
        }
        if ((i2 & 128) == 0) {
            this.f45209h = null;
        } else {
            this.f45209h = str7;
        }
        if ((i2 & 256) == 0) {
            this.f45210i = null;
        } else {
            this.f45210i = str8;
        }
        if ((i2 & 512) == 0) {
            this.f45211j = null;
        } else {
            this.f45211j = str9;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CertificateVisionnaireDataDto)) {
            return false;
        }
        CertificateVisionnaireDataDto certificateVisionnaireDataDto = (CertificateVisionnaireDataDto) obj;
        return Intrinsics.c(this.f45204a, certificateVisionnaireDataDto.f45204a) && Intrinsics.c(this.f45205b, certificateVisionnaireDataDto.f45205b) && Intrinsics.c(this.f45206c, certificateVisionnaireDataDto.f45206c) && Intrinsics.c(this.d, certificateVisionnaireDataDto.d) && Intrinsics.c(this.f45207e, certificateVisionnaireDataDto.f45207e) && Intrinsics.c(this.f45208f, certificateVisionnaireDataDto.f45208f) && Intrinsics.c(this.g, certificateVisionnaireDataDto.g) && Intrinsics.c(this.f45209h, certificateVisionnaireDataDto.f45209h) && Intrinsics.c(this.f45210i, certificateVisionnaireDataDto.f45210i) && Intrinsics.c(this.f45211j, certificateVisionnaireDataDto.f45211j);
    }

    public final int hashCode() {
        String str = this.f45204a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f45205b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        ContributionLinkLegacyDto contributionLinkLegacyDto = this.f45206c;
        int iHashCode3 = (iHashCode2 + (contributionLinkLegacyDto == null ? 0 : contributionLinkLegacyDto.hashCode())) * 31;
        String str3 = this.d;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f45207e;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f45208f;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.g;
        int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.f45209h;
        int iHashCode8 = (iHashCode7 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.f45210i;
        int iHashCode9 = (iHashCode8 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.f45211j;
        return iHashCode9 + (str9 != null ? str9.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("CertificateVisionnaireDataDto(cxid=", this.f45204a, ", currentOwnerId=", this.f45205b, ", journeyLink=");
        sbS.append(this.f45206c);
        sbS.append(", purchaseDate=");
        sbS.append(this.d);
        sbS.append(", purchaseStore=");
        cj.C(sbS, this.f45207e, ", formattedDimensionValue=", this.f45208f, ", productionDate=");
        cj.C(sbS, this.g, ", productionSite=", this.f45209h, ", material=");
        return tr.l(sbS, this.f45210i, ", metallicPart=", this.f45211j, ")");
    }

    public CertificateVisionnaireDataDto() {
        this((String) null, (String) null, (ContributionLinkLegacyDto) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, 1023, (DefaultConstructorMarker) null);
    }

    public CertificateVisionnaireDataDto(String str, String str2, ContributionLinkLegacyDto contributionLinkLegacyDto, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        this.f45204a = str;
        this.f45205b = str2;
        this.f45206c = contributionLinkLegacyDto;
        this.d = str3;
        this.f45207e = str4;
        this.f45208f = str5;
        this.g = str6;
        this.f45209h = str7;
        this.f45210i = str8;
        this.f45211j = str9;
    }

    public /* synthetic */ CertificateVisionnaireDataDto(String str, String str2, ContributionLinkLegacyDto contributionLinkLegacyDto, String str3, String str4, String str5, String str6, String str7, String str8, String str9, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : contributionLinkLegacyDto, (i2 & 8) != 0 ? null : str3, (i2 & 16) != 0 ? null : str4, (i2 & 32) != 0 ? null : str5, (i2 & 64) != 0 ? null : str6, (i2 & 128) != 0 ? null : str7, (i2 & 256) != 0 ? null : str8, (i2 & 512) != 0 ? null : str9);
    }
}
