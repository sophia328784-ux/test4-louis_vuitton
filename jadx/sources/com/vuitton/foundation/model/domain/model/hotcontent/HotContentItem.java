package com.vuitton.foundation.model.domain.model.hotcontent;

import com.vuitton.foundation.model.domain.model.account.orders.Transaction;
import com.vuitton.foundation.model.domain.model.account.orders.TransactionItem;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceHotContent;
import com.vuitton.foundation.model.domain.model.osa.OsaItem;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem;", "", "Order", "StoreAppointment", "CareService", "Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$CareService;", "Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$Order;", "Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$StoreAppointment;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface HotContentItem {

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$CareService;", "Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem;", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;", "content", "<init>", "(Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CareService implements HotContentItem {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CareServiceHotContent f67607a;

        public CareService(CareServiceHotContent careServiceHotContent) {
            careServiceHotContent.getClass();
            this.f67607a = careServiceHotContent;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CareService) && Intrinsics.c(this.f67607a, ((CareService) obj).f67607a);
        }

        public final int hashCode() {
            return this.f67607a.hashCode();
        }

        public final String toString() {
            return "CareService(content=" + this.f67607a + ")";
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$Order;", "Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem;", "Lcom/vuitton/foundation/model/domain/model/account/orders/Transaction;", "transaction", "Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;", "item", "<init>", "(Lcom/vuitton/foundation/model/domain/model/account/orders/Transaction;Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Order implements HotContentItem {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Transaction f67608a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TransactionItem f67609b;

        public Order(Transaction transaction, TransactionItem transactionItem) {
            transaction.getClass();
            transactionItem.getClass();
            this.f67608a = transaction;
            this.f67609b = transactionItem;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Order)) {
                return false;
            }
            Order order = (Order) obj;
            return Intrinsics.c(this.f67608a, order.f67608a) && Intrinsics.c(this.f67609b, order.f67609b);
        }

        public final int hashCode() {
            return this.f67609b.hashCode() + (this.f67608a.hashCode() * 31);
        }

        public final String toString() {
            return "Order(transaction=" + this.f67608a + ", item=" + this.f67609b + ")";
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$StoreAppointment;", "Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem;", "Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;", "appointment", "<init>", "(Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class StoreAppointment implements HotContentItem {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final OsaItem f67610a;

        public StoreAppointment(OsaItem osaItem) {
            osaItem.getClass();
            this.f67610a = osaItem;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof StoreAppointment) && Intrinsics.c(this.f67610a, ((StoreAppointment) obj).f67610a);
        }

        public final int hashCode() {
            return this.f67610a.hashCode();
        }

        public final String toString() {
            return "StoreAppointment(appointment=" + this.f67610a + ")";
        }
    }
}
