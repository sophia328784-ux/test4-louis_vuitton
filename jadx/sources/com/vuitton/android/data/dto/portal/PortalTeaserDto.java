package com.vuitton.android.data.dto.portal;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import defpackage.cj;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012BG\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fBW\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u000b\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/data/dto/portal/PortalTeaserDto;", "", "", "eventStartStringDateInUTC", "Lcom/vuitton/android/data/dto/common/AssetDto;", "asset", "title", "surtitle", "description", "Lcom/vuitton/android/data/dto/portal/PortalCtaDto;", "cta", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/portal/PortalCtaDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/portal/PortalCtaDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class PortalTeaserDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46409a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AssetDto f46410b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46411c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f46412e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final PortalCtaDto f46413f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/portal/PortalTeaserDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/portal/PortalTeaserDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<PortalTeaserDto> serializer() {
            return PortalTeaserDto$$serializer.f46414a;
        }
    }

    public /* synthetic */ PortalTeaserDto(int i2, String str, AssetDto assetDto, String str2, String str3, String str4, PortalCtaDto portalCtaDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, PortalTeaserDto$$serializer.f46414a.getF19838b());
            throw null;
        }
        this.f46409a = str;
        this.f46410b = assetDto;
        if ((i2 & 4) == 0) {
            this.f46411c = null;
        } else {
            this.f46411c = str2;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str3;
        }
        if ((i2 & 16) == 0) {
            this.f46412e = null;
        } else {
            this.f46412e = str4;
        }
        if ((i2 & 32) == 0) {
            this.f46413f = null;
        } else {
            this.f46413f = portalCtaDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PortalTeaserDto)) {
            return false;
        }
        PortalTeaserDto portalTeaserDto = (PortalTeaserDto) obj;
        return Intrinsics.c(this.f46409a, portalTeaserDto.f46409a) && Intrinsics.c(this.f46410b, portalTeaserDto.f46410b) && Intrinsics.c(this.f46411c, portalTeaserDto.f46411c) && Intrinsics.c(this.d, portalTeaserDto.d) && Intrinsics.c(this.f46412e, portalTeaserDto.f46412e) && Intrinsics.c(this.f46413f, portalTeaserDto.f46413f);
    }

    public final int hashCode() {
        int iHashCode = (this.f46410b.hashCode() + (this.f46409a.hashCode() * 31)) * 31;
        String str = this.f46411c;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f46412e;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        PortalCtaDto portalCtaDto = this.f46413f;
        return iHashCode4 + (portalCtaDto != null ? portalCtaDto.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PortalTeaserDto(eventStartStringDateInUTC=");
        sb.append(this.f46409a);
        sb.append(", asset=");
        sb.append(this.f46410b);
        sb.append(", title=");
        cj.C(sb, this.f46411c, ", surtitle=", this.d, ", description=");
        sb.append(this.f46412e);
        sb.append(", cta=");
        sb.append(this.f46413f);
        sb.append(")");
        return sb.toString();
    }

    public PortalTeaserDto(String str, AssetDto assetDto, String str2, String str3, String str4, PortalCtaDto portalCtaDto) {
        str.getClass();
        assetDto.getClass();
        this.f46409a = str;
        this.f46410b = assetDto;
        this.f46411c = str2;
        this.d = str3;
        this.f46412e = str4;
        this.f46413f = portalCtaDto;
    }

    public /* synthetic */ PortalTeaserDto(String str, AssetDto assetDto, String str2, String str3, String str4, PortalCtaDto portalCtaDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, assetDto, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : str3, (i2 & 16) != 0 ? null : str4, (i2 & 32) != 0 ? null : portalCtaDto);
    }
}
