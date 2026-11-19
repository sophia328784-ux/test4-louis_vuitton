package com.vuitton.android.presentation.screen.account.addressbook;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookDestinations;", "", "ToAddressEditorPage", "Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookDestinations$ToAddressEditorPage;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AddressBookDestinations {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookDestinations$ToAddressEditorPage;", "Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookDestinations;", "", "isMainAddress", "", "addressId", "<init>", "(ZLjava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToAddressEditorPage implements AddressBookDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f52140a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f52141b;

        public ToAddressEditorPage(boolean z, String str) {
            this.f52140a = z;
            this.f52141b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToAddressEditorPage)) {
                return false;
            }
            ToAddressEditorPage toAddressEditorPage = (ToAddressEditorPage) obj;
            return this.f52140a == toAddressEditorPage.f52140a && Intrinsics.c(this.f52141b, toAddressEditorPage.f52141b);
        }

        public final int hashCode() {
            int iHashCode = Boolean.hashCode(this.f52140a) * 31;
            String str = this.f52141b;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            return "ToAddressEditorPage(isMainAddress=" + this.f52140a + ", addressId=" + this.f52141b + ")";
        }
    }
}
