package com.vuitton.foundation.model.domain.model.dynamicyield;

import defpackage.a;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent;", "", "AddToCart", "RemoveFromCart", "Purchase", "AddToWishlist", "Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;", "Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToWishlist;", "Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$Purchase;", "Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$RemoveFromCart;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class DYBusinessEvent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67541a;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;", "Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent;", "", "value", "", "productId", "currency", "", "quantity", "", "Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;", "cart", "<init>", "(FLjava/lang/String;Ljava/lang/String;ILjava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AddToCart extends DYBusinessEvent {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final float f67542b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f67543c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f67544e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final List f67545f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AddToCart(float f2, String str, String str2, int i2, List<DYCartItem> list) {
            super("add_to_cart", null);
            str.getClass();
            list.getClass();
            this.f67542b = f2;
            this.f67543c = str;
            this.d = str2;
            this.f67544e = i2;
            this.f67545f = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AddToCart)) {
                return false;
            }
            AddToCart addToCart = (AddToCart) obj;
            return Float.compare(this.f67542b, addToCart.f67542b) == 0 && Intrinsics.c(this.f67543c, addToCart.f67543c) && Intrinsics.c(this.d, addToCart.d) && this.f67544e == addToCart.f67544e && Intrinsics.c(this.f67545f, addToCart.f67545f);
        }

        public final int hashCode() {
            int iB = fc.b(Float.hashCode(this.f67542b) * 31, 31, this.f67543c);
            String str = this.d;
            return this.f67545f.hashCode() + tr.b(this.f67544e, (iB + (str == null ? 0 : str.hashCode())) * 31, 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("AddToCart(value=");
            sb.append(this.f67542b);
            sb.append(", productId=");
            sb.append(this.f67543c);
            sb.append(", currency=");
            sb.append(this.d);
            sb.append(", quantity=");
            sb.append(this.f67544e);
            sb.append(", cart=");
            return a.o(sb, this.f67545f, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToWishlist;", "Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent;", "", "productId", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AddToWishlist extends DYBusinessEvent {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f67546b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AddToWishlist(String str) {
            super("add_to_wishlist", null);
            str.getClass();
            this.f67546b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AddToWishlist) && Intrinsics.c(this.f67546b, ((AddToWishlist) obj).f67546b);
        }

        public final int hashCode() {
            return this.f67546b.hashCode();
        }

        public final String toString() {
            return fc.h("AddToWishlist(productId=", this.f67546b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$Purchase;", "Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent;", "", "value", "", "uniqueTransactionId", "currency", "", "Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;", "cart", "<init>", "(FLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Purchase extends DYBusinessEvent {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final float f67547b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f67548c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final List f67549e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Purchase(float f2, String str, String str2, List<DYCartItem> list) {
            super("purchase", null);
            pq0.B(str, str2, list);
            this.f67547b = f2;
            this.f67548c = str;
            this.d = str2;
            this.f67549e = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Purchase)) {
                return false;
            }
            Purchase purchase = (Purchase) obj;
            return Float.compare(this.f67547b, purchase.f67547b) == 0 && Intrinsics.c(this.f67548c, purchase.f67548c) && Intrinsics.c(this.d, purchase.d) && Intrinsics.c(this.f67549e, purchase.f67549e);
        }

        public final int hashCode() {
            return this.f67549e.hashCode() + fc.b(fc.b(Float.hashCode(this.f67547b) * 31, 31, this.f67548c), 31, this.d);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Purchase(value=");
            sb.append(this.f67547b);
            sb.append(", uniqueTransactionId=");
            sb.append(this.f67548c);
            sb.append(", currency=");
            return o60.o(this.d, ", cart=", ")", sb, this.f67549e);
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$RemoveFromCart;", "Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent;", "", "value", "", "productId", "currency", "", "quantity", "", "Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;", "cart", "<init>", "(FLjava/lang/String;Ljava/lang/String;ILjava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RemoveFromCart extends DYBusinessEvent {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final float f67550b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f67551c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f67552e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final List f67553f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RemoveFromCart(float f2, String str, String str2, int i2, List<DYCartItem> list) {
            super("remove_from_cart", null);
            str.getClass();
            list.getClass();
            this.f67550b = f2;
            this.f67551c = str;
            this.d = str2;
            this.f67552e = i2;
            this.f67553f = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RemoveFromCart)) {
                return false;
            }
            RemoveFromCart removeFromCart = (RemoveFromCart) obj;
            return Float.compare(this.f67550b, removeFromCart.f67550b) == 0 && Intrinsics.c(this.f67551c, removeFromCart.f67551c) && Intrinsics.c(this.d, removeFromCart.d) && this.f67552e == removeFromCart.f67552e && Intrinsics.c(this.f67553f, removeFromCart.f67553f);
        }

        public final int hashCode() {
            int iB = fc.b(Float.hashCode(this.f67550b) * 31, 31, this.f67551c);
            String str = this.d;
            return this.f67553f.hashCode() + tr.b(this.f67552e, (iB + (str == null ? 0 : str.hashCode())) * 31, 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("RemoveFromCart(value=");
            sb.append(this.f67550b);
            sb.append(", productId=");
            sb.append(this.f67551c);
            sb.append(", currency=");
            sb.append(this.d);
            sb.append(", quantity=");
            sb.append(this.f67552e);
            sb.append(", cart=");
            return a.o(sb, this.f67553f, ")");
        }
    }

    public DYBusinessEvent(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this.f67541a = str;
    }
}
