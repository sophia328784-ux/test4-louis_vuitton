package com.vuitton.android.presentation.screen.immersivearticle.models;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticle3dSectionUiModel;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;", "", ConfigurationName.KEY, "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticle3dSectionUiModel extends ImmersiveArticleSectionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f58637a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f58638b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticle3dSectionUiModel(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
        super(null);
        str.getClass();
        str2.getClass();
        this.f58637a = str;
        this.f58638b = str2;
    }

    @Override // com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSectionUiModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF58637a() {
        return this.f58637a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticle3dSectionUiModel)) {
            return false;
        }
        ImmersiveArticle3dSectionUiModel immersiveArticle3dSectionUiModel = (ImmersiveArticle3dSectionUiModel) obj;
        if (!Intrinsics.c(this.f58637a, immersiveArticle3dSectionUiModel.f58637a)) {
            return false;
        }
        String str = immersiveArticle3dSectionUiModel.f58638b;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return Intrinsics.c(this.f58638b, str);
    }

    public final int hashCode() {
        int iHashCode = this.f58637a.hashCode() * 31;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return this.f58638b.hashCode() + iHashCode;
    }

    public final String toString() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return d21.l("ImmersiveArticle3dSectionUiModel(key=", this.f58637a, ", sku=", this.f58638b, ")");
    }
}
