package com.vuitton.android.presentation.screen.account.addressbook.models;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressBookTrackingUiModel;", "", "AddressBookScreen", "AddAddressEvent", "EditAddressEvent", "Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressBookTrackingUiModel$AddAddressEvent;", "Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressBookTrackingUiModel$AddressBookScreen;", "Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressBookTrackingUiModel$EditAddressEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AddressBookTrackingUiModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressBookTrackingUiModel$AddAddressEvent;", "Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressBookTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AddAddressEvent implements AddressBookTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final AddAddressEvent f52193a = new AddAddressEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AddAddressEvent);
        }

        public final int hashCode() {
            return -1418074963;
        }

        public final String toString() {
            return "AddAddressEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressBookTrackingUiModel$AddressBookScreen;", "Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressBookTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AddressBookScreen implements AddressBookTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final AddressBookScreen f52194a = new AddressBookScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AddressBookScreen);
        }

        public final int hashCode() {
            return 781135023;
        }

        public final String toString() {
            return "AddressBookScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressBookTrackingUiModel$EditAddressEvent;", "Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressBookTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class EditAddressEvent implements AddressBookTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final EditAddressEvent f52195a = new EditAddressEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof EditAddressEvent);
        }

        public final int hashCode() {
            return -215430006;
        }

        public final String toString() {
            return "EditAddressEvent";
        }
    }
}
