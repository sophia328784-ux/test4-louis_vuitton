package com.vuitton.android.presentation.screen.account.addresseditor.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorNavigation;", "", "ToAddressAutocomplete", "ToAddressBookAfterEdition", "Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorNavigation$ToAddressAutocomplete;", "Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorNavigation$ToAddressBookAfterEdition;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class AddressEditorNavigation {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorNavigation$ToAddressAutocomplete;", "Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorNavigation;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToAddressAutocomplete extends AddressEditorNavigation {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToAddressAutocomplete f52267a = new ToAddressAutocomplete(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToAddressAutocomplete);
        }

        public final int hashCode() {
            return 182656721;
        }

        public final String toString() {
            return "ToAddressAutocomplete";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorNavigation$ToAddressBookAfterEdition;", "Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorNavigation;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToAddressBookAfterEdition extends AddressEditorNavigation {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToAddressBookAfterEdition f52268a = new ToAddressBookAfterEdition(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToAddressBookAfterEdition);
        }

        public final int hashCode() {
            return -71203788;
        }

        public final String toString() {
            return "ToAddressBookAfterEdition";
        }
    }

    public AddressEditorNavigation(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
