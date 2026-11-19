package com.vuitton.android.presentation.screen.authentication.register.models;

import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import defpackage.a;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0007\u0002\u0003\u0004\u0005\u0006\u0007\b\u0082\u0001\u0007\t\n\u000b\f\r\u000e\u000f¨\u0006\u0010À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel;", "", "AddressInfoScreen", "AddressSearchScreen", "OnConfirmAddressClickedEvent", "OnSkipAddressClickedEvent", "OnSendSearchClickedEvent", "OnSelectAddressClickedEvent", "OnCloseSearchClickedEvent", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$AddressInfoScreen;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$AddressSearchScreen;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnCloseSearchClickedEvent;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnConfirmAddressClickedEvent;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnSelectAddressClickedEvent;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnSendSearchClickedEvent;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnSkipAddressClickedEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface NativeRegisterAddressTrackingUiModel {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$AddressInfoScreen;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;", "origin", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;", "entryPoint", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AddressInfoScreen implements NativeRegisterAddressTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TrackingAuthOrigin f53923a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrackingAuthEntryPoint f53924b;

        public AddressInfoScreen(TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint) {
            this.f53923a = trackingAuthOrigin;
            this.f53924b = trackingAuthEntryPoint;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AddressInfoScreen)) {
                return false;
            }
            AddressInfoScreen addressInfoScreen = (AddressInfoScreen) obj;
            return this.f53923a == addressInfoScreen.f53923a && this.f53924b == addressInfoScreen.f53924b;
        }

        public final int hashCode() {
            TrackingAuthOrigin trackingAuthOrigin = this.f53923a;
            int iHashCode = (trackingAuthOrigin == null ? 0 : trackingAuthOrigin.hashCode()) * 31;
            TrackingAuthEntryPoint trackingAuthEntryPoint = this.f53924b;
            return iHashCode + (trackingAuthEntryPoint != null ? trackingAuthEntryPoint.hashCode() : 0);
        }

        public final String toString() {
            return "AddressInfoScreen(origin=" + this.f53923a + ", entryPoint=" + this.f53924b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$AddressSearchScreen;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;", "origin", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;", "entryPoint", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AddressSearchScreen implements NativeRegisterAddressTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TrackingAuthOrigin f53925a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrackingAuthEntryPoint f53926b;

        public AddressSearchScreen(TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint) {
            this.f53925a = trackingAuthOrigin;
            this.f53926b = trackingAuthEntryPoint;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AddressSearchScreen)) {
                return false;
            }
            AddressSearchScreen addressSearchScreen = (AddressSearchScreen) obj;
            return this.f53925a == addressSearchScreen.f53925a && this.f53926b == addressSearchScreen.f53926b;
        }

        public final int hashCode() {
            TrackingAuthOrigin trackingAuthOrigin = this.f53925a;
            int iHashCode = (trackingAuthOrigin == null ? 0 : trackingAuthOrigin.hashCode()) * 31;
            TrackingAuthEntryPoint trackingAuthEntryPoint = this.f53926b;
            return iHashCode + (trackingAuthEntryPoint != null ? trackingAuthEntryPoint.hashCode() : 0);
        }

        public final String toString() {
            return "AddressSearchScreen(origin=" + this.f53925a + ", entryPoint=" + this.f53926b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnCloseSearchClickedEvent;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;", "origin", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;", "entryPoint", "", "nbTypedCharacters", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnCloseSearchClickedEvent implements NativeRegisterAddressTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TrackingAuthOrigin f53927a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrackingAuthEntryPoint f53928b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f53929c;

        public OnCloseSearchClickedEvent(TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint, int i2) {
            this.f53927a = trackingAuthOrigin;
            this.f53928b = trackingAuthEntryPoint;
            this.f53929c = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnCloseSearchClickedEvent)) {
                return false;
            }
            OnCloseSearchClickedEvent onCloseSearchClickedEvent = (OnCloseSearchClickedEvent) obj;
            return this.f53927a == onCloseSearchClickedEvent.f53927a && this.f53928b == onCloseSearchClickedEvent.f53928b && this.f53929c == onCloseSearchClickedEvent.f53929c;
        }

        public final int hashCode() {
            TrackingAuthOrigin trackingAuthOrigin = this.f53927a;
            int iHashCode = (trackingAuthOrigin == null ? 0 : trackingAuthOrigin.hashCode()) * 31;
            TrackingAuthEntryPoint trackingAuthEntryPoint = this.f53928b;
            return Integer.hashCode(this.f53929c) + ((iHashCode + (trackingAuthEntryPoint != null ? trackingAuthEntryPoint.hashCode() : 0)) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("OnCloseSearchClickedEvent(origin=");
            sb.append(this.f53927a);
            sb.append(", entryPoint=");
            sb.append(this.f53928b);
            sb.append(", nbTypedCharacters=");
            return a.i(this.f53929c, ")", sb);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnConfirmAddressClickedEvent;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;", "origin", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;", "entryPoint", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnConfirmAddressClickedEvent implements NativeRegisterAddressTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TrackingAuthOrigin f53930a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrackingAuthEntryPoint f53931b;

        public OnConfirmAddressClickedEvent(TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint) {
            this.f53930a = trackingAuthOrigin;
            this.f53931b = trackingAuthEntryPoint;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnConfirmAddressClickedEvent)) {
                return false;
            }
            OnConfirmAddressClickedEvent onConfirmAddressClickedEvent = (OnConfirmAddressClickedEvent) obj;
            return this.f53930a == onConfirmAddressClickedEvent.f53930a && this.f53931b == onConfirmAddressClickedEvent.f53931b;
        }

        public final int hashCode() {
            TrackingAuthOrigin trackingAuthOrigin = this.f53930a;
            int iHashCode = (trackingAuthOrigin == null ? 0 : trackingAuthOrigin.hashCode()) * 31;
            TrackingAuthEntryPoint trackingAuthEntryPoint = this.f53931b;
            return iHashCode + (trackingAuthEntryPoint != null ? trackingAuthEntryPoint.hashCode() : 0);
        }

        public final String toString() {
            return "OnConfirmAddressClickedEvent(origin=" + this.f53930a + ", entryPoint=" + this.f53931b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnSelectAddressClickedEvent;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;", "origin", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;", "entryPoint", "", "nbTypedCharacters", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSelectAddressClickedEvent implements NativeRegisterAddressTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TrackingAuthOrigin f53932a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrackingAuthEntryPoint f53933b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f53934c;

        public OnSelectAddressClickedEvent(TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint, int i2) {
            this.f53932a = trackingAuthOrigin;
            this.f53933b = trackingAuthEntryPoint;
            this.f53934c = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnSelectAddressClickedEvent)) {
                return false;
            }
            OnSelectAddressClickedEvent onSelectAddressClickedEvent = (OnSelectAddressClickedEvent) obj;
            return this.f53932a == onSelectAddressClickedEvent.f53932a && this.f53933b == onSelectAddressClickedEvent.f53933b && this.f53934c == onSelectAddressClickedEvent.f53934c;
        }

        public final int hashCode() {
            TrackingAuthOrigin trackingAuthOrigin = this.f53932a;
            int iHashCode = (trackingAuthOrigin == null ? 0 : trackingAuthOrigin.hashCode()) * 31;
            TrackingAuthEntryPoint trackingAuthEntryPoint = this.f53933b;
            return Integer.hashCode(this.f53934c) + ((iHashCode + (trackingAuthEntryPoint != null ? trackingAuthEntryPoint.hashCode() : 0)) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("OnSelectAddressClickedEvent(origin=");
            sb.append(this.f53932a);
            sb.append(", entryPoint=");
            sb.append(this.f53933b);
            sb.append(", nbTypedCharacters=");
            return a.i(this.f53934c, ")", sb);
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnSendSearchClickedEvent;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;", "origin", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;", "entryPoint", "", "nbTypedCharacters", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSendSearchClickedEvent implements NativeRegisterAddressTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TrackingAuthOrigin f53935a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrackingAuthEntryPoint f53936b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f53937c;

        public OnSendSearchClickedEvent(TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint, int i2) {
            this.f53935a = trackingAuthOrigin;
            this.f53936b = trackingAuthEntryPoint;
            this.f53937c = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnSendSearchClickedEvent)) {
                return false;
            }
            OnSendSearchClickedEvent onSendSearchClickedEvent = (OnSendSearchClickedEvent) obj;
            return this.f53935a == onSendSearchClickedEvent.f53935a && this.f53936b == onSendSearchClickedEvent.f53936b && this.f53937c == onSendSearchClickedEvent.f53937c;
        }

        public final int hashCode() {
            TrackingAuthOrigin trackingAuthOrigin = this.f53935a;
            int iHashCode = (trackingAuthOrigin == null ? 0 : trackingAuthOrigin.hashCode()) * 31;
            TrackingAuthEntryPoint trackingAuthEntryPoint = this.f53936b;
            return Integer.hashCode(this.f53937c) + ((iHashCode + (trackingAuthEntryPoint != null ? trackingAuthEntryPoint.hashCode() : 0)) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("OnSendSearchClickedEvent(origin=");
            sb.append(this.f53935a);
            sb.append(", entryPoint=");
            sb.append(this.f53936b);
            sb.append(", nbTypedCharacters=");
            return a.i(this.f53937c, ")", sb);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnSkipAddressClickedEvent;", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;", "origin", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;", "entryPoint", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSkipAddressClickedEvent implements NativeRegisterAddressTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TrackingAuthOrigin f53938a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrackingAuthEntryPoint f53939b;

        public OnSkipAddressClickedEvent(TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint) {
            this.f53938a = trackingAuthOrigin;
            this.f53939b = trackingAuthEntryPoint;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnSkipAddressClickedEvent)) {
                return false;
            }
            OnSkipAddressClickedEvent onSkipAddressClickedEvent = (OnSkipAddressClickedEvent) obj;
            return this.f53938a == onSkipAddressClickedEvent.f53938a && this.f53939b == onSkipAddressClickedEvent.f53939b;
        }

        public final int hashCode() {
            TrackingAuthOrigin trackingAuthOrigin = this.f53938a;
            int iHashCode = (trackingAuthOrigin == null ? 0 : trackingAuthOrigin.hashCode()) * 31;
            TrackingAuthEntryPoint trackingAuthEntryPoint = this.f53939b;
            return iHashCode + (trackingAuthEntryPoint != null ? trackingAuthEntryPoint.hashCode() : 0);
        }

        public final String toString() {
            return "OnSkipAddressClickedEvent(origin=" + this.f53938a + ", entryPoint=" + this.f53939b + ")";
        }
    }
}
