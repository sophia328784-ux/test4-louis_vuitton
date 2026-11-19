package com.vuitton.android.data.dto.pdp;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\tBC\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/CustomizationInformationDto;", "", "", "value", "title", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "image", "color", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CustomizationInformationDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46186a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46187b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetImageDto f46188c;
    public final String d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/CustomizationInformationDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/pdp/CustomizationInformationDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CustomizationInformationDto> serializer() {
            return CustomizationInformationDto$$serializer.f46189a;
        }
    }

    public /* synthetic */ CustomizationInformationDto(int i2, String str, String str2, AssetImageDto assetImageDto, String str3, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, CustomizationInformationDto$$serializer.f46189a.getF19850b());
            throw null;
        }
        this.f46186a = str;
        if ((i2 & 2) == 0) {
            this.f46187b = null;
        } else {
            this.f46187b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f46188c = null;
        } else {
            this.f46188c = assetImageDto;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str3;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CustomizationInformationDto)) {
            return false;
        }
        CustomizationInformationDto customizationInformationDto = (CustomizationInformationDto) obj;
        return Intrinsics.c(this.f46186a, customizationInformationDto.f46186a) && Intrinsics.c(this.f46187b, customizationInformationDto.f46187b) && Intrinsics.c(this.f46188c, customizationInformationDto.f46188c) && Intrinsics.c(this.d, customizationInformationDto.d);
    }

    public final int hashCode() {
        int iHashCode = this.f46186a.hashCode() * 31;
        String str = this.f46187b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        AssetImageDto assetImageDto = this.f46188c;
        int iHashCode3 = (iHashCode2 + (assetImageDto == null ? 0 : assetImageDto.hashCode())) * 31;
        String str2 = this.d;
        return iHashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("CustomizationInformationDto(value=", this.f46186a, ", title=", this.f46187b, ", image=");
        sbS.append(this.f46188c);
        sbS.append(", color=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }

    public CustomizationInformationDto(String str, String str2, AssetImageDto assetImageDto, String str3) {
        str.getClass();
        this.f46186a = str;
        this.f46187b = str2;
        this.f46188c = assetImageDto;
        this.d = str3;
    }

    public /* synthetic */ CustomizationInformationDto(String str, String str2, AssetImageDto assetImageDto, String str3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : assetImageDto, (i2 & 8) != 0 ? null : str3);
    }
}
