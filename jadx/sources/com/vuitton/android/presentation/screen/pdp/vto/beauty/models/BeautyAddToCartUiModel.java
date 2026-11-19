package com.vuitton.android.presentation.screen.pdp.vto.beauty.models;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "name", "imageUrl", "color", "price", "", "available", "isBackInStockEnabled", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BeautyAddToCartUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f62125a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f62126b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f62127c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f62128e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f62129f;
    public final boolean g;

    public BeautyAddToCartUiModel(String str, String str2, String str3, String str4, String str5, boolean z, boolean z2, DefaultConstructorMarker defaultConstructorMarker) {
        d21.y(str, str2, str3, str5);
        this.f62125a = str;
        this.f62126b = str2;
        this.f62127c = str3;
        this.d = str4;
        this.f62128e = str5;
        this.f62129f = z;
        this.g = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BeautyAddToCartUiModel)) {
            return false;
        }
        BeautyAddToCartUiModel beautyAddToCartUiModel = (BeautyAddToCartUiModel) obj;
        String str = beautyAddToCartUiModel.f62125a;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return this.f62125a.equals(str) && this.f62126b.equals(beautyAddToCartUiModel.f62126b) && this.f62127c.equals(beautyAddToCartUiModel.f62127c) && Intrinsics.c(this.d, beautyAddToCartUiModel.d) && this.f62128e.equals(beautyAddToCartUiModel.f62128e) && this.f62129f == beautyAddToCartUiModel.f62129f && this.g == beautyAddToCartUiModel.g;
    }

    public final int hashCode() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        int iB = fc.b(fc.b(this.f62125a.hashCode() * 31, 31, this.f62126b), 31, this.f62127c);
        String str = this.d;
        return Boolean.hashCode(this.g) + o60.b(fc.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.f62128e), 31, this.f62129f);
    }

    public final String toString() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        StringBuilder sbS = fc.s("BeautyAddToCartUiModel(sku=", this.f62125a, ", name=", this.f62126b, ", imageUrl=");
        cj.C(sbS, this.f62127c, ", color=", this.d, ", price=");
        pq0.A(this.f62128e, ", available=", ", isBackInStockEnabled=", sbS, this.f62129f);
        return a.p(sbS, this.g, ")");
    }
}
