package com.vuitton.android.data.dto.profile.twist;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\r\u000eB\u001f\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;", "", "Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;", "kisa", "Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;", "marketing", "<init>", "(Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class UserConsentsDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final UserConsentsDto f46749c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KisaConsentsDto f46750a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MarketingConsentsDto f46751b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<UserConsentsDto> serializer() {
            return UserConsentsDto$$serializer.f46752a;
        }
    }

    static {
        Boolean bool = Boolean.FALSE;
        f46749c = new UserConsentsDto(new KisaConsentsDto(bool, bool, false, false, false, false, false, false), new MarketingConsentsDto(false, false, false, false, bool, bool, bool));
    }

    public /* synthetic */ UserConsentsDto(int i2, KisaConsentsDto kisaConsentsDto, MarketingConsentsDto marketingConsentsDto, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f46750a = null;
        } else {
            this.f46750a = kisaConsentsDto;
        }
        if ((i2 & 2) == 0) {
            this.f46751b = null;
        } else {
            this.f46751b = marketingConsentsDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UserConsentsDto)) {
            return false;
        }
        UserConsentsDto userConsentsDto = (UserConsentsDto) obj;
        return Intrinsics.c(this.f46750a, userConsentsDto.f46750a) && Intrinsics.c(this.f46751b, userConsentsDto.f46751b);
    }

    public final int hashCode() {
        KisaConsentsDto kisaConsentsDto = this.f46750a;
        int iHashCode = (kisaConsentsDto == null ? 0 : kisaConsentsDto.hashCode()) * 31;
        MarketingConsentsDto marketingConsentsDto = this.f46751b;
        return iHashCode + (marketingConsentsDto != null ? marketingConsentsDto.hashCode() : 0);
    }

    public final String toString() {
        return "UserConsentsDto(kisa=" + this.f46750a + ", marketing=" + this.f46751b + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public UserConsentsDto() {
        this((KisaConsentsDto) null, (MarketingConsentsDto) (0 == true ? 1 : 0), 3, (DefaultConstructorMarker) (0 == true ? 1 : 0));
    }

    public UserConsentsDto(KisaConsentsDto kisaConsentsDto, MarketingConsentsDto marketingConsentsDto) {
        this.f46750a = kisaConsentsDto;
        this.f46751b = marketingConsentsDto;
    }

    public /* synthetic */ UserConsentsDto(KisaConsentsDto kisaConsentsDto, MarketingConsentsDto marketingConsentsDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : kisaConsentsDto, (i2 & 2) != 0 ? null : marketingConsentsDto);
    }
}
