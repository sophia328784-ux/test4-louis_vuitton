package com.vuitton.android.presentation.screen.immersivearticle.models;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductListSectionUiModel;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;", "", ConfigurationName.KEY, "type", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductListDataUiModel;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductListDataUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleProductListSectionUiModel extends ImmersiveArticleSectionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f58700a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f58701b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmersiveArticleProductListDataUiModel f58702c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleProductListSectionUiModel(String str, String str2, ImmersiveArticleProductListDataUiModel immersiveArticleProductListDataUiModel) {
        super(null);
        str.getClass();
        str2.getClass();
        immersiveArticleProductListDataUiModel.getClass();
        this.f58700a = str;
        this.f58701b = str2;
        this.f58702c = immersiveArticleProductListDataUiModel;
    }

    @Override // com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSectionUiModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF58700a() {
        return this.f58700a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleProductListSectionUiModel)) {
            return false;
        }
        ImmersiveArticleProductListSectionUiModel immersiveArticleProductListSectionUiModel = (ImmersiveArticleProductListSectionUiModel) obj;
        return Intrinsics.c(this.f58700a, immersiveArticleProductListSectionUiModel.f58700a) && Intrinsics.c(this.f58701b, immersiveArticleProductListSectionUiModel.f58701b) && Intrinsics.c(this.f58702c, immersiveArticleProductListSectionUiModel.f58702c);
    }

    public final int hashCode() {
        return this.f58702c.hashCode() + fc.b(this.f58700a.hashCode() * 31, 31, this.f58701b);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ImmersiveArticleProductListSectionUiModel(key=", this.f58700a, ", type=", this.f58701b, ", data=");
        sbS.append(this.f58702c);
        sbS.append(")");
        return sbS.toString();
    }
}
