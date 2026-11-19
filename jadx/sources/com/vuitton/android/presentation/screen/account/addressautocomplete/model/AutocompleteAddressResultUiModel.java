package com.vuitton.android.presentation.screen.account.addressautocomplete.model;

import defpackage.cj;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0087\b\u0018\u00002\u00020\u0001BO\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AutocompleteAddressResultUiModel;", "", "", "addressLine", "addressLine2", "stateName", "stateCode", "cityName", "postalCode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AutocompleteAddressResultUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f52121a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f52122b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f52123c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f52124e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f52125f;

    public /* synthetic */ AutocompleteAddressResultUiModel(String str, String str2, String str3, String str4, String str5, String str6, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : str5, (i2 & 32) != 0 ? null : str6);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AutocompleteAddressResultUiModel)) {
            return false;
        }
        AutocompleteAddressResultUiModel autocompleteAddressResultUiModel = (AutocompleteAddressResultUiModel) obj;
        return Intrinsics.c(this.f52121a, autocompleteAddressResultUiModel.f52121a) && Intrinsics.c(this.f52122b, autocompleteAddressResultUiModel.f52122b) && Intrinsics.c(this.f52123c, autocompleteAddressResultUiModel.f52123c) && Intrinsics.c(this.d, autocompleteAddressResultUiModel.d) && Intrinsics.c(this.f52124e, autocompleteAddressResultUiModel.f52124e) && Intrinsics.c(this.f52125f, autocompleteAddressResultUiModel.f52125f);
    }

    public final int hashCode() {
        String str = this.f52121a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f52122b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f52123c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f52124e;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f52125f;
        return iHashCode5 + (str6 != null ? str6.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("AutocompleteAddressResultUiModel(addressLine=", this.f52121a, ", addressLine2=", this.f52122b, ", stateName=");
        cj.C(sbS, this.f52123c, ", stateCode=", this.d, ", cityName=");
        return tr.l(sbS, this.f52124e, ", postalCode=", this.f52125f, ")");
    }

    public AutocompleteAddressResultUiModel(String str, String str2, String str3, String str4, String str5, String str6) {
        this.f52121a = str;
        this.f52122b = str2;
        this.f52123c = str3;
        this.d = str4;
        this.f52124e = str5;
        this.f52125f = str6;
    }

    public AutocompleteAddressResultUiModel() {
        this(null, null, null, null, null, null, 63, null);
    }
}
