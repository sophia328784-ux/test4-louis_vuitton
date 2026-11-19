package com.vuitton.android.data.dto.cart.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010BA\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\t\u0010\nBK\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/cart/bff/CartSampleItemDto;", "", "", "identifier", "name", "description", "", "isSelected", "imageUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CartSampleItemDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45014a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45015b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45016c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f45017e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/cart/bff/CartSampleItemDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/cart/bff/CartSampleItemDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CartSampleItemDto> serializer() {
            return CartSampleItemDto$$serializer.f45018a;
        }
    }

    public /* synthetic */ CartSampleItemDto(int i2, String str, String str2, String str3, boolean z, String str4, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f45014a = null;
        } else {
            this.f45014a = str;
        }
        if ((i2 & 2) == 0) {
            this.f45015b = null;
        } else {
            this.f45015b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f45016c = null;
        } else {
            this.f45016c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = false;
        } else {
            this.d = z;
        }
        if ((i2 & 16) == 0) {
            this.f45017e = null;
        } else {
            this.f45017e = str4;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CartSampleItemDto)) {
            return false;
        }
        CartSampleItemDto cartSampleItemDto = (CartSampleItemDto) obj;
        return Intrinsics.c(this.f45014a, cartSampleItemDto.f45014a) && Intrinsics.c(this.f45015b, cartSampleItemDto.f45015b) && Intrinsics.c(this.f45016c, cartSampleItemDto.f45016c) && this.d == cartSampleItemDto.d && Intrinsics.c(this.f45017e, cartSampleItemDto.f45017e);
    }

    public final int hashCode() {
        String str = this.f45014a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f45015b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f45016c;
        int iB = o60.b((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31, 31, this.d);
        String str4 = this.f45017e;
        return iB + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("CartSampleItemDto(identifier=", this.f45014a, ", name=", this.f45015b, ", description=");
        pq0.A(this.f45016c, ", isSelected=", ", imageUrl=", sbS, this.d);
        return n00.r(this.f45017e, ")", sbS);
    }

    public CartSampleItemDto() {
        this((String) null, (String) null, (String) null, false, (String) null, 31, (DefaultConstructorMarker) null);
    }

    public CartSampleItemDto(String str, String str2, String str3, boolean z, String str4) {
        this.f45014a = str;
        this.f45015b = str2;
        this.f45016c = str3;
        this.d = z;
        this.f45017e = str4;
    }

    public /* synthetic */ CartSampleItemDto(String str, String str2, String str3, boolean z, String str4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? false : z, (i2 & 16) != 0 ? null : str4);
    }
}
