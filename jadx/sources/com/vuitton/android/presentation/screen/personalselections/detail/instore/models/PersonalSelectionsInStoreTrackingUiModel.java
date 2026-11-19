package com.vuitton.android.presentation.screen.personalselections.detail.instore.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreTrackingUiModel;", "", "InStoreSelectionScreen", "ProductClickEvent", "BookAppointmentEvent", "ShareEvent", "Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreTrackingUiModel$BookAppointmentEvent;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreTrackingUiModel$InStoreSelectionScreen;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreTrackingUiModel$ProductClickEvent;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreTrackingUiModel$ShareEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PersonalSelectionsInStoreTrackingUiModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreTrackingUiModel$BookAppointmentEvent;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BookAppointmentEvent implements PersonalSelectionsInStoreTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final BookAppointmentEvent f62550a = new BookAppointmentEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof BookAppointmentEvent);
        }

        public final int hashCode() {
            return 1431065868;
        }

        public final String toString() {
            return "BookAppointmentEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreTrackingUiModel$InStoreSelectionScreen;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class InStoreSelectionScreen implements PersonalSelectionsInStoreTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final InStoreSelectionScreen f62551a = new InStoreSelectionScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof InStoreSelectionScreen);
        }

        public final int hashCode() {
            return 535996036;
        }

        public final String toString() {
            return "InStoreSelectionScreen";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreTrackingUiModel$ProductClickEvent;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreTrackingUiModel;", "", "position", "", "sku", "<init>", "(ILjava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ProductClickEvent implements PersonalSelectionsInStoreTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f62552a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f62553b;

        public ProductClickEvent(int i2, String str) {
            str.getClass();
            this.f62552a = i2;
            this.f62553b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProductClickEvent)) {
                return false;
            }
            ProductClickEvent productClickEvent = (ProductClickEvent) obj;
            return this.f62552a == productClickEvent.f62552a && Intrinsics.c(this.f62553b, productClickEvent.f62553b);
        }

        public final int hashCode() {
            return this.f62553b.hashCode() + (Integer.hashCode(this.f62552a) * 31);
        }

        public final String toString() {
            return "ProductClickEvent(position=" + this.f62552a + ", sku=" + this.f62553b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreTrackingUiModel$ShareEvent;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ShareEvent implements PersonalSelectionsInStoreTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ShareEvent f62554a = new ShareEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ShareEvent);
        }

        public final int hashCode() {
            return 205297091;
        }

        public final String toString() {
            return "ShareEvent";
        }
    }
}
