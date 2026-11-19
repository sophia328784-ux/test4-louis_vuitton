package com.vuitton.android.data.dto.portal;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013BK\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\rBW\b\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\f\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/data/dto/portal/PortalDataDto;", "", "", "title", "surtitle", "description", "Lcom/vuitton/android/data/dto/common/AssetDto;", "asset", "Lcom/vuitton/android/data/dto/portal/PortalCtaDto;", "cta", "Lcom/vuitton/android/data/dto/portal/PortalTeaserDto;", "teaser", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/portal/PortalCtaDto;Lcom/vuitton/android/data/dto/portal/PortalTeaserDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/portal/PortalCtaDto;Lcom/vuitton/android/data/dto/portal/PortalTeaserDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class PortalDataDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46397a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46398b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46399c;
    public final AssetDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PortalCtaDto f46400e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final PortalTeaserDto f46401f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/portal/PortalDataDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/portal/PortalDataDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<PortalDataDto> serializer() {
            return PortalDataDto$$serializer.f46402a;
        }
    }

    public /* synthetic */ PortalDataDto(int i2, String str, String str2, String str3, AssetDto assetDto, PortalCtaDto portalCtaDto, PortalTeaserDto portalTeaserDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (8 != (i2 & 8)) {
            PluginExceptionsKt.b(i2, 8, PortalDataDto$$serializer.f46402a.getF19850b());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f46397a = null;
        } else {
            this.f46397a = str;
        }
        if ((i2 & 2) == 0) {
            this.f46398b = null;
        } else {
            this.f46398b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f46399c = null;
        } else {
            this.f46399c = str3;
        }
        this.d = assetDto;
        if ((i2 & 16) == 0) {
            this.f46400e = null;
        } else {
            this.f46400e = portalCtaDto;
        }
        if ((i2 & 32) == 0) {
            this.f46401f = null;
        } else {
            this.f46401f = portalTeaserDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PortalDataDto)) {
            return false;
        }
        PortalDataDto portalDataDto = (PortalDataDto) obj;
        return Intrinsics.c(this.f46397a, portalDataDto.f46397a) && Intrinsics.c(this.f46398b, portalDataDto.f46398b) && Intrinsics.c(this.f46399c, portalDataDto.f46399c) && Intrinsics.c(this.d, portalDataDto.d) && Intrinsics.c(this.f46400e, portalDataDto.f46400e) && Intrinsics.c(this.f46401f, portalDataDto.f46401f);
    }

    public final int hashCode() {
        String str = this.f46397a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f46398b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f46399c;
        int iHashCode3 = (this.d.hashCode() + ((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31)) * 31;
        PortalCtaDto portalCtaDto = this.f46400e;
        int iHashCode4 = (iHashCode3 + (portalCtaDto == null ? 0 : portalCtaDto.hashCode())) * 31;
        PortalTeaserDto portalTeaserDto = this.f46401f;
        return iHashCode4 + (portalTeaserDto != null ? portalTeaserDto.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("PortalDataDto(title=", this.f46397a, ", surtitle=", this.f46398b, ", description=");
        sbS.append(this.f46399c);
        sbS.append(", asset=");
        sbS.append(this.d);
        sbS.append(", cta=");
        sbS.append(this.f46400e);
        sbS.append(", teaser=");
        sbS.append(this.f46401f);
        sbS.append(")");
        return sbS.toString();
    }

    public PortalDataDto(String str, String str2, String str3, AssetDto assetDto, PortalCtaDto portalCtaDto, PortalTeaserDto portalTeaserDto) {
        assetDto.getClass();
        this.f46397a = str;
        this.f46398b = str2;
        this.f46399c = str3;
        this.d = assetDto;
        this.f46400e = portalCtaDto;
        this.f46401f = portalTeaserDto;
    }

    public /* synthetic */ PortalDataDto(String str, String str2, String str3, AssetDto assetDto, PortalCtaDto portalCtaDto, PortalTeaserDto portalTeaserDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, assetDto, (i2 & 16) != 0 ? null : portalCtaDto, (i2 & 32) != 0 ? null : portalTeaserDto);
    }
}
