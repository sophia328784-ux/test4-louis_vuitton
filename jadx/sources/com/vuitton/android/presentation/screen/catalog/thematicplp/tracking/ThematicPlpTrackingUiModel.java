package com.vuitton.android.presentation.screen.catalog.thematicplp.tracking;

import com.vuitton.android.presentation.screen.catalog.thematicplp.models.GridModes;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\f\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u0082\u0001\f\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019¨\u0006\u001aÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel;", "", "ProductListScreen", "AddToWishlistClickedEvent", "AddToWishlistSuccessEvent", "RemoveFromWishlistClickedEvent", "ChangeLayoutButtonClickedEvent", "ChangeLayoutPinchInEvent", "ChangeLayoutPinchOutEvent", "ChangeThemeButtonClickedEvent", "ChangeThemeScrollEvent", "ChangeThemeClickedEvent", "BrandContentClickedEvent", "ProductClickedEvent", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$AddToWishlistClickedEvent;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$AddToWishlistSuccessEvent;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$BrandContentClickedEvent;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ChangeLayoutButtonClickedEvent;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ChangeLayoutPinchInEvent;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ChangeLayoutPinchOutEvent;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ChangeThemeButtonClickedEvent;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ChangeThemeClickedEvent;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ChangeThemeScrollEvent;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ProductClickedEvent;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ProductListScreen;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$RemoveFromWishlistClickedEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ThematicPlpTrackingUiModel {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$AddToWishlistClickedEvent;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/TrackingClickType;", "trackingClickType", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/TrackingClickType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AddToWishlistClickedEvent implements ThematicPlpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55515a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrackingClickType f55516b;

        public AddToWishlistClickedEvent(String str, TrackingClickType trackingClickType, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            trackingClickType.getClass();
            this.f55515a = str;
            this.f55516b = trackingClickType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AddToWishlistClickedEvent)) {
                return false;
            }
            AddToWishlistClickedEvent addToWishlistClickedEvent = (AddToWishlistClickedEvent) obj;
            String str = addToWishlistClickedEvent.f55515a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f55515a.equals(str) && this.f55516b == addToWishlistClickedEvent.f55516b;
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f55516b.hashCode() + (this.f55515a.hashCode() * 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return "AddToWishlistClickedEvent(sku=" + this.f55515a + ", trackingClickType=" + this.f55516b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$AddToWishlistSuccessEvent;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AddToWishlistSuccessEvent implements ThematicPlpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55517a;

        public AddToWishlistSuccessEvent(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f55517a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AddToWishlistSuccessEvent)) {
                return false;
            }
            String str = ((AddToWishlistSuccessEvent) obj).f55517a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f55517a.equals(str);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f55517a.hashCode();
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return fc.h("AddToWishlistSuccessEvent(sku=", this.f55517a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$BrandContentClickedEvent;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BrandContentClickedEvent implements ThematicPlpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55518a;

        public BrandContentClickedEvent(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f55518a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BrandContentClickedEvent)) {
                return false;
            }
            String str = ((BrandContentClickedEvent) obj).f55518a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f55518a.equals(str);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f55518a.hashCode();
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return fc.h("BrandContentClickedEvent(sku=", this.f55518a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ChangeLayoutButtonClickedEvent;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;", "gridMode", "<init>", "(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ChangeLayoutButtonClickedEvent implements ThematicPlpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final GridModes f55519a;

        public ChangeLayoutButtonClickedEvent(GridModes gridModes) {
            gridModes.getClass();
            this.f55519a = gridModes;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ChangeLayoutButtonClickedEvent) && Intrinsics.c(this.f55519a, ((ChangeLayoutButtonClickedEvent) obj).f55519a);
        }

        public final int hashCode() {
            return this.f55519a.hashCode();
        }

        public final String toString() {
            return "ChangeLayoutButtonClickedEvent(gridMode=" + this.f55519a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ChangeLayoutPinchInEvent;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;", "gridMode", "<init>", "(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ChangeLayoutPinchInEvent implements ThematicPlpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final GridModes f55520a;

        public ChangeLayoutPinchInEvent(GridModes gridModes) {
            gridModes.getClass();
            this.f55520a = gridModes;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ChangeLayoutPinchInEvent) && Intrinsics.c(this.f55520a, ((ChangeLayoutPinchInEvent) obj).f55520a);
        }

        public final int hashCode() {
            return this.f55520a.hashCode();
        }

        public final String toString() {
            return "ChangeLayoutPinchInEvent(gridMode=" + this.f55520a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ChangeLayoutPinchOutEvent;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;", "gridMode", "<init>", "(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ChangeLayoutPinchOutEvent implements ThematicPlpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final GridModes f55521a;

        public ChangeLayoutPinchOutEvent(GridModes gridModes) {
            gridModes.getClass();
            this.f55521a = gridModes;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ChangeLayoutPinchOutEvent) && Intrinsics.c(this.f55521a, ((ChangeLayoutPinchOutEvent) obj).f55521a);
        }

        public final int hashCode() {
            return this.f55521a.hashCode();
        }

        public final String toString() {
            return "ChangeLayoutPinchOutEvent(gridMode=" + this.f55521a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ChangeThemeButtonClickedEvent;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ChangeThemeButtonClickedEvent implements ThematicPlpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ChangeThemeButtonClickedEvent f55522a = new ChangeThemeButtonClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ChangeThemeButtonClickedEvent);
        }

        public final int hashCode() {
            return 44518339;
        }

        public final String toString() {
            return "ChangeThemeButtonClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ChangeThemeClickedEvent;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel;", "", "themeId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ChangeThemeClickedEvent implements ThematicPlpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55523a;

        public ChangeThemeClickedEvent(String str) {
            str.getClass();
            this.f55523a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ChangeThemeClickedEvent) && Intrinsics.c(this.f55523a, ((ChangeThemeClickedEvent) obj).f55523a);
        }

        public final int hashCode() {
            return this.f55523a.hashCode();
        }

        public final String toString() {
            return fc.h("ChangeThemeClickedEvent(themeId=", this.f55523a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ChangeThemeScrollEvent;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel;", "", "themeId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ChangeThemeScrollEvent implements ThematicPlpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55524a;

        public ChangeThemeScrollEvent(String str) {
            str.getClass();
            this.f55524a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ChangeThemeScrollEvent) && Intrinsics.c(this.f55524a, ((ChangeThemeScrollEvent) obj).f55524a);
        }

        public final int hashCode() {
            return this.f55524a.hashCode();
        }

        public final String toString() {
            return fc.h("ChangeThemeScrollEvent(themeId=", this.f55524a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ProductClickedEvent;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ProductClickedEvent implements ThematicPlpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55525a;

        public ProductClickedEvent(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f55525a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProductClickedEvent)) {
                return false;
            }
            String str = ((ProductClickedEvent) obj).f55525a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f55525a.equals(str);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f55525a.hashCode();
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return fc.h("ProductClickedEvent(sku=", this.f55525a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ProductListScreen;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ProductListScreen implements ThematicPlpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ProductListScreen f55526a = new ProductListScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ProductListScreen);
        }

        public final int hashCode() {
            return -1593855650;
        }

        public final String toString() {
            return "ProductListScreen";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$RemoveFromWishlistClickedEvent;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/TrackingClickType;", "trackingClickType", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/TrackingClickType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RemoveFromWishlistClickedEvent implements ThematicPlpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55527a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrackingClickType f55528b;

        public RemoveFromWishlistClickedEvent(String str, TrackingClickType trackingClickType, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            trackingClickType.getClass();
            this.f55527a = str;
            this.f55528b = trackingClickType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RemoveFromWishlistClickedEvent)) {
                return false;
            }
            RemoveFromWishlistClickedEvent removeFromWishlistClickedEvent = (RemoveFromWishlistClickedEvent) obj;
            String str = removeFromWishlistClickedEvent.f55527a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f55527a.equals(str) && this.f55528b == removeFromWishlistClickedEvent.f55528b;
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f55528b.hashCode() + (this.f55527a.hashCode() * 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return "RemoveFromWishlistClickedEvent(sku=" + this.f55527a + ", trackingClickType=" + this.f55528b + ")";
        }
    }
}
