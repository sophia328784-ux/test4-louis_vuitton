package com.vuitton.android.presentation.screen.plp.models;

import com.vuitton.android.presentation.screen.catalog.thematicplp.models.GridModes;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeContentUiModel;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.d21;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0011\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0082\u0001\u0011\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#¨\u0006$À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;", "", "Screen", "FilterClickedEvent", "SearchOpenedEvent", "ScreenshotTakenEvent", "AddToWishlistEvent", "RemoveFromWishlistEvent", "NativeShareRequestedEvent", "AddToWishlistSuccessEvent", "LongPressedEvent", "ShareProductEvent", "PlpScrolledEvent", "AddToWishlistRevampEvent", "StoreModeContentTypeSelectedEvent", "ChangeLayoutClickedEvent", "RemoveFromWishlistRevampEvent", "DispatchFilterSelectedEvent", "DispatchFilterSwipedEvent", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$AddToWishlistEvent;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$AddToWishlistRevampEvent;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$AddToWishlistSuccessEvent;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$ChangeLayoutClickedEvent;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$DispatchFilterSelectedEvent;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$DispatchFilterSwipedEvent;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$FilterClickedEvent;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$LongPressedEvent;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$NativeShareRequestedEvent;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$PlpScrolledEvent;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$RemoveFromWishlistEvent;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$RemoveFromWishlistRevampEvent;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$Screen;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$ScreenshotTakenEvent;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$SearchOpenedEvent;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$ShareProductEvent;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$StoreModeContentTypeSelectedEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PLPTrackingUiModel {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$AddToWishlistEvent;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AddToWishlistEvent implements PLPTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62879a;

        public AddToWishlistEvent(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f62879a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AddToWishlistEvent)) {
                return false;
            }
            String str = ((AddToWishlistEvent) obj).f62879a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62879a.equals(str);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62879a.hashCode();
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return fc.h("AddToWishlistEvent(sku=", this.f62879a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$AddToWishlistRevampEvent;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "plpTitle", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AddToWishlistRevampEvent implements PLPTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62880a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f62881b;

        public AddToWishlistRevampEvent(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            str2.getClass();
            this.f62880a = str;
            this.f62881b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AddToWishlistRevampEvent)) {
                return false;
            }
            AddToWishlistRevampEvent addToWishlistRevampEvent = (AddToWishlistRevampEvent) obj;
            String str = addToWishlistRevampEvent.f62880a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62880a.equals(str) && this.f62881b.equals(addToWishlistRevampEvent.f62881b);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62881b.hashCode() + (this.f62880a.hashCode() * 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return d21.l("AddToWishlistRevampEvent(sku=", this.f62880a, ", plpTitle=", this.f62881b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$AddToWishlistSuccessEvent;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AddToWishlistSuccessEvent implements PLPTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62882a;

        public AddToWishlistSuccessEvent(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f62882a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AddToWishlistSuccessEvent)) {
                return false;
            }
            String str = ((AddToWishlistSuccessEvent) obj).f62882a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62882a.equals(str);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62882a.hashCode();
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return fc.h("AddToWishlistSuccessEvent(sku=", this.f62882a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$ChangeLayoutClickedEvent;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;", "gridMode", "", "plpTitle", "<init>", "(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ChangeLayoutClickedEvent implements PLPTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final GridModes f62883a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f62884b;

        public ChangeLayoutClickedEvent(GridModes gridModes, String str) {
            gridModes.getClass();
            str.getClass();
            this.f62883a = gridModes;
            this.f62884b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ChangeLayoutClickedEvent)) {
                return false;
            }
            ChangeLayoutClickedEvent changeLayoutClickedEvent = (ChangeLayoutClickedEvent) obj;
            return Intrinsics.c(this.f62883a, changeLayoutClickedEvent.f62883a) && Intrinsics.c(this.f62884b, changeLayoutClickedEvent.f62884b);
        }

        public final int hashCode() {
            return this.f62884b.hashCode() + (this.f62883a.hashCode() * 31);
        }

        public final String toString() {
            return "ChangeLayoutClickedEvent(gridMode=" + this.f62883a + ", plpTitle=" + this.f62884b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$DispatchFilterSelectedEvent;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;", "", "filterId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class DispatchFilterSelectedEvent implements PLPTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62885a;

        public DispatchFilterSelectedEvent(String str) {
            str.getClass();
            this.f62885a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof DispatchFilterSelectedEvent) && Intrinsics.c(this.f62885a, ((DispatchFilterSelectedEvent) obj).f62885a);
        }

        public final int hashCode() {
            return this.f62885a.hashCode();
        }

        public final String toString() {
            return fc.h("DispatchFilterSelectedEvent(filterId=", this.f62885a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$DispatchFilterSwipedEvent;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class DispatchFilterSwipedEvent implements PLPTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final DispatchFilterSwipedEvent f62886a = new DispatchFilterSwipedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof DispatchFilterSwipedEvent);
        }

        public final int hashCode() {
            return 1996743813;
        }

        public final String toString() {
            return "DispatchFilterSwipedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$FilterClickedEvent;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class FilterClickedEvent implements PLPTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final FilterClickedEvent f62887a = new FilterClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof FilterClickedEvent);
        }

        public final int hashCode() {
            return -1671179260;
        }

        public final String toString() {
            return "FilterClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$LongPressedEvent;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "", "plpTitle", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LongPressedEvent implements PLPTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62888a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f62889b;

        public LongPressedEvent(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            str2.getClass();
            this.f62888a = str;
            this.f62889b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof LongPressedEvent)) {
                return false;
            }
            LongPressedEvent longPressedEvent = (LongPressedEvent) obj;
            String str = longPressedEvent.f62888a;
            SkuId.Companion companion = SkuId.INSTANCE;
            return this.f62888a.equals(str) && this.f62889b.equals(longPressedEvent.f62889b);
        }

        public final int hashCode() {
            SkuId.Companion companion = SkuId.INSTANCE;
            return this.f62889b.hashCode() + (this.f62888a.hashCode() * 31);
        }

        public final String toString() {
            SkuId.Companion companion = SkuId.INSTANCE;
            return d21.l("LongPressedEvent(sku=", this.f62888a, ", plpTitle=", this.f62889b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$NativeShareRequestedEvent;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;", "", "headerTitle", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NativeShareRequestedEvent implements PLPTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62890a;

        public NativeShareRequestedEvent(String str) {
            str.getClass();
            this.f62890a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof NativeShareRequestedEvent) && Intrinsics.c(this.f62890a, ((NativeShareRequestedEvent) obj).f62890a);
        }

        public final int hashCode() {
            return this.f62890a.hashCode();
        }

        public final String toString() {
            return fc.h("NativeShareRequestedEvent(headerTitle=", this.f62890a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$RemoveFromWishlistEvent;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RemoveFromWishlistEvent implements PLPTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62893a;

        public RemoveFromWishlistEvent(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f62893a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RemoveFromWishlistEvent)) {
                return false;
            }
            String str = ((RemoveFromWishlistEvent) obj).f62893a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62893a.equals(str);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62893a.hashCode();
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return fc.h("RemoveFromWishlistEvent(sku=", this.f62893a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$RemoveFromWishlistRevampEvent;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "plpTitle", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RemoveFromWishlistRevampEvent implements PLPTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62894a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f62895b;

        public RemoveFromWishlistRevampEvent(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            str2.getClass();
            this.f62894a = str;
            this.f62895b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RemoveFromWishlistRevampEvent)) {
                return false;
            }
            RemoveFromWishlistRevampEvent removeFromWishlistRevampEvent = (RemoveFromWishlistRevampEvent) obj;
            String str = removeFromWishlistRevampEvent.f62894a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62894a.equals(str) && this.f62895b.equals(removeFromWishlistRevampEvent.f62895b);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62895b.hashCode() + (this.f62894a.hashCode() * 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return d21.l("RemoveFromWishlistRevampEvent(sku=", this.f62894a, ", plpTitle=", this.f62895b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$Screen;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Screen implements PLPTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Screen f62896a = new Screen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Screen);
        }

        public final int hashCode() {
            return 52626341;
        }

        public final String toString() {
            return "Screen";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$ScreenshotTakenEvent;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;", "", "plpName", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ScreenshotTakenEvent implements PLPTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62897a;

        public ScreenshotTakenEvent(String str) {
            str.getClass();
            this.f62897a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ScreenshotTakenEvent) && Intrinsics.c(this.f62897a, ((ScreenshotTakenEvent) obj).f62897a);
        }

        public final int hashCode() {
            return this.f62897a.hashCode();
        }

        public final String toString() {
            return fc.h("ScreenshotTakenEvent(plpName=", this.f62897a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$SearchOpenedEvent;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SearchOpenedEvent implements PLPTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final SearchOpenedEvent f62898a = new SearchOpenedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof SearchOpenedEvent);
        }

        public final int hashCode() {
            return 2114251792;
        }

        public final String toString() {
            return "SearchOpenedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$ShareProductEvent;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "plpTitle", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ShareProductEvent implements PLPTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62899a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f62900b;

        public ShareProductEvent(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            str2.getClass();
            this.f62899a = str;
            this.f62900b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ShareProductEvent)) {
                return false;
            }
            ShareProductEvent shareProductEvent = (ShareProductEvent) obj;
            String str = shareProductEvent.f62899a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62899a.equals(str) && this.f62900b.equals(shareProductEvent.f62900b);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62900b.hashCode() + (this.f62899a.hashCode() * 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return d21.l("ShareProductEvent(sku=", this.f62899a, ", plpTitle=", this.f62900b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$StoreModeContentTypeSelectedEvent;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;", "content", "<init>", "(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class StoreModeContentTypeSelectedEvent implements PLPTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final StoreModeContentUiModel f62901a;

        public StoreModeContentTypeSelectedEvent(StoreModeContentUiModel storeModeContentUiModel) {
            storeModeContentUiModel.getClass();
            this.f62901a = storeModeContentUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof StoreModeContentTypeSelectedEvent) && this.f62901a == ((StoreModeContentTypeSelectedEvent) obj).f62901a;
        }

        public final int hashCode() {
            return this.f62901a.hashCode();
        }

        public final String toString() {
            return "StoreModeContentTypeSelectedEvent(content=" + this.f62901a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$PlpScrolledEvent;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;", "", "percentage", "", "isSearch", "<init>", "(IZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PlpScrolledEvent implements PLPTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f62891a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f62892b;

        public /* synthetic */ PlpScrolledEvent(int i2, boolean z, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this(i2, (i3 & 2) != 0 ? false : z);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PlpScrolledEvent)) {
                return false;
            }
            PlpScrolledEvent plpScrolledEvent = (PlpScrolledEvent) obj;
            return this.f62891a == plpScrolledEvent.f62891a && this.f62892b == plpScrolledEvent.f62892b;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f62892b) + (Integer.hashCode(this.f62891a) * 31);
        }

        public final String toString() {
            return "PlpScrolledEvent(percentage=" + this.f62891a + ", isSearch=" + this.f62892b + ")";
        }

        public PlpScrolledEvent(int i2, boolean z) {
            this.f62891a = i2;
            this.f62892b = z;
        }
    }
}
