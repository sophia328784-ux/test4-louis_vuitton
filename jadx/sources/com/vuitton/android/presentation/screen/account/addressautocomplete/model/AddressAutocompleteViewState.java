package com.vuitton.android.presentation.screen.account.addressautocomplete.model;

import androidx.compose.ui.autofill.AutofillNode;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001BM\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;", "", "", "loading", "", "autocompleteUUID", "addressSearchBarValue", "", "Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/PlaceAutocompleteUiModel;", "addressList", "Landroidx/compose/ui/autofill/AutofillNode;", "addressAutofillNode", "isDebounceEnabled", "<init>", "(ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Landroidx/compose/ui/autofill/AutofillNode;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AddressAutocompleteViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f52116a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f52117b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f52118c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AutofillNode f52119e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f52120f;

    public AddressAutocompleteViewState(boolean z, String str, String str2, List list, AutofillNode autofillNode, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? null : str, (i2 & 4) != 0 ? new String() : str2, (i2 & 8) != 0 ? EmptyList.f71768b : list, (i2 & 16) != 0 ? null : autofillNode, (i2 & 32) != 0 ? true : z2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AddressAutocompleteViewState)) {
            return false;
        }
        AddressAutocompleteViewState addressAutocompleteViewState = (AddressAutocompleteViewState) obj;
        return this.f52116a == addressAutocompleteViewState.f52116a && Intrinsics.c(this.f52117b, addressAutocompleteViewState.f52117b) && Intrinsics.c(this.f52118c, addressAutocompleteViewState.f52118c) && Intrinsics.c(this.d, addressAutocompleteViewState.d) && Intrinsics.c(this.f52119e, addressAutocompleteViewState.f52119e) && this.f52120f == addressAutocompleteViewState.f52120f;
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.f52116a) * 31;
        String str = this.f52117b;
        int iA = n00.a(fc.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.f52118c), 31, this.d);
        AutofillNode autofillNode = this.f52119e;
        return Boolean.hashCode(this.f52120f) + ((iA + (autofillNode != null ? autofillNode.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AddressAutocompleteViewState(loading=");
        sb.append(this.f52116a);
        sb.append(", autocompleteUUID=");
        sb.append(this.f52117b);
        sb.append(", addressSearchBarValue=");
        d21.z(this.f52118c, ", addressList=", ", addressAutofillNode=", sb, this.d);
        sb.append(this.f52119e);
        sb.append(", isDebounceEnabled=");
        sb.append(this.f52120f);
        sb.append(")");
        return sb.toString();
    }

    public AddressAutocompleteViewState(boolean z, String str, String str2, List<PlaceAutocompleteUiModel> list, AutofillNode autofillNode, boolean z2) {
        str2.getClass();
        list.getClass();
        this.f52116a = z;
        this.f52117b = str;
        this.f52118c = str2;
        this.d = list;
        this.f52119e = autofillNode;
        this.f52120f = z2;
    }

    public AddressAutocompleteViewState() {
        this(false, null, null, null, null, false, 63, null);
    }
}
