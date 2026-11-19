package com.vuitton.android.presentation.screen.thankyou.models;

import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;", "", "", "title", "description", "", "priceRaw", "disclaimer", "Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodAdditionalInformationUiModel;", "additionalInformation", "<init>", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodAdditionalInformationUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ShippingMethodUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f65274a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f65275b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f65276c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ShippingMethodAdditionalInformationUiModel f65277e;

    public ShippingMethodUiModel(String str, String str2, int i2, String str3, ShippingMethodAdditionalInformationUiModel shippingMethodAdditionalInformationUiModel) {
        str.getClass();
        str2.getClass();
        this.f65274a = str;
        this.f65275b = str2;
        this.f65276c = i2;
        this.d = str3;
        this.f65277e = shippingMethodAdditionalInformationUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShippingMethodUiModel)) {
            return false;
        }
        ShippingMethodUiModel shippingMethodUiModel = (ShippingMethodUiModel) obj;
        return Intrinsics.c(this.f65274a, shippingMethodUiModel.f65274a) && Intrinsics.c(this.f65275b, shippingMethodUiModel.f65275b) && this.f65276c == shippingMethodUiModel.f65276c && Intrinsics.c(this.d, shippingMethodUiModel.d) && Intrinsics.c(this.f65277e, shippingMethodUiModel.f65277e);
    }

    public final int hashCode() {
        int iB = tr.b(this.f65276c, fc.b(this.f65274a.hashCode() * 31, 31, this.f65275b), 31);
        String str = this.d;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        ShippingMethodAdditionalInformationUiModel shippingMethodAdditionalInformationUiModel = this.f65277e;
        return iHashCode + (shippingMethodAdditionalInformationUiModel != null ? shippingMethodAdditionalInformationUiModel.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ShippingMethodUiModel(title=", this.f65274a, ", description=", this.f65275b, ", priceRaw=");
        sbS.append(this.f65276c);
        sbS.append(", disclaimer=");
        sbS.append(this.d);
        sbS.append(", additionalInformation=");
        sbS.append(this.f65277e);
        sbS.append(")");
        return sbS.toString();
    }
}
