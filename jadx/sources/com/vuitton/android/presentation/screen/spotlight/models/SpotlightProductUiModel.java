package com.vuitton.android.presentation.screen.spotlight.models;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.cj;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "skuId", "", "name", "assetUrl", "price", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SpotlightProductUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f64647a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f64648b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f64649c;
    public final String d;

    public SpotlightProductUiModel(String str, String str2, String str3, String str4, DefaultConstructorMarker defaultConstructorMarker) {
        cj.z(str, str2, str3);
        this.f64647a = str;
        this.f64648b = str2;
        this.f64649c = str3;
        this.d = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SpotlightProductUiModel)) {
            return false;
        }
        SpotlightProductUiModel spotlightProductUiModel = (SpotlightProductUiModel) obj;
        String str = spotlightProductUiModel.f64647a;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return this.f64647a.equals(str) && this.f64648b.equals(spotlightProductUiModel.f64648b) && this.f64649c.equals(spotlightProductUiModel.f64649c) && Intrinsics.c(this.d, spotlightProductUiModel.d);
    }

    public final int hashCode() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        int iB = fc.b(fc.b(this.f64647a.hashCode() * 31, 31, this.f64648b), 31, this.f64649c);
        String str = this.d;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return tr.l(fc.s("SpotlightProductUiModel(skuId=", this.f64647a, ", name=", this.f64648b, ", assetUrl="), this.f64649c, ", price=", this.d, ")");
    }
}
