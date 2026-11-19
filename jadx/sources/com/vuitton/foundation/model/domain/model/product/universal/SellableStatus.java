package com.vuitton.foundation.model.domain.model.product.universal;

import defpackage.v40;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus;", "", "Sellable", "NotSellable", "Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$NotSellable;", "Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$Sellable;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class SellableStatus {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$NotSellable;", "Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus;", "Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason;", "reason", "<init>", "(Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class NotSellable extends SellableStatus {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final NotSellableReason f68024a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NotSellable(NotSellableReason notSellableReason) {
            super(null);
            notSellableReason.getClass();
            this.f68024a = notSellableReason;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$Sellable;", "Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus;", "Lcom/vuitton/foundation/model/domain/model/product/universal/Price;", "price", "<init>", "(Lcom/vuitton/foundation/model/domain/model/product/universal/Price;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Sellable extends SellableStatus {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Price f68025a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Sellable(Price price) {
            super(null);
            price.getClass();
            this.f68025a = price;
        }
    }

    public SellableStatus(DefaultConstructorMarker defaultConstructorMarker) {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SellableStatus)) {
            return false;
        }
        if (this instanceof Sellable) {
            if (obj instanceof Sellable) {
                if (Intrinsics.c(((Sellable) this).f68025a, ((Sellable) obj).f68025a)) {
                    return true;
                }
            }
            return false;
        }
        if (!(this instanceof NotSellable)) {
            v40.g();
            return false;
        }
        if (obj instanceof NotSellable) {
            if (Intrinsics.c(((NotSellable) this).f68024a, ((NotSellable) obj).f68024a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this instanceof Sellable) {
            return ((Sellable) this).f68025a.hashCode();
        }
        if (this instanceof NotSellable) {
            return ((NotSellable) this).f68024a.hashCode();
        }
        v40.g();
        return 0;
    }
}
