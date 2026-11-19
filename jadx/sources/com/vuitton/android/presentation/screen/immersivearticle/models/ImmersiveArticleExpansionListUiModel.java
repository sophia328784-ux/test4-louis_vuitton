package com.vuitton.android.presentation.screen.immersivearticle.models;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.cj;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleExpansionListUiModel;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;", "", ConfigurationName.KEY, "", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleExpansionPanelUiModel;", "expansions", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleExpansionListUiModel extends ImmersiveArticleSectionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f58665a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f58666b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleExpansionListUiModel(String str, List<ImmersiveArticleExpansionPanelUiModel> list) {
        super(null);
        str.getClass();
        list.getClass();
        this.f58665a = str;
        this.f58666b = list;
    }

    @Override // com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSectionUiModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF58665a() {
        return this.f58665a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleExpansionListUiModel)) {
            return false;
        }
        ImmersiveArticleExpansionListUiModel immersiveArticleExpansionListUiModel = (ImmersiveArticleExpansionListUiModel) obj;
        return Intrinsics.c(this.f58665a, immersiveArticleExpansionListUiModel.f58665a) && Intrinsics.c(this.f58666b, immersiveArticleExpansionListUiModel.f58666b);
    }

    public final int hashCode() {
        return this.f58666b.hashCode() + (this.f58665a.hashCode() * 31);
    }

    public final String toString() {
        return cj.k("ImmersiveArticleExpansionListUiModel(key=", this.f58665a, ", expansions=", this.f58666b, ")");
    }
}
