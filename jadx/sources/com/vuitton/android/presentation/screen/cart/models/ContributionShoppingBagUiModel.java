package com.vuitton.android.presentation.screen.cart.models;

import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/ContributionShoppingBagUiModel;", "", "", "title", "description", "image", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ContributionShoppingBagUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f55194a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f55195b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f55196c;

    public ContributionShoppingBagUiModel(String str, String str2, String str3) {
        cj.z(str, str2, str3);
        this.f55194a = str;
        this.f55195b = str2;
        this.f55196c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ContributionShoppingBagUiModel)) {
            return false;
        }
        ContributionShoppingBagUiModel contributionShoppingBagUiModel = (ContributionShoppingBagUiModel) obj;
        return Intrinsics.c(this.f55194a, contributionShoppingBagUiModel.f55194a) && Intrinsics.c(this.f55195b, contributionShoppingBagUiModel.f55195b) && Intrinsics.c(this.f55196c, contributionShoppingBagUiModel.f55196c);
    }

    public final int hashCode() {
        return this.f55196c.hashCode() + fc.b(this.f55194a.hashCode() * 31, 31, this.f55195b);
    }

    public final String toString() {
        return n00.r(this.f55196c, ")", fc.s("ContributionShoppingBagUiModel(title=", this.f55194a, ", description=", this.f55195b, ", image="));
    }
}
