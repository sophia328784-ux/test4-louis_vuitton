package com.vuitton.android.data.dto.pdp;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import defpackage.oo;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fBM\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u000b\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/ConfigurationDto;", "", "", "configuratorUrl", "Lcom/vuitton/android/data/dto/pdp/CustomizationConfigurationDto;", "currentConfiguration", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "image", "tag", "Lcom/vuitton/android/data/dto/pdp/CustomizationTypeDto;", "type", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/pdp/CustomizationConfigurationDto;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/pdp/CustomizationTypeDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/pdp/CustomizationConfigurationDto;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/pdp/CustomizationTypeDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ConfigurationDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Lazy[] f46174f = {null, null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new oo(27))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46175a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CustomizationConfigurationDto f46176b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetImageDto f46177c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CustomizationTypeDto f46178e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/ConfigurationDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/pdp/ConfigurationDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ConfigurationDto> serializer() {
            return ConfigurationDto$$serializer.f46179a;
        }
    }

    public /* synthetic */ ConfigurationDto(int i2, String str, CustomizationConfigurationDto customizationConfigurationDto, AssetImageDto assetImageDto, String str2, CustomizationTypeDto customizationTypeDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (21 != (i2 & 21)) {
            PluginExceptionsKt.b(i2, 21, ConfigurationDto$$serializer.f46179a.a());
            throw null;
        }
        this.f46175a = str;
        if ((i2 & 2) == 0) {
            this.f46176b = null;
        } else {
            this.f46176b = customizationConfigurationDto;
        }
        this.f46177c = assetImageDto;
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str2;
        }
        this.f46178e = customizationTypeDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConfigurationDto)) {
            return false;
        }
        ConfigurationDto configurationDto = (ConfigurationDto) obj;
        return Intrinsics.c(this.f46175a, configurationDto.f46175a) && Intrinsics.c(this.f46176b, configurationDto.f46176b) && Intrinsics.c(this.f46177c, configurationDto.f46177c) && Intrinsics.c(this.d, configurationDto.d) && this.f46178e == configurationDto.f46178e;
    }

    public final int hashCode() {
        int iHashCode = this.f46175a.hashCode() * 31;
        CustomizationConfigurationDto customizationConfigurationDto = this.f46176b;
        int iHashCode2 = (this.f46177c.hashCode() + ((iHashCode + (customizationConfigurationDto == null ? 0 : customizationConfigurationDto.hashCode())) * 31)) * 31;
        String str = this.d;
        return this.f46178e.hashCode() + ((iHashCode2 + (str != null ? str.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "ConfigurationDto(configuratorUrl=" + this.f46175a + ", currentConfiguration=" + this.f46176b + ", image=" + this.f46177c + ", tag=" + this.d + ", type=" + this.f46178e + ")";
    }

    public ConfigurationDto(String str, CustomizationConfigurationDto customizationConfigurationDto, AssetImageDto assetImageDto, String str2, CustomizationTypeDto customizationTypeDto) {
        str.getClass();
        assetImageDto.getClass();
        customizationTypeDto.getClass();
        this.f46175a = str;
        this.f46176b = customizationConfigurationDto;
        this.f46177c = assetImageDto;
        this.d = str2;
        this.f46178e = customizationTypeDto;
    }

    public /* synthetic */ ConfigurationDto(String str, CustomizationConfigurationDto customizationConfigurationDto, AssetImageDto assetImageDto, String str2, CustomizationTypeDto customizationTypeDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : customizationConfigurationDto, assetImageDto, (i2 & 8) != 0 ? null : str2, customizationTypeDto);
    }
}
