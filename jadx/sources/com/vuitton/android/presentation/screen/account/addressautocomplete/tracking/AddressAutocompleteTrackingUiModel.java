package com.vuitton.android.presentation.screen.account.addressautocomplete.tracking;

import defpackage.n00;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0005\u0007\b\t\n\u000b¨\u0006\fÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addressautocomplete/tracking/AddressAutocompleteTrackingUiModel;", "", "AddressAutocompletePage", "OpenAddressSearchClickedEvent", "AutocompleteSucceededEvent", "AutocompleteManualAddressClickedEvent", "AutocompleteManualConfirmClickedEvent", "Lcom/vuitton/android/presentation/screen/account/addressautocomplete/tracking/AddressAutocompleteTrackingUiModel$AddressAutocompletePage;", "Lcom/vuitton/android/presentation/screen/account/addressautocomplete/tracking/AddressAutocompleteTrackingUiModel$AutocompleteManualAddressClickedEvent;", "Lcom/vuitton/android/presentation/screen/account/addressautocomplete/tracking/AddressAutocompleteTrackingUiModel$AutocompleteManualConfirmClickedEvent;", "Lcom/vuitton/android/presentation/screen/account/addressautocomplete/tracking/AddressAutocompleteTrackingUiModel$AutocompleteSucceededEvent;", "Lcom/vuitton/android/presentation/screen/account/addressautocomplete/tracking/AddressAutocompleteTrackingUiModel$OpenAddressSearchClickedEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AddressAutocompleteTrackingUiModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addressautocomplete/tracking/AddressAutocompleteTrackingUiModel$AddressAutocompletePage;", "Lcom/vuitton/android/presentation/screen/account/addressautocomplete/tracking/AddressAutocompleteTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AddressAutocompletePage implements AddressAutocompleteTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final AddressAutocompletePage f52129a = new AddressAutocompletePage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AddressAutocompletePage);
        }

        public final int hashCode() {
            return 1578845060;
        }

        public final String toString() {
            return "AddressAutocompletePage";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addressautocomplete/tracking/AddressAutocompleteTrackingUiModel$AutocompleteManualAddressClickedEvent;", "Lcom/vuitton/android/presentation/screen/account/addressautocomplete/tracking/AddressAutocompleteTrackingUiModel;", "", "nbTypedCharacters", "<init>", "(I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AutocompleteManualAddressClickedEvent implements AddressAutocompleteTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f52130a;

        public AutocompleteManualAddressClickedEvent(int i2) {
            this.f52130a = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AutocompleteManualAddressClickedEvent) && this.f52130a == ((AutocompleteManualAddressClickedEvent) obj).f52130a;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f52130a);
        }

        public final String toString() {
            return n00.m(this.f52130a, "AutocompleteManualAddressClickedEvent(nbTypedCharacters=", ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addressautocomplete/tracking/AddressAutocompleteTrackingUiModel$AutocompleteManualConfirmClickedEvent;", "Lcom/vuitton/android/presentation/screen/account/addressautocomplete/tracking/AddressAutocompleteTrackingUiModel;", "", "nbTypedCharacters", "<init>", "(I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AutocompleteManualConfirmClickedEvent implements AddressAutocompleteTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f52131a;

        public AutocompleteManualConfirmClickedEvent(int i2) {
            this.f52131a = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AutocompleteManualConfirmClickedEvent) && this.f52131a == ((AutocompleteManualConfirmClickedEvent) obj).f52131a;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f52131a);
        }

        public final String toString() {
            return n00.m(this.f52131a, "AutocompleteManualConfirmClickedEvent(nbTypedCharacters=", ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addressautocomplete/tracking/AddressAutocompleteTrackingUiModel$AutocompleteSucceededEvent;", "Lcom/vuitton/android/presentation/screen/account/addressautocomplete/tracking/AddressAutocompleteTrackingUiModel;", "", "nbTypedCharacters", "<init>", "(I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AutocompleteSucceededEvent implements AddressAutocompleteTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f52132a;

        public AutocompleteSucceededEvent(int i2) {
            this.f52132a = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AutocompleteSucceededEvent) && this.f52132a == ((AutocompleteSucceededEvent) obj).f52132a;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f52132a);
        }

        public final String toString() {
            return n00.m(this.f52132a, "AutocompleteSucceededEvent(nbTypedCharacters=", ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addressautocomplete/tracking/AddressAutocompleteTrackingUiModel$OpenAddressSearchClickedEvent;", "Lcom/vuitton/android/presentation/screen/account/addressautocomplete/tracking/AddressAutocompleteTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/account/addressautocomplete/tracking/TrackingAutocompleteAddressSearch;", "trackingAutocompleteAddressSearch", "", "nbTypedCharacters", "<init>", "(Lcom/vuitton/android/presentation/screen/account/addressautocomplete/tracking/TrackingAutocompleteAddressSearch;I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenAddressSearchClickedEvent implements AddressAutocompleteTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TrackingAutocompleteAddressSearch f52133a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f52134b;

        public OpenAddressSearchClickedEvent(TrackingAutocompleteAddressSearch trackingAutocompleteAddressSearch, int i2) {
            trackingAutocompleteAddressSearch.getClass();
            this.f52133a = trackingAutocompleteAddressSearch;
            this.f52134b = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OpenAddressSearchClickedEvent)) {
                return false;
            }
            OpenAddressSearchClickedEvent openAddressSearchClickedEvent = (OpenAddressSearchClickedEvent) obj;
            return this.f52133a == openAddressSearchClickedEvent.f52133a && this.f52134b == openAddressSearchClickedEvent.f52134b;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f52134b) + (this.f52133a.hashCode() * 31);
        }

        public final String toString() {
            return "OpenAddressSearchClickedEvent(trackingAutocompleteAddressSearch=" + this.f52133a + ", nbTypedCharacters=" + this.f52134b + ")";
        }
    }
}
