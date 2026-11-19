package com.vuitton.android.data.dto.authentication.common;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.profile.twist.KisaConsentsDto;
import com.vuitton.android.data.dto.profile.twist.MarketingConsentsDto;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tB7\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;", "", "", "privacyPolicy", "Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;", "kisa", "Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;", "marketing", "<init>", "(ZLcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(IZLcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class RegisterConsentsDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f44535a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final KisaConsentsDto f44536b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MarketingConsentsDto f44537c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<RegisterConsentsDto> serializer() {
            return RegisterConsentsDto$$serializer.f44538a;
        }
    }

    public /* synthetic */ RegisterConsentsDto(int i2, boolean z, KisaConsentsDto kisaConsentsDto, MarketingConsentsDto marketingConsentsDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, RegisterConsentsDto$$serializer.f44538a.getF19850b());
            throw null;
        }
        this.f44535a = z;
        this.f44536b = kisaConsentsDto;
        this.f44537c = marketingConsentsDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RegisterConsentsDto)) {
            return false;
        }
        RegisterConsentsDto registerConsentsDto = (RegisterConsentsDto) obj;
        return this.f44535a == registerConsentsDto.f44535a && Intrinsics.c(this.f44536b, registerConsentsDto.f44536b) && Intrinsics.c(this.f44537c, registerConsentsDto.f44537c);
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.f44535a) * 31;
        KisaConsentsDto kisaConsentsDto = this.f44536b;
        int iHashCode2 = (iHashCode + (kisaConsentsDto == null ? 0 : kisaConsentsDto.hashCode())) * 31;
        MarketingConsentsDto marketingConsentsDto = this.f44537c;
        return iHashCode2 + (marketingConsentsDto != null ? marketingConsentsDto.hashCode() : 0);
    }

    public final String toString() {
        return "RegisterConsentsDto(privacyPolicy=" + this.f44535a + ", kisa=" + this.f44536b + ", marketing=" + this.f44537c + ")";
    }

    public RegisterConsentsDto(boolean z, KisaConsentsDto kisaConsentsDto, MarketingConsentsDto marketingConsentsDto) {
        this.f44535a = z;
        this.f44536b = kisaConsentsDto;
        this.f44537c = marketingConsentsDto;
    }
}
