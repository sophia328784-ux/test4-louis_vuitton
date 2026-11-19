package com.dynamicyield.sdk.wrapper.core.models.choose.payload;

import defpackage.fj;
import defpackage.tr;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.UInt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b¢\u0006\u0004\b\u000b\u0010\fBI\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u000b\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/CartItem;", "", "", "productId", "Lkotlin/UInt;", "quantity", "", "itemPrice", "", "Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;", "innerProducts", "<init>", "(Ljava/lang/String;ILjava/lang/Float;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lkotlin/UInt;Ljava/lang/Float;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final /* data */ class CartItem {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy[] f26018e = {null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new fj(7))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f26019a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f26020b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Float f26021c;
    public final List d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/CartItem$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/CartItem;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CartItem> serializer() {
            return CartItem$$serializer.f26022a;
        }
    }

    public /* synthetic */ CartItem(int i2, String str, UInt uInt, Float f2, List list, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, CartItem$$serializer.f26022a.getF19838b());
            throw null;
        }
        this.f26019a = str;
        this.f26020b = uInt.f71724b;
        this.f26021c = f2;
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = list;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CartItem)) {
            return false;
        }
        CartItem cartItem = (CartItem) obj;
        return Intrinsics.c(this.f26019a, cartItem.f26019a) && this.f26020b == cartItem.f26020b && Intrinsics.c(this.f26021c, cartItem.f26021c) && Intrinsics.c(this.d, cartItem.d);
    }

    public final int hashCode() {
        int iHashCode = this.f26019a.hashCode() * 31;
        UInt.Companion companion = UInt.INSTANCE;
        int iB = tr.b(this.f26020b, iHashCode, 31);
        Float f2 = this.f26021c;
        int iHashCode2 = (iB + (f2 == null ? 0 : f2.hashCode())) * 31;
        List list = this.d;
        return iHashCode2 + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CartItem(productId=");
        sb.append(this.f26019a);
        sb.append(", quantity=");
        UInt.Companion companion = UInt.INSTANCE;
        sb.append((Object) String.valueOf(((long) this.f26020b) & BodyPartID.bodyIdMax));
        sb.append(", itemPrice=");
        sb.append(this.f26021c);
        sb.append(", innerProducts=");
        return tr.m(sb, this.d, ')');
    }

    public CartItem(String str, int i2, Float f2, List list, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        this.f26019a = str;
        this.f26020b = i2;
        this.f26021c = f2;
        this.d = list;
    }

    public /* synthetic */ CartItem(String str, int i2, Float f2, List list, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i2, f2, (i3 & 8) != 0 ? null : list, null);
    }
}
