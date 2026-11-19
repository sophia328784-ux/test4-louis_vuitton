package com.vuitton.android.presentation.screen.immersivearticle.models;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;", "", "", ConfigurationName.KEY, "title", "subtitle", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/LookSkuTypeUiModel;", "skuType", "", "Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "assets", "", "isShopTheLook", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/LookSkuTypeUiModel;Ljava/util/List;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleLookCardUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f58681a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f58682b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f58683c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LookSkuTypeUiModel f58684e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f58685f;
    public final boolean g;

    public ImmersiveArticleLookCardUiModel(String str, String str2, String str3, String str4, LookSkuTypeUiModel lookSkuTypeUiModel, List list, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        d21.y(str, str2, str3, str4);
        this.f58681a = str;
        this.f58682b = str2;
        this.f58683c = str3;
        this.d = str4;
        this.f58684e = lookSkuTypeUiModel;
        this.f58685f = list;
        this.g = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleLookCardUiModel)) {
            return false;
        }
        ImmersiveArticleLookCardUiModel immersiveArticleLookCardUiModel = (ImmersiveArticleLookCardUiModel) obj;
        if (!this.f58681a.equals(immersiveArticleLookCardUiModel.f58681a) || !this.f58682b.equals(immersiveArticleLookCardUiModel.f58682b) || !this.f58683c.equals(immersiveArticleLookCardUiModel.f58683c)) {
            return false;
        }
        String str = immersiveArticleLookCardUiModel.d;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return this.d.equals(str) && this.f58684e == immersiveArticleLookCardUiModel.f58684e && Intrinsics.c(this.f58685f, immersiveArticleLookCardUiModel.f58685f) && this.g == immersiveArticleLookCardUiModel.g;
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(this.f58681a.hashCode() * 31, 31, this.f58682b), 31, this.f58683c);
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        int iB2 = fc.b(iB, 31, this.d);
        LookSkuTypeUiModel lookSkuTypeUiModel = this.f58684e;
        int iHashCode = (iB2 + (lookSkuTypeUiModel == null ? 0 : lookSkuTypeUiModel.hashCode())) * 31;
        List list = this.f58685f;
        return Boolean.hashCode(this.g) + ((iHashCode + (list != null ? list.hashCode() : 0)) * 31);
    }

    public final String toString() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        StringBuilder sbS = fc.s("ImmersiveArticleLookCardUiModel(key=", this.f58681a, ", title=", this.f58682b, ", subtitle=");
        cj.C(sbS, this.f58683c, ", sku=", this.d, ", skuType=");
        sbS.append(this.f58684e);
        sbS.append(", assets=");
        sbS.append(this.f58685f);
        sbS.append(", isShopTheLook=");
        return a.p(sbS, this.g, ")");
    }
}
