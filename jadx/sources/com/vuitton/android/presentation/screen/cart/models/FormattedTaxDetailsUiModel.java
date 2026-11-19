package com.vuitton.android.presentation.screen.cart.models;

import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/FormattedTaxDetailsUiModel;", "", "", "gst", "qst", "hst", "pst", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FormattedTaxDetailsUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f55198a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f55199b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f55200c;
    public final String d;

    public FormattedTaxDetailsUiModel(String str, String str2, String str3, String str4) {
        this.f55198a = str;
        this.f55199b = str2;
        this.f55200c = str3;
        this.d = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FormattedTaxDetailsUiModel)) {
            return false;
        }
        FormattedTaxDetailsUiModel formattedTaxDetailsUiModel = (FormattedTaxDetailsUiModel) obj;
        return Intrinsics.c(this.f55198a, formattedTaxDetailsUiModel.f55198a) && Intrinsics.c(this.f55199b, formattedTaxDetailsUiModel.f55199b) && Intrinsics.c(this.f55200c, formattedTaxDetailsUiModel.f55200c) && Intrinsics.c(this.d, formattedTaxDetailsUiModel.d);
    }

    public final int hashCode() {
        String str = this.f55198a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f55199b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f55200c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        return tr.l(fc.s("FormattedTaxDetailsUiModel(gst=", this.f55198a, ", qst=", this.f55199b, ", hst="), this.f55200c, ", pst=", this.d, ")");
    }
}
