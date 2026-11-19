package com.vuitton.android.data.dto.pdp;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fBC\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\tBM\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto;", "", "Lcom/vuitton/android/data/dto/pdp/ConfigurationDto;", "hotStamping", "perfumeEngraving", "beautyEngraving", "monogram", "diamondEngraving", "<init>", "(Lcom/vuitton/android/data/dto/pdp/ConfigurationDto;Lcom/vuitton/android/data/dto/pdp/ConfigurationDto;Lcom/vuitton/android/data/dto/pdp/ConfigurationDto;Lcom/vuitton/android/data/dto/pdp/ConfigurationDto;Lcom/vuitton/android/data/dto/pdp/ConfigurationDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/pdp/ConfigurationDto;Lcom/vuitton/android/data/dto/pdp/ConfigurationDto;Lcom/vuitton/android/data/dto/pdp/ConfigurationDto;Lcom/vuitton/android/data/dto/pdp/ConfigurationDto;Lcom/vuitton/android/data/dto/pdp/ConfigurationDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ProductCustomizationDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConfigurationDto f46260a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConfigurationDto f46261b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConfigurationDto f46262c;
    public final ConfigurationDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ConfigurationDto f46263e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ProductCustomizationDto> serializer() {
            return ProductCustomizationDto$$serializer.f46264a;
        }
    }

    public /* synthetic */ ProductCustomizationDto(int i2, ConfigurationDto configurationDto, ConfigurationDto configurationDto2, ConfigurationDto configurationDto3, ConfigurationDto configurationDto4, ConfigurationDto configurationDto5, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f46260a = null;
        } else {
            this.f46260a = configurationDto;
        }
        if ((i2 & 2) == 0) {
            this.f46261b = null;
        } else {
            this.f46261b = configurationDto2;
        }
        if ((i2 & 4) == 0) {
            this.f46262c = null;
        } else {
            this.f46262c = configurationDto3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = configurationDto4;
        }
        if ((i2 & 16) == 0) {
            this.f46263e = null;
        } else {
            this.f46263e = configurationDto5;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductCustomizationDto)) {
            return false;
        }
        ProductCustomizationDto productCustomizationDto = (ProductCustomizationDto) obj;
        return Intrinsics.c(this.f46260a, productCustomizationDto.f46260a) && Intrinsics.c(this.f46261b, productCustomizationDto.f46261b) && Intrinsics.c(this.f46262c, productCustomizationDto.f46262c) && Intrinsics.c(this.d, productCustomizationDto.d) && Intrinsics.c(this.f46263e, productCustomizationDto.f46263e);
    }

    public final int hashCode() {
        ConfigurationDto configurationDto = this.f46260a;
        int iHashCode = (configurationDto == null ? 0 : configurationDto.hashCode()) * 31;
        ConfigurationDto configurationDto2 = this.f46261b;
        int iHashCode2 = (iHashCode + (configurationDto2 == null ? 0 : configurationDto2.hashCode())) * 31;
        ConfigurationDto configurationDto3 = this.f46262c;
        int iHashCode3 = (iHashCode2 + (configurationDto3 == null ? 0 : configurationDto3.hashCode())) * 31;
        ConfigurationDto configurationDto4 = this.d;
        int iHashCode4 = (iHashCode3 + (configurationDto4 == null ? 0 : configurationDto4.hashCode())) * 31;
        ConfigurationDto configurationDto5 = this.f46263e;
        return iHashCode4 + (configurationDto5 != null ? configurationDto5.hashCode() : 0);
    }

    public final String toString() {
        return "ProductCustomizationDto(hotStamping=" + this.f46260a + ", perfumeEngraving=" + this.f46261b + ", beautyEngraving=" + this.f46262c + ", monogram=" + this.d + ", diamondEngraving=" + this.f46263e + ")";
    }

    public ProductCustomizationDto() {
        this((ConfigurationDto) null, (ConfigurationDto) null, (ConfigurationDto) null, (ConfigurationDto) null, (ConfigurationDto) null, 31, (DefaultConstructorMarker) null);
    }

    public ProductCustomizationDto(ConfigurationDto configurationDto, ConfigurationDto configurationDto2, ConfigurationDto configurationDto3, ConfigurationDto configurationDto4, ConfigurationDto configurationDto5) {
        this.f46260a = configurationDto;
        this.f46261b = configurationDto2;
        this.f46262c = configurationDto3;
        this.d = configurationDto4;
        this.f46263e = configurationDto5;
    }

    public /* synthetic */ ProductCustomizationDto(ConfigurationDto configurationDto, ConfigurationDto configurationDto2, ConfigurationDto configurationDto3, ConfigurationDto configurationDto4, ConfigurationDto configurationDto5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : configurationDto, (i2 & 2) != 0 ? null : configurationDto2, (i2 & 4) != 0 ? null : configurationDto3, (i2 & 8) != 0 ? null : configurationDto4, (i2 & 16) != 0 ? null : configurationDto5);
    }
}
