package com.vuitton.android.presentation.common.hotcontent.models;

import com.vuitton.android.presentation.screen.orders.models.TransactionItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.TransactionUiModel;
import com.vuitton.android.presentation.screen.osa.models.AppointmentTypeUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceHotContentUiModel;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel;", "", "Order", "StoreAppointment", "CareService", "Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$CareService;", "Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$Order;", "Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$StoreAppointment;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface HotContentItemUiModel {

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$CareService;", "Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel;", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceHotContentUiModel;", "content", "<init>", "(Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceHotContentUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CareService implements HotContentItemUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CareServiceHotContentUiModel f50892a;

        public CareService(CareServiceHotContentUiModel careServiceHotContentUiModel) {
            careServiceHotContentUiModel.getClass();
            this.f50892a = careServiceHotContentUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CareService) && Intrinsics.c(this.f50892a, ((CareService) obj).f50892a);
        }

        public final int hashCode() {
            return this.f50892a.hashCode();
        }

        public final String toString() {
            return "CareService(content=" + this.f50892a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$Order;", "Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel;", "Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;", "transaction", "Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;", "orderItem", "<init>", "(Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Order implements HotContentItemUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TransactionUiModel f50893a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TransactionItemUiModel f50894b;

        public Order(TransactionUiModel transactionUiModel, TransactionItemUiModel transactionItemUiModel) {
            transactionUiModel.getClass();
            transactionItemUiModel.getClass();
            this.f50893a = transactionUiModel;
            this.f50894b = transactionItemUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Order)) {
                return false;
            }
            Order order = (Order) obj;
            return Intrinsics.c(this.f50893a, order.f50893a) && Intrinsics.c(this.f50894b, order.f50894b);
        }

        public final int hashCode() {
            return this.f50894b.hashCode() + (this.f50893a.hashCode() * 31);
        }

        public final String toString() {
            return "Order(transaction=" + this.f50893a + ", orderItem=" + this.f50894b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$StoreAppointment;", "Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel;", "Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;", "appointmentType", "", "formattedDate", "imageUrl", "<init>", "(Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class StoreAppointment implements HotContentItemUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AppointmentTypeUiModel f50895a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f50896b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f50897c;

        public StoreAppointment(AppointmentTypeUiModel appointmentTypeUiModel, String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f50895a = appointmentTypeUiModel;
            this.f50896b = str;
            this.f50897c = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StoreAppointment)) {
                return false;
            }
            StoreAppointment storeAppointment = (StoreAppointment) obj;
            return this.f50895a == storeAppointment.f50895a && Intrinsics.c(this.f50896b, storeAppointment.f50896b) && Intrinsics.c(this.f50897c, storeAppointment.f50897c);
        }

        public final int hashCode() {
            AppointmentTypeUiModel appointmentTypeUiModel = this.f50895a;
            return this.f50897c.hashCode() + fc.b((appointmentTypeUiModel == null ? 0 : appointmentTypeUiModel.hashCode()) * 31, 31, this.f50896b);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("StoreAppointment(appointmentType=");
            sb.append(this.f50895a);
            sb.append(", formattedDate=");
            sb.append(this.f50896b);
            sb.append(", imageUrl=");
            return n00.r(this.f50897c, ")", sb);
        }
    }
}
