package com.vuitton.android.presentation.screen.account.addressbook.models;

import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.a;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressBookViewState;", "", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;", "inAppDispatch", "", "isLoading", "isEmpty", "Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;", "billingAddress", "", "secondaryAddressList", "<init>", "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AddressBookViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InAppDispatch f52196a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f52197b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f52198c;
    public final AccountAddressUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f52199e;

    public AddressBookViewState(InAppDispatch inAppDispatch, boolean z, boolean z2, AccountAddressUiModel accountAddressUiModel, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(inAppDispatch, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? false : z2, (i2 & 8) != 0 ? null : accountAddressUiModel, (i2 & 16) != 0 ? EmptyList.f71768b : list);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AddressBookViewState)) {
            return false;
        }
        AddressBookViewState addressBookViewState = (AddressBookViewState) obj;
        return Intrinsics.c(this.f52196a, addressBookViewState.f52196a) && this.f52197b == addressBookViewState.f52197b && this.f52198c == addressBookViewState.f52198c && Intrinsics.c(this.d, addressBookViewState.d) && Intrinsics.c(this.f52199e, addressBookViewState.f52199e);
    }

    public final int hashCode() {
        int iB = o60.b(o60.b(this.f52196a.hashCode() * 31, 31, this.f52197b), 31, this.f52198c);
        AccountAddressUiModel accountAddressUiModel = this.d;
        return this.f52199e.hashCode() + ((iB + (accountAddressUiModel == null ? 0 : accountAddressUiModel.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AddressBookViewState(inAppDispatch=");
        sb.append(this.f52196a);
        sb.append(", isLoading=");
        sb.append(this.f52197b);
        sb.append(", isEmpty=");
        sb.append(this.f52198c);
        sb.append(", billingAddress=");
        sb.append(this.d);
        sb.append(", secondaryAddressList=");
        return a.o(sb, this.f52199e, ")");
    }

    public AddressBookViewState(InAppDispatch inAppDispatch, boolean z, boolean z2, AccountAddressUiModel accountAddressUiModel, List<AccountAddressUiModel> list) {
        inAppDispatch.getClass();
        list.getClass();
        this.f52196a = inAppDispatch;
        this.f52197b = z;
        this.f52198c = z2;
        this.d = accountAddressUiModel;
        this.f52199e = list;
    }
}
