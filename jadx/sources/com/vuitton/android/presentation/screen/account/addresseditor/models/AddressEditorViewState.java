package com.vuitton.android.presentation.screen.account.addresseditor.models;

import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import defpackage.cj;
import defpackage.n00;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\rB7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;", "", "", "isLoading", "isError", "Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;", "screenType", "Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;", "form", "Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorAutocompleteSetup;", "addressEditorAutocompleteSetup", "<init>", "(ZZLcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorAutocompleteSetup;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AddressEditorViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f52269a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f52270b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AddressEditorViewType f52271c;
    public final FormUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AddressEditorAutocompleteSetup f52272e;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public /* synthetic */ AddressEditorViewState(boolean z, boolean z2, AddressEditorViewType addressEditorViewType, FormUiModel formUiModel, AddressEditorAutocompleteSetup addressEditorAutocompleteSetup, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2, (i2 & 4) != 0 ? AddressEditorViewType.ADD_SECONDARY_ADDRESS : addressEditorViewType, formUiModel, (i2 & 16) != 0 ? new AddressEditorAutocompleteSetup(null, null, 3, null) : addressEditorAutocompleteSetup);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AddressEditorViewState)) {
            return false;
        }
        AddressEditorViewState addressEditorViewState = (AddressEditorViewState) obj;
        return this.f52269a == addressEditorViewState.f52269a && this.f52270b == addressEditorViewState.f52270b && this.f52271c == addressEditorViewState.f52271c && Intrinsics.c(this.d, addressEditorViewState.d) && Intrinsics.c(this.f52272e, addressEditorViewState.f52272e);
    }

    public final int hashCode() {
        return this.f52272e.hashCode() + n00.a((this.f52271c.hashCode() + o60.b(Boolean.hashCode(this.f52269a) * 31, 31, this.f52270b)) * 31, 31, this.d.f57486a);
    }

    public final String toString() {
        StringBuilder sbM = cj.m("AddressEditorViewState(isLoading=", ", isError=", ", screenType=", this.f52269a, this.f52270b);
        sbM.append(this.f52271c);
        sbM.append(", form=");
        sbM.append(this.d);
        sbM.append(", addressEditorAutocompleteSetup=");
        sbM.append(this.f52272e);
        sbM.append(")");
        return sbM.toString();
    }

    public AddressEditorViewState(boolean z, boolean z2, AddressEditorViewType addressEditorViewType, FormUiModel formUiModel, AddressEditorAutocompleteSetup addressEditorAutocompleteSetup) {
        addressEditorViewType.getClass();
        formUiModel.getClass();
        addressEditorAutocompleteSetup.getClass();
        this.f52269a = z;
        this.f52270b = z2;
        this.f52271c = addressEditorViewType;
        this.d = formUiModel;
        this.f52272e = addressEditorAutocompleteSetup;
    }
}
