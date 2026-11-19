package com.vuitton.android.data.dto.profile.twist;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001f\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/profile/twist/UserConsentsPatchDto;", "", "Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsPatchDto;", "kisa", "Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsPatchDto;", "marketing", "<init>", "(Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsPatchDto;Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsPatchDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/profile/twist/KisaConsentsPatchDto;Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsPatchDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class UserConsentsPatchDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KisaConsentsPatchDto f46753a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MarketingConsentsPatchDto f46754b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/profile/twist/UserConsentsPatchDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/profile/twist/UserConsentsPatchDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<UserConsentsPatchDto> serializer() {
            return UserConsentsPatchDto$$serializer.f46755a;
        }
    }

    public /* synthetic */ UserConsentsPatchDto(int i2, KisaConsentsPatchDto kisaConsentsPatchDto, MarketingConsentsPatchDto marketingConsentsPatchDto, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f46753a = null;
        } else {
            this.f46753a = kisaConsentsPatchDto;
        }
        if ((i2 & 2) == 0) {
            this.f46754b = null;
        } else {
            this.f46754b = marketingConsentsPatchDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UserConsentsPatchDto)) {
            return false;
        }
        UserConsentsPatchDto userConsentsPatchDto = (UserConsentsPatchDto) obj;
        return Intrinsics.c(this.f46753a, userConsentsPatchDto.f46753a) && Intrinsics.c(this.f46754b, userConsentsPatchDto.f46754b);
    }

    public final int hashCode() {
        KisaConsentsPatchDto kisaConsentsPatchDto = this.f46753a;
        int iHashCode = (kisaConsentsPatchDto == null ? 0 : kisaConsentsPatchDto.hashCode()) * 31;
        MarketingConsentsPatchDto marketingConsentsPatchDto = this.f46754b;
        return iHashCode + (marketingConsentsPatchDto != null ? marketingConsentsPatchDto.hashCode() : 0);
    }

    public final String toString() {
        return "UserConsentsPatchDto(kisa=" + this.f46753a + ", marketing=" + this.f46754b + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public UserConsentsPatchDto() {
        this((KisaConsentsPatchDto) null, (MarketingConsentsPatchDto) (0 == true ? 1 : 0), 3, (DefaultConstructorMarker) (0 == true ? 1 : 0));
    }

    public UserConsentsPatchDto(KisaConsentsPatchDto kisaConsentsPatchDto, MarketingConsentsPatchDto marketingConsentsPatchDto) {
        this.f46753a = kisaConsentsPatchDto;
        this.f46754b = marketingConsentsPatchDto;
    }

    public /* synthetic */ UserConsentsPatchDto(KisaConsentsPatchDto kisaConsentsPatchDto, MarketingConsentsPatchDto marketingConsentsPatchDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : kisaConsentsPatchDto, (i2 & 2) != 0 ? null : marketingConsentsPatchDto);
    }
}
