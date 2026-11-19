package com.vuitton.android.presentation.screen.cart.models;

import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/ContributionGiftingUiModel;", "", "", "imageCart", "imageGiftPage", "article", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ContributionGiftingUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f55188a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f55189b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f55190c;

    public ContributionGiftingUiModel(String str, String str2, String str3) {
        cj.z(str, str2, str3);
        this.f55188a = str;
        this.f55189b = str2;
        this.f55190c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ContributionGiftingUiModel)) {
            return false;
        }
        ContributionGiftingUiModel contributionGiftingUiModel = (ContributionGiftingUiModel) obj;
        return Intrinsics.c(this.f55188a, contributionGiftingUiModel.f55188a) && Intrinsics.c(this.f55189b, contributionGiftingUiModel.f55189b) && Intrinsics.c(this.f55190c, contributionGiftingUiModel.f55190c);
    }

    public final int hashCode() {
        return this.f55190c.hashCode() + fc.b(this.f55188a.hashCode() * 31, 31, this.f55189b);
    }

    public final String toString() {
        return n00.r(this.f55190c, ")", fc.s("ContributionGiftingUiModel(imageCart=", this.f55188a, ", imageGiftPage=", this.f55189b, ", article="));
    }
}
