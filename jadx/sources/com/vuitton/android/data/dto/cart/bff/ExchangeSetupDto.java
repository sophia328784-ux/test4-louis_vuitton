package com.vuitton.android.data.dto.cart.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bB9\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/cart/bff/ExchangeSetupDto;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "", "shippingGroupId", "reasonCode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ExchangeSetupDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45026a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45027b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45028c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/cart/bff/ExchangeSetupDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/cart/bff/ExchangeSetupDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ExchangeSetupDto> serializer() {
            return ExchangeSetupDto$$serializer.f45029a;
        }
    }

    public /* synthetic */ ExchangeSetupDto(int i2, String str, String str2, String str3, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, ExchangeSetupDto$$serializer.f45029a.getF19838b());
            throw null;
        }
        this.f45026a = str;
        this.f45027b = str2;
        this.f45028c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ExchangeSetupDto)) {
            return false;
        }
        ExchangeSetupDto exchangeSetupDto = (ExchangeSetupDto) obj;
        String str = exchangeSetupDto.f45026a;
        SkuId.Companion companion = SkuId.INSTANCE;
        return Intrinsics.c(this.f45026a, str) && Intrinsics.c(this.f45027b, exchangeSetupDto.f45027b) && Intrinsics.c(this.f45028c, exchangeSetupDto.f45028c);
    }

    public final int hashCode() {
        SkuId.Companion companion = SkuId.INSTANCE;
        return this.f45028c.hashCode() + fc.b(this.f45026a.hashCode() * 31, 31, this.f45027b);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        return n00.r(this.f45028c, ")", fc.s("ExchangeSetupDto(sku=", this.f45026a, ", shippingGroupId=", this.f45027b, ", reasonCode="));
    }

    public ExchangeSetupDto(String str, String str2, String str3, DefaultConstructorMarker defaultConstructorMarker) {
        cj.z(str, str2, str3);
        this.f45026a = str;
        this.f45027b = str2;
        this.f45028c = str3;
    }
}
