package com.vuitton.android.data.dto.careservices.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006B/\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0005\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceConfirmAddressBodyDto;", "", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;", "shippingAddress", "billingAddress", "<init>", "(Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CareServiceConfirmAddressBodyDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CareServiceAddressDto f44875a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CareServiceAddressDto f44876b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceConfirmAddressBodyDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceConfirmAddressBodyDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CareServiceConfirmAddressBodyDto> serializer() {
            return CareServiceConfirmAddressBodyDto$$serializer.f44877a;
        }
    }

    public /* synthetic */ CareServiceConfirmAddressBodyDto(int i2, CareServiceAddressDto careServiceAddressDto, CareServiceAddressDto careServiceAddressDto2, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, CareServiceConfirmAddressBodyDto$$serializer.f44877a.a());
            throw null;
        }
        this.f44875a = careServiceAddressDto;
        this.f44876b = careServiceAddressDto2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CareServiceConfirmAddressBodyDto)) {
            return false;
        }
        CareServiceConfirmAddressBodyDto careServiceConfirmAddressBodyDto = (CareServiceConfirmAddressBodyDto) obj;
        return Intrinsics.c(this.f44875a, careServiceConfirmAddressBodyDto.f44875a) && Intrinsics.c(this.f44876b, careServiceConfirmAddressBodyDto.f44876b);
    }

    public final int hashCode() {
        return this.f44876b.hashCode() + (this.f44875a.hashCode() * 31);
    }

    public final String toString() {
        return "CareServiceConfirmAddressBodyDto(shippingAddress=" + this.f44875a + ", billingAddress=" + this.f44876b + ")";
    }

    public CareServiceConfirmAddressBodyDto(CareServiceAddressDto careServiceAddressDto, CareServiceAddressDto careServiceAddressDto2) {
        careServiceAddressDto.getClass();
        careServiceAddressDto2.getClass();
        this.f44875a = careServiceAddressDto;
        this.f44876b = careServiceAddressDto2;
    }
}
