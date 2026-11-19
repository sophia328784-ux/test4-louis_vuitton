package com.vuitton.android.data.dto.pdp;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.zu0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB)\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tB7\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;", "", "", "sellable", "Lcom/vuitton/android/data/dto/pdp/PriceDto;", "price", "Lcom/vuitton/android/data/dto/pdp/NotSellableReasonDto;", "reason", "<init>", "(ZLcom/vuitton/android/data/dto/pdp/PriceDto;Lcom/vuitton/android/data/dto/pdp/NotSellableReasonDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(IZLcom/vuitton/android/data/dto/pdp/PriceDto;Lcom/vuitton/android/data/dto/pdp/NotSellableReasonDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class SellableStatusDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d = {null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new zu0(0))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f46296a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PriceDto f46297b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final NotSellableReasonDto f46298c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/SellableStatusDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SellableStatusDto> serializer() {
            return SellableStatusDto$$serializer.f46299a;
        }
    }

    public /* synthetic */ SellableStatusDto(int i2, boolean z, PriceDto priceDto, NotSellableReasonDto notSellableReasonDto, SerializationConstructorMarker serializationConstructorMarker) {
        this.f46296a = (i2 & 1) == 0 ? false : z;
        if ((i2 & 2) == 0) {
            this.f46297b = null;
        } else {
            this.f46297b = priceDto;
        }
        if ((i2 & 4) == 0) {
            this.f46298c = null;
        } else {
            this.f46298c = notSellableReasonDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SellableStatusDto)) {
            return false;
        }
        SellableStatusDto sellableStatusDto = (SellableStatusDto) obj;
        return this.f46296a == sellableStatusDto.f46296a && Intrinsics.c(this.f46297b, sellableStatusDto.f46297b) && this.f46298c == sellableStatusDto.f46298c;
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.f46296a) * 31;
        PriceDto priceDto = this.f46297b;
        int iHashCode2 = (iHashCode + (priceDto == null ? 0 : priceDto.hashCode())) * 31;
        NotSellableReasonDto notSellableReasonDto = this.f46298c;
        return iHashCode2 + (notSellableReasonDto != null ? notSellableReasonDto.hashCode() : 0);
    }

    public final String toString() {
        return "SellableStatusDto(sellable=" + this.f46296a + ", price=" + this.f46297b + ", reason=" + this.f46298c + ")";
    }

    public SellableStatusDto() {
        this(false, (PriceDto) null, (NotSellableReasonDto) null, 7, (DefaultConstructorMarker) null);
    }

    public SellableStatusDto(boolean z, PriceDto priceDto, NotSellableReasonDto notSellableReasonDto) {
        this.f46296a = z;
        this.f46297b = priceDto;
        this.f46298c = notSellableReasonDto;
    }

    public /* synthetic */ SellableStatusDto(boolean z, PriceDto priceDto, NotSellableReasonDto notSellableReasonDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? null : priceDto, (i2 & 4) != 0 ? null : notSellableReasonDto);
    }
}
