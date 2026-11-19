package com.vuitton.android.data.dto.account.orders;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.ew;
import defpackage.n00;
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
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB+\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bB9\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorDetailsDto;", "", "Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorCodeDto;", "errorCode", "", "message", "scope", "<init>", "(Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorCodeDto;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/account/orders/ExchangeErrorCodeDto;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ExchangeErrorDetailsDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d = {LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new ew(13)), null, null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ExchangeErrorCodeDto f44355a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44356b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44357c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorDetailsDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorDetailsDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ExchangeErrorDetailsDto> serializer() {
            return ExchangeErrorDetailsDto$$serializer.f44358a;
        }
    }

    public /* synthetic */ ExchangeErrorDetailsDto(int i2, ExchangeErrorCodeDto exchangeErrorCodeDto, String str, String str2, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f44355a = null;
        } else {
            this.f44355a = exchangeErrorCodeDto;
        }
        if ((i2 & 2) == 0) {
            this.f44356b = null;
        } else {
            this.f44356b = str;
        }
        if ((i2 & 4) == 0) {
            this.f44357c = null;
        } else {
            this.f44357c = str2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ExchangeErrorDetailsDto)) {
            return false;
        }
        ExchangeErrorDetailsDto exchangeErrorDetailsDto = (ExchangeErrorDetailsDto) obj;
        return this.f44355a == exchangeErrorDetailsDto.f44355a && Intrinsics.c(this.f44356b, exchangeErrorDetailsDto.f44356b) && Intrinsics.c(this.f44357c, exchangeErrorDetailsDto.f44357c);
    }

    public final int hashCode() {
        ExchangeErrorCodeDto exchangeErrorCodeDto = this.f44355a;
        int iHashCode = (exchangeErrorCodeDto == null ? 0 : exchangeErrorCodeDto.hashCode()) * 31;
        String str = this.f44356b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f44357c;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ExchangeErrorDetailsDto(errorCode=");
        sb.append(this.f44355a);
        sb.append(", message=");
        sb.append(this.f44356b);
        sb.append(", scope=");
        return n00.r(this.f44357c, ")", sb);
    }

    public ExchangeErrorDetailsDto() {
        this((ExchangeErrorCodeDto) null, (String) null, (String) null, 7, (DefaultConstructorMarker) null);
    }

    public ExchangeErrorDetailsDto(ExchangeErrorCodeDto exchangeErrorCodeDto, String str, String str2) {
        this.f44355a = exchangeErrorCodeDto;
        this.f44356b = str;
        this.f44357c = str2;
    }

    public /* synthetic */ ExchangeErrorDetailsDto(ExchangeErrorCodeDto exchangeErrorCodeDto, String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : exchangeErrorCodeDto, (i2 & 2) != 0 ? null : str, (i2 & 4) != 0 ? null : str2);
    }
}
