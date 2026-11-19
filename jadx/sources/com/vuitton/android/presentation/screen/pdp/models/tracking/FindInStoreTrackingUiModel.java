package com.vuitton.android.presentation.screen.pdp.models.tracking;

import com.appsflyer.sdk_base.referrer.Payload;
import com.vuitton.android.presentation.model.storelocator.StoreUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.d21;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0005\u0007\b\t\n\u000b¨\u0006\fÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel;", "", "ClickOnCheckAvailabilityEvent", "ClickOnMoreDetailsEvent", "ClickOnUseCurrentLocationEvent", "ClickOnUseDrivingDirectionEvent", "ChangeAvailabilityFilterEvent", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ChangeAvailabilityFilterEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnCheckAvailabilityEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnMoreDetailsEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnUseCurrentLocationEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnUseDrivingDirectionEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface FindInStoreTrackingUiModel {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ChangeAvailabilityFilterEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "availableOnly", "<init>", "(Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ChangeAvailabilityFilterEvent implements FindInStoreTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61577a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f61578b;

        public ChangeAvailabilityFilterEvent(String str, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f61577a = str;
            this.f61578b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ChangeAvailabilityFilterEvent)) {
                return false;
            }
            ChangeAvailabilityFilterEvent changeAvailabilityFilterEvent = (ChangeAvailabilityFilterEvent) obj;
            String str = changeAvailabilityFilterEvent.f61577a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61577a.equals(str) && this.f61578b == changeAvailabilityFilterEvent.f61578b;
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return Boolean.hashCode(this.f61578b) + (this.f61577a.hashCode() * 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return d21.m("ChangeAvailabilityFilterEvent(sku=", this.f61577a, ", availableOnly=", ")", this.f61578b);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnCheckAvailabilityEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ClickOnCheckAvailabilityEvent implements FindInStoreTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61579a;

        public ClickOnCheckAvailabilityEvent(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f61579a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ClickOnCheckAvailabilityEvent)) {
                return false;
            }
            String str = ((ClickOnCheckAvailabilityEvent) obj).f61579a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61579a.equals(str);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61579a.hashCode();
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return fc.h("ClickOnCheckAvailabilityEvent(sku=", this.f61579a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnMoreDetailsEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "location", "Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;", Payload.TYPE_STORE, "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ClickOnMoreDetailsEvent implements FindInStoreTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61580a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f61581b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final StoreUiModel f61582c;

        public ClickOnMoreDetailsEvent(String str, String str2, StoreUiModel storeUiModel, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            str2.getClass();
            storeUiModel.getClass();
            this.f61580a = str;
            this.f61581b = str2;
            this.f61582c = storeUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ClickOnMoreDetailsEvent)) {
                return false;
            }
            ClickOnMoreDetailsEvent clickOnMoreDetailsEvent = (ClickOnMoreDetailsEvent) obj;
            String str = clickOnMoreDetailsEvent.f61580a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61580a.equals(str) && this.f61581b.equals(clickOnMoreDetailsEvent.f61581b) && this.f61582c.equals(clickOnMoreDetailsEvent.f61582c);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61582c.hashCode() + fc.b(this.f61580a.hashCode() * 31, 31, this.f61581b);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            StringBuilder sbS = fc.s("ClickOnMoreDetailsEvent(sku=", this.f61580a, ", location=", this.f61581b, ", store=");
            sbS.append(this.f61582c);
            sbS.append(")");
            return sbS.toString();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnUseCurrentLocationEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ClickOnUseCurrentLocationEvent implements FindInStoreTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61583a;

        public ClickOnUseCurrentLocationEvent(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f61583a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ClickOnUseCurrentLocationEvent)) {
                return false;
            }
            String str = ((ClickOnUseCurrentLocationEvent) obj).f61583a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61583a.equals(str);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61583a.hashCode();
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return fc.h("ClickOnUseCurrentLocationEvent(sku=", this.f61583a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnUseDrivingDirectionEvent;", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ClickOnUseDrivingDirectionEvent implements FindInStoreTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61584a;

        public ClickOnUseDrivingDirectionEvent(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f61584a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ClickOnUseDrivingDirectionEvent)) {
                return false;
            }
            String str = ((ClickOnUseDrivingDirectionEvent) obj).f61584a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61584a.equals(str);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61584a.hashCode();
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return fc.h("ClickOnUseDrivingDirectionEvent(sku=", this.f61584a, ")");
        }
    }
}
