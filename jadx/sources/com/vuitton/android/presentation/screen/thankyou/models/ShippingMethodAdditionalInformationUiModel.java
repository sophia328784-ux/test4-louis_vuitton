package com.vuitton.android.presentation.screen.thankyou.models;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodAdditionalInformationUiModel;", "", "", "title", "description", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ShippingMethodAdditionalInformationUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f65272a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f65273b;

    public ShippingMethodAdditionalInformationUiModel(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f65272a = str;
        this.f65273b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShippingMethodAdditionalInformationUiModel)) {
            return false;
        }
        ShippingMethodAdditionalInformationUiModel shippingMethodAdditionalInformationUiModel = (ShippingMethodAdditionalInformationUiModel) obj;
        return Intrinsics.c(this.f65272a, shippingMethodAdditionalInformationUiModel.f65272a) && Intrinsics.c(this.f65273b, shippingMethodAdditionalInformationUiModel.f65273b);
    }

    public final int hashCode() {
        return this.f65273b.hashCode() + (this.f65272a.hashCode() * 31);
    }

    public final String toString() {
        return d21.l("ShippingMethodAdditionalInformationUiModel(title=", this.f65272a, ", description=", this.f65273b, ")");
    }
}
