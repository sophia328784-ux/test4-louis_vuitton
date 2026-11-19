package com.vuitton.android.data.dto.cart.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.fc;
import defpackage.pq0;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012BK\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000b\u0010\fBk\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u000b\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingAddressDto;", "", "", "address1", "address2", "address3", "address4", "city", "country", "postalCode", "province", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ExchangeShippingAddressDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45035a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45036b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45037c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f45038e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f45039f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f45040h;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingAddressDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingAddressDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ExchangeShippingAddressDto> serializer() {
            return ExchangeShippingAddressDto$$serializer.f45041a;
        }
    }

    public /* synthetic */ ExchangeShippingAddressDto(int i2, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, SerializationConstructorMarker serializationConstructorMarker) {
        if (127 != (i2 & CertificateBody.profileType)) {
            PluginExceptionsKt.b(i2, CertificateBody.profileType, ExchangeShippingAddressDto$$serializer.f45041a.getF19850b());
            throw null;
        }
        this.f45035a = str;
        this.f45036b = str2;
        this.f45037c = str3;
        this.d = str4;
        this.f45038e = str5;
        this.f45039f = str6;
        this.g = str7;
        if ((i2 & 128) == 0) {
            this.f45040h = null;
        } else {
            this.f45040h = str8;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ExchangeShippingAddressDto)) {
            return false;
        }
        ExchangeShippingAddressDto exchangeShippingAddressDto = (ExchangeShippingAddressDto) obj;
        return Intrinsics.c(this.f45035a, exchangeShippingAddressDto.f45035a) && Intrinsics.c(this.f45036b, exchangeShippingAddressDto.f45036b) && Intrinsics.c(this.f45037c, exchangeShippingAddressDto.f45037c) && Intrinsics.c(this.d, exchangeShippingAddressDto.d) && Intrinsics.c(this.f45038e, exchangeShippingAddressDto.f45038e) && Intrinsics.c(this.f45039f, exchangeShippingAddressDto.f45039f) && Intrinsics.c(this.g, exchangeShippingAddressDto.g) && Intrinsics.c(this.f45040h, exchangeShippingAddressDto.f45040h);
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(this.f45035a.hashCode() * 31, 31, this.f45036b), 31, this.f45037c), 31, this.d), 31, this.f45038e), 31, this.f45039f), 31, this.g);
        String str = this.f45040h;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ExchangeShippingAddressDto(address1=", this.f45035a, ", address2=", this.f45036b, ", address3=");
        cj.C(sbS, this.f45037c, ", address4=", this.d, ", city=");
        cj.C(sbS, this.f45038e, ", country=", this.f45039f, ", postalCode=");
        return tr.l(sbS, this.g, ", province=", this.f45040h, ")");
    }

    public ExchangeShippingAddressDto(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        pq0.z(str, str2, str3, str4, str5);
        str6.getClass();
        str7.getClass();
        this.f45035a = str;
        this.f45036b = str2;
        this.f45037c = str3;
        this.d = str4;
        this.f45038e = str5;
        this.f45039f = str6;
        this.g = str7;
        this.f45040h = str8;
    }

    public /* synthetic */ ExchangeShippingAddressDto(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, str5, str6, str7, (i2 & 128) != 0 ? null : str8);
    }
}
