package com.dynamicyield.sdk.wrapper.core.models.event;

import kotlin.Metadata;
import kotlin.UInt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB%\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tB9\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;", "", "", "productId", "Lkotlin/UInt;", "quantity", "", "itemPrice", "<init>", "(Ljava/lang/String;Lkotlin/UInt;Ljava/lang/Float;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lkotlin/UInt;Ljava/lang/Float;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final /* data */ class CartInnerItem {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f26297a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UInt f26298b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Float f26299c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CartInnerItem> serializer() {
            return CartInnerItem$$serializer.f26300a;
        }
    }

    public /* synthetic */ CartInnerItem(int i2, String str, UInt uInt, Float f2, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, CartInnerItem$$serializer.f26300a.a());
            throw null;
        }
        this.f26297a = str;
        this.f26298b = uInt;
        this.f26299c = f2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CartInnerItem)) {
            return false;
        }
        CartInnerItem cartInnerItem = (CartInnerItem) obj;
        return Intrinsics.c(this.f26297a, cartInnerItem.f26297a) && Intrinsics.c(this.f26298b, cartInnerItem.f26298b) && Intrinsics.c(this.f26299c, cartInnerItem.f26299c);
    }

    public final int hashCode() {
        String str = this.f26297a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        UInt uInt = this.f26298b;
        int iHashCode2 = (iHashCode + (uInt == null ? 0 : Integer.hashCode(uInt.f71724b))) * 31;
        Float f2 = this.f26299c;
        return iHashCode2 + (f2 != null ? f2.hashCode() : 0);
    }

    public final String toString() {
        return "CartInnerItem(productId=" + this.f26297a + ", quantity=" + this.f26298b + ", itemPrice=" + this.f26299c + ')';
    }

    public CartInnerItem(String str, UInt uInt, Float f2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f26297a = str;
        this.f26298b = uInt;
        this.f26299c = f2;
    }
}
