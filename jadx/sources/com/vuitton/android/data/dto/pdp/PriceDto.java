package com.vuitton.android.data.dto.pdp;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.n00;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bB7\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/PriceDto;", "", "", "price", "", "priceRaw", "currency", "<init>", "(Ljava/lang/String;FLjava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;FLjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class PriceDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46233a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f46234b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46235c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/PriceDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/pdp/PriceDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<PriceDto> serializer() {
            return PriceDto$$serializer.f46236a;
        }
    }

    public /* synthetic */ PriceDto(int i2, String str, float f2, String str2, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, PriceDto$$serializer.f46236a.a());
            throw null;
        }
        this.f46233a = str;
        this.f46234b = f2;
        this.f46235c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PriceDto)) {
            return false;
        }
        PriceDto priceDto = (PriceDto) obj;
        return Intrinsics.c(this.f46233a, priceDto.f46233a) && Float.compare(this.f46234b, priceDto.f46234b) == 0 && Intrinsics.c(this.f46235c, priceDto.f46235c);
    }

    public final int hashCode() {
        return this.f46235c.hashCode() + pq0.b(this.f46233a.hashCode() * 31, 31, this.f46234b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PriceDto(price=");
        sb.append(this.f46233a);
        sb.append(", priceRaw=");
        sb.append(this.f46234b);
        sb.append(", currency=");
        return n00.r(this.f46235c, ")", sb);
    }

    public PriceDto(String str, float f2, String str2) {
        str.getClass();
        str2.getClass();
        this.f46233a = str;
        this.f46234b = f2;
        this.f46235c = str2;
    }
}
