package com.vuitton.android.presentation.screen.account.addresseditor.models;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorAutocompleteSetup;", "", "", "regionCodeIso31661Alpha2ForAutocompletion", "addressForSearchBar", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AddressEditorAutocompleteSetup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f52265a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f52266b;

    public /* synthetic */ AddressEditorAutocompleteSetup(String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? "" : str2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AddressEditorAutocompleteSetup)) {
            return false;
        }
        AddressEditorAutocompleteSetup addressEditorAutocompleteSetup = (AddressEditorAutocompleteSetup) obj;
        return Intrinsics.c(this.f52265a, addressEditorAutocompleteSetup.f52265a) && Intrinsics.c(this.f52266b, addressEditorAutocompleteSetup.f52266b);
    }

    public final int hashCode() {
        return this.f52266b.hashCode() + (this.f52265a.hashCode() * 31);
    }

    public final String toString() {
        return d21.l("AddressEditorAutocompleteSetup(regionCodeIso31661Alpha2ForAutocompletion=", this.f52265a, ", addressForSearchBar=", this.f52266b, ")");
    }

    public AddressEditorAutocompleteSetup(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f52265a = str;
        this.f52266b = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AddressEditorAutocompleteSetup() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }
}
