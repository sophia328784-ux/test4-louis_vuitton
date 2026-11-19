package com.vuitton.foundation.model.domain.model.product.universal;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason;", "", "NotECommerce", "WebOnly", "MandatoryCustomization", "Unavailable", "Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason$MandatoryCustomization;", "Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason$NotECommerce;", "Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason$Unavailable;", "Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason$WebOnly;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface NotSellableReason {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason$MandatoryCustomization;", "Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason;", "Lcom/vuitton/foundation/model/domain/model/product/universal/Price;", "price", "<init>", "(Lcom/vuitton/foundation/model/domain/model/product/universal/Price;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class MandatoryCustomization implements NotSellableReason {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Price f68000a;

        public MandatoryCustomization(Price price) {
            this.f68000a = price;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof MandatoryCustomization) && Intrinsics.c(this.f68000a, ((MandatoryCustomization) obj).f68000a);
        }

        @Override // com.vuitton.foundation.model.domain.model.product.universal.NotSellableReason
        /* JADX INFO: renamed from: h, reason: from getter */
        public final Price getF68003a() {
            return this.f68000a;
        }

        public final int hashCode() {
            Price price = this.f68000a;
            if (price == null) {
                return 0;
            }
            return price.hashCode();
        }

        public final String toString() {
            return "MandatoryCustomization(price=" + this.f68000a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason$NotECommerce;", "Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason;", "Lcom/vuitton/foundation/model/domain/model/product/universal/Price;", "price", "<init>", "(Lcom/vuitton/foundation/model/domain/model/product/universal/Price;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NotECommerce implements NotSellableReason {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Price f68001a;

        public NotECommerce(Price price) {
            this.f68001a = price;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof NotECommerce) && Intrinsics.c(this.f68001a, ((NotECommerce) obj).f68001a);
        }

        @Override // com.vuitton.foundation.model.domain.model.product.universal.NotSellableReason
        /* JADX INFO: renamed from: h, reason: from getter */
        public final Price getF68003a() {
            return this.f68001a;
        }

        public final int hashCode() {
            Price price = this.f68001a;
            if (price == null) {
                return 0;
            }
            return price.hashCode();
        }

        public final String toString() {
            return "NotECommerce(price=" + this.f68001a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason$Unavailable;", "Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason;", "Lcom/vuitton/foundation/model/domain/model/product/universal/Price;", "price", "<init>", "(Lcom/vuitton/foundation/model/domain/model/product/universal/Price;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Unavailable implements NotSellableReason {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Price f68002a;

        public Unavailable(Price price) {
            this.f68002a = price;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Unavailable) && Intrinsics.c(this.f68002a, ((Unavailable) obj).f68002a);
        }

        @Override // com.vuitton.foundation.model.domain.model.product.universal.NotSellableReason
        /* JADX INFO: renamed from: h, reason: from getter */
        public final Price getF68003a() {
            return this.f68002a;
        }

        public final int hashCode() {
            Price price = this.f68002a;
            if (price == null) {
                return 0;
            }
            return price.hashCode();
        }

        public final String toString() {
            return "Unavailable(price=" + this.f68002a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason$WebOnly;", "Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason;", "Lcom/vuitton/foundation/model/domain/model/product/universal/Price;", "price", "<init>", "(Lcom/vuitton/foundation/model/domain/model/product/universal/Price;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class WebOnly implements NotSellableReason {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Price f68003a;

        public WebOnly(Price price) {
            this.f68003a = price;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof WebOnly) && Intrinsics.c(this.f68003a, ((WebOnly) obj).f68003a);
        }

        @Override // com.vuitton.foundation.model.domain.model.product.universal.NotSellableReason
        /* JADX INFO: renamed from: h, reason: from getter */
        public final Price getF68003a() {
            return this.f68003a;
        }

        public final int hashCode() {
            Price price = this.f68003a;
            if (price == null) {
                return 0;
            }
            return price.hashCode();
        }

        public final String toString() {
            return "WebOnly(price=" + this.f68003a + ")";
        }
    }

    /* JADX INFO: renamed from: h */
    Price getF68003a();
}
