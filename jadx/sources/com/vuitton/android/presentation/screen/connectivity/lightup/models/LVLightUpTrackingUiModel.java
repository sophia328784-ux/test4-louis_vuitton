package com.vuitton.android.presentation.screen.connectivity.lightup.models;

import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0013\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0082\u0001\u0013\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&'¨\u0006(À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;", "", "GeneralScreen", "PairingScreen", "ResultScreen", "ProductPageScreen", "FaqScreen", "NeedHelpClickEvent", "OpenSectionEvent", "PairButtonClickEvent", "PairButtonFromBottomSheetClickEvent", "PairNoDeviceFoundCancelButtonClickEvent", "PairNoDeviceFoundBottomSheetEvent", "ConfirmPairingButtonClickEvent", "CancelPairingWhenDeviceFoundButtonClickEvent", "SetPresetEvent", "OnModeClickedEvent", "FaqCategoryClickEvent", "ConnectivityPageConnectToAPairedObjectEvent", "DiscoverVideoClickEvent", "UnPairObjectEvent", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$CancelPairingWhenDeviceFoundButtonClickEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$ConfirmPairingButtonClickEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$ConnectivityPageConnectToAPairedObjectEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$DiscoverVideoClickEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$FaqCategoryClickEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$FaqScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$GeneralScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$NeedHelpClickEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$OnModeClickedEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$OpenSectionEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$PairButtonClickEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$PairButtonFromBottomSheetClickEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$PairNoDeviceFoundBottomSheetEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$PairNoDeviceFoundCancelButtonClickEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$PairingScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$ProductPageScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$ResultScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$SetPresetEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$UnPairObjectEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface LVLightUpTrackingUiModel {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$CancelPairingWhenDeviceFoundButtonClickEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;", "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;", "productType", "<init>", "(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CancelPairingWhenDeviceFoundButtonClickEvent implements LVLightUpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LVLightUpDeviceType f56215a;

        public CancelPairingWhenDeviceFoundButtonClickEvent(LVLightUpDeviceType lVLightUpDeviceType) {
            lVLightUpDeviceType.getClass();
            this.f56215a = lVLightUpDeviceType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CancelPairingWhenDeviceFoundButtonClickEvent) && this.f56215a == ((CancelPairingWhenDeviceFoundButtonClickEvent) obj).f56215a;
        }

        public final int hashCode() {
            return this.f56215a.hashCode();
        }

        public final String toString() {
            return "CancelPairingWhenDeviceFoundButtonClickEvent(productType=" + this.f56215a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$ConfirmPairingButtonClickEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;", "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;", "productType", "<init>", "(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ConfirmPairingButtonClickEvent implements LVLightUpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LVLightUpDeviceType f56216a;

        public ConfirmPairingButtonClickEvent(LVLightUpDeviceType lVLightUpDeviceType) {
            lVLightUpDeviceType.getClass();
            this.f56216a = lVLightUpDeviceType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ConfirmPairingButtonClickEvent) && this.f56216a == ((ConfirmPairingButtonClickEvent) obj).f56216a;
        }

        public final int hashCode() {
            return this.f56216a.hashCode();
        }

        public final String toString() {
            return "ConfirmPairingButtonClickEvent(productType=" + this.f56216a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$ConnectivityPageConnectToAPairedObjectEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;", "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;", "productType", "<init>", "(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ConnectivityPageConnectToAPairedObjectEvent implements LVLightUpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LVLightUpDeviceType f56217a;

        public ConnectivityPageConnectToAPairedObjectEvent(LVLightUpDeviceType lVLightUpDeviceType) {
            lVLightUpDeviceType.getClass();
            this.f56217a = lVLightUpDeviceType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ConnectivityPageConnectToAPairedObjectEvent) && this.f56217a == ((ConnectivityPageConnectToAPairedObjectEvent) obj).f56217a;
        }

        public final int hashCode() {
            return this.f56217a.hashCode();
        }

        public final String toString() {
            return "ConnectivityPageConnectToAPairedObjectEvent(productType=" + this.f56217a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$DiscoverVideoClickEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;", "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;", "productType", "<init>", "(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class DiscoverVideoClickEvent implements LVLightUpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LVLightUpDeviceType f56218a;

        public DiscoverVideoClickEvent(LVLightUpDeviceType lVLightUpDeviceType) {
            lVLightUpDeviceType.getClass();
            this.f56218a = lVLightUpDeviceType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof DiscoverVideoClickEvent) && this.f56218a == ((DiscoverVideoClickEvent) obj).f56218a;
        }

        public final int hashCode() {
            return this.f56218a.hashCode();
        }

        public final String toString() {
            return "DiscoverVideoClickEvent(productType=" + this.f56218a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$FaqCategoryClickEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;", "", "categoryId", "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;", "productType", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class FaqCategoryClickEvent implements LVLightUpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f56219a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LVLightUpDeviceType f56220b;

        public FaqCategoryClickEvent(String str, LVLightUpDeviceType lVLightUpDeviceType) {
            lVLightUpDeviceType.getClass();
            this.f56219a = str;
            this.f56220b = lVLightUpDeviceType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof FaqCategoryClickEvent)) {
                return false;
            }
            FaqCategoryClickEvent faqCategoryClickEvent = (FaqCategoryClickEvent) obj;
            return Intrinsics.c(this.f56219a, faqCategoryClickEvent.f56219a) && this.f56220b == faqCategoryClickEvent.f56220b;
        }

        public final int hashCode() {
            String str = this.f56219a;
            return this.f56220b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
        }

        public final String toString() {
            return "FaqCategoryClickEvent(categoryId=" + this.f56219a + ", productType=" + this.f56220b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$FaqScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;", "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;", "productType", "<init>", "(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class FaqScreen implements LVLightUpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LVLightUpDeviceType f56221a;

        public FaqScreen(LVLightUpDeviceType lVLightUpDeviceType) {
            lVLightUpDeviceType.getClass();
            this.f56221a = lVLightUpDeviceType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof FaqScreen) && this.f56221a == ((FaqScreen) obj).f56221a;
        }

        public final int hashCode() {
            return this.f56221a.hashCode();
        }

        public final String toString() {
            return "FaqScreen(productType=" + this.f56221a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$GeneralScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;", "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;", "productType", "<init>", "(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class GeneralScreen implements LVLightUpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LVLightUpDeviceType f56222a;

        public GeneralScreen(LVLightUpDeviceType lVLightUpDeviceType) {
            lVLightUpDeviceType.getClass();
            this.f56222a = lVLightUpDeviceType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof GeneralScreen) && this.f56222a == ((GeneralScreen) obj).f56222a;
        }

        public final int hashCode() {
            return this.f56222a.hashCode();
        }

        public final String toString() {
            return "GeneralScreen(productType=" + this.f56222a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$NeedHelpClickEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;", "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;", "productType", "<init>", "(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NeedHelpClickEvent implements LVLightUpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LVLightUpDeviceType f56223a;

        public NeedHelpClickEvent(LVLightUpDeviceType lVLightUpDeviceType) {
            lVLightUpDeviceType.getClass();
            this.f56223a = lVLightUpDeviceType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof NeedHelpClickEvent) && this.f56223a == ((NeedHelpClickEvent) obj).f56223a;
        }

        public final int hashCode() {
            return this.f56223a.hashCode();
        }

        public final String toString() {
            return "NeedHelpClickEvent(productType=" + this.f56223a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$OnModeClickedEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;", "", "modeName", "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;", "productType", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnModeClickedEvent implements LVLightUpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f56224a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LVLightUpDeviceType f56225b;

        public OnModeClickedEvent(String str, LVLightUpDeviceType lVLightUpDeviceType) {
            str.getClass();
            lVLightUpDeviceType.getClass();
            this.f56224a = str;
            this.f56225b = lVLightUpDeviceType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnModeClickedEvent)) {
                return false;
            }
            OnModeClickedEvent onModeClickedEvent = (OnModeClickedEvent) obj;
            return Intrinsics.c(this.f56224a, onModeClickedEvent.f56224a) && this.f56225b == onModeClickedEvent.f56225b;
        }

        public final int hashCode() {
            return this.f56225b.hashCode() + (this.f56224a.hashCode() * 31);
        }

        public final String toString() {
            return "OnModeClickedEvent(modeName=" + this.f56224a + ", productType=" + this.f56225b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$OpenSectionEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;", "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;", "productType", "<init>", "(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenSectionEvent implements LVLightUpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LVLightUpDeviceType f56226a;

        public OpenSectionEvent(LVLightUpDeviceType lVLightUpDeviceType) {
            lVLightUpDeviceType.getClass();
            this.f56226a = lVLightUpDeviceType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OpenSectionEvent) && this.f56226a == ((OpenSectionEvent) obj).f56226a;
        }

        public final int hashCode() {
            return this.f56226a.hashCode();
        }

        public final String toString() {
            return "OpenSectionEvent(productType=" + this.f56226a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$PairButtonClickEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;", "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;", "productType", "<init>", "(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PairButtonClickEvent implements LVLightUpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LVLightUpDeviceType f56227a;

        public PairButtonClickEvent(LVLightUpDeviceType lVLightUpDeviceType) {
            lVLightUpDeviceType.getClass();
            this.f56227a = lVLightUpDeviceType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof PairButtonClickEvent) && this.f56227a == ((PairButtonClickEvent) obj).f56227a;
        }

        public final int hashCode() {
            return this.f56227a.hashCode();
        }

        public final String toString() {
            return "PairButtonClickEvent(productType=" + this.f56227a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$PairButtonFromBottomSheetClickEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;", "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;", "productType", "<init>", "(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PairButtonFromBottomSheetClickEvent implements LVLightUpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LVLightUpDeviceType f56228a;

        public PairButtonFromBottomSheetClickEvent(LVLightUpDeviceType lVLightUpDeviceType) {
            lVLightUpDeviceType.getClass();
            this.f56228a = lVLightUpDeviceType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof PairButtonFromBottomSheetClickEvent) && this.f56228a == ((PairButtonFromBottomSheetClickEvent) obj).f56228a;
        }

        public final int hashCode() {
            return this.f56228a.hashCode();
        }

        public final String toString() {
            return "PairButtonFromBottomSheetClickEvent(productType=" + this.f56228a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$PairNoDeviceFoundBottomSheetEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;", "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;", "productType", "<init>", "(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PairNoDeviceFoundBottomSheetEvent implements LVLightUpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LVLightUpDeviceType f56229a;

        public PairNoDeviceFoundBottomSheetEvent(LVLightUpDeviceType lVLightUpDeviceType) {
            lVLightUpDeviceType.getClass();
            this.f56229a = lVLightUpDeviceType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof PairNoDeviceFoundBottomSheetEvent) && this.f56229a == ((PairNoDeviceFoundBottomSheetEvent) obj).f56229a;
        }

        public final int hashCode() {
            return this.f56229a.hashCode();
        }

        public final String toString() {
            return "PairNoDeviceFoundBottomSheetEvent(productType=" + this.f56229a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$PairNoDeviceFoundCancelButtonClickEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;", "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;", "productType", "<init>", "(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PairNoDeviceFoundCancelButtonClickEvent implements LVLightUpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LVLightUpDeviceType f56230a;

        public PairNoDeviceFoundCancelButtonClickEvent(LVLightUpDeviceType lVLightUpDeviceType) {
            lVLightUpDeviceType.getClass();
            this.f56230a = lVLightUpDeviceType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof PairNoDeviceFoundCancelButtonClickEvent) && this.f56230a == ((PairNoDeviceFoundCancelButtonClickEvent) obj).f56230a;
        }

        public final int hashCode() {
            return this.f56230a.hashCode();
        }

        public final String toString() {
            return "PairNoDeviceFoundCancelButtonClickEvent(productType=" + this.f56230a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$PairingScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;", "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;", "productType", "<init>", "(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PairingScreen implements LVLightUpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LVLightUpDeviceType f56231a;

        public PairingScreen(LVLightUpDeviceType lVLightUpDeviceType) {
            lVLightUpDeviceType.getClass();
            this.f56231a = lVLightUpDeviceType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof PairingScreen) && this.f56231a == ((PairingScreen) obj).f56231a;
        }

        public final int hashCode() {
            return this.f56231a.hashCode();
        }

        public final String toString() {
            return "PairingScreen(productType=" + this.f56231a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$ProductPageScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;", "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;", "productType", "<init>", "(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ProductPageScreen implements LVLightUpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LVLightUpDeviceType f56232a;

        public ProductPageScreen(LVLightUpDeviceType lVLightUpDeviceType) {
            lVLightUpDeviceType.getClass();
            this.f56232a = lVLightUpDeviceType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ProductPageScreen) && this.f56232a == ((ProductPageScreen) obj).f56232a;
        }

        public final int hashCode() {
            return this.f56232a.hashCode();
        }

        public final String toString() {
            return "ProductPageScreen(productType=" + this.f56232a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$ResultScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;", "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;", "productType", "<init>", "(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ResultScreen implements LVLightUpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LVLightUpDeviceType f56233a;

        public ResultScreen(LVLightUpDeviceType lVLightUpDeviceType) {
            lVLightUpDeviceType.getClass();
            this.f56233a = lVLightUpDeviceType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ResultScreen) && this.f56233a == ((ResultScreen) obj).f56233a;
        }

        public final int hashCode() {
            return this.f56233a.hashCode();
        }

        public final String toString() {
            return "ResultScreen(productType=" + this.f56233a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$SetPresetEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;", "", "presetName", "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;", "productType", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SetPresetEvent implements LVLightUpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f56234a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LVLightUpDeviceType f56235b;

        public SetPresetEvent(String str, LVLightUpDeviceType lVLightUpDeviceType) {
            str.getClass();
            lVLightUpDeviceType.getClass();
            this.f56234a = str;
            this.f56235b = lVLightUpDeviceType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SetPresetEvent)) {
                return false;
            }
            SetPresetEvent setPresetEvent = (SetPresetEvent) obj;
            return Intrinsics.c(this.f56234a, setPresetEvent.f56234a) && this.f56235b == setPresetEvent.f56235b;
        }

        public final int hashCode() {
            return this.f56235b.hashCode() + (this.f56234a.hashCode() * 31);
        }

        public final String toString() {
            return "SetPresetEvent(presetName=" + this.f56234a + ", productType=" + this.f56235b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$UnPairObjectEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;", "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;", "productType", "<init>", "(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class UnPairObjectEvent implements LVLightUpTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LVLightUpDeviceType f56236a;

        public UnPairObjectEvent(LVLightUpDeviceType lVLightUpDeviceType) {
            lVLightUpDeviceType.getClass();
            this.f56236a = lVLightUpDeviceType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UnPairObjectEvent) && this.f56236a == ((UnPairObjectEvent) obj).f56236a;
        }

        public final int hashCode() {
            return this.f56236a.hashCode();
        }

        public final String toString() {
            return "UnPairObjectEvent(productType=" + this.f56236a + ")";
        }
    }
}
