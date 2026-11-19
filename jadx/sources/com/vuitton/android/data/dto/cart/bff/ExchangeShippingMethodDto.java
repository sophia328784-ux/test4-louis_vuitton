package com.vuitton.android.data.dto.cart.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.ew;
import defpackage.fc;
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
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB#\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bB9\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingMethodDto;", "", "", "additionalInformation", "title", "Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingTypeDto;", "type", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingTypeDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingTypeDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ExchangeShippingMethodDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d = {null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new ew(15))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45042a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45043b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ExchangeShippingTypeDto f45044c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingMethodDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingMethodDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ExchangeShippingMethodDto> serializer() {
            return ExchangeShippingMethodDto$$serializer.f45045a;
        }
    }

    public /* synthetic */ ExchangeShippingMethodDto(int i2, String str, String str2, ExchangeShippingTypeDto exchangeShippingTypeDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (6 != (i2 & 6)) {
            PluginExceptionsKt.b(i2, 6, ExchangeShippingMethodDto$$serializer.f45045a.getF19850b());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f45042a = null;
        } else {
            this.f45042a = str;
        }
        this.f45043b = str2;
        this.f45044c = exchangeShippingTypeDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ExchangeShippingMethodDto)) {
            return false;
        }
        ExchangeShippingMethodDto exchangeShippingMethodDto = (ExchangeShippingMethodDto) obj;
        return Intrinsics.c(this.f45042a, exchangeShippingMethodDto.f45042a) && Intrinsics.c(this.f45043b, exchangeShippingMethodDto.f45043b) && this.f45044c == exchangeShippingMethodDto.f45044c;
    }

    public final int hashCode() {
        String str = this.f45042a;
        return this.f45044c.hashCode() + fc.b((str == null ? 0 : str.hashCode()) * 31, 31, this.f45043b);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ExchangeShippingMethodDto(additionalInformation=", this.f45042a, ", title=", this.f45043b, ", type=");
        sbS.append(this.f45044c);
        sbS.append(")");
        return sbS.toString();
    }

    public ExchangeShippingMethodDto(String str, String str2, ExchangeShippingTypeDto exchangeShippingTypeDto) {
        str2.getClass();
        exchangeShippingTypeDto.getClass();
        this.f45042a = str;
        this.f45043b = str2;
        this.f45044c = exchangeShippingTypeDto;
    }

    public /* synthetic */ ExchangeShippingMethodDto(String str, String str2, ExchangeShippingTypeDto exchangeShippingTypeDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, str2, exchangeShippingTypeDto);
    }
}
