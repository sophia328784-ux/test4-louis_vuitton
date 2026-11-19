package com.vuitton.android.presentation.screen.immersivearticle.models;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSliderUiModel;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;", "", ConfigurationName.KEY, "type", "title", "", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSlideUiModel;", "slides", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;", "mainTheme", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleSliderUiModel extends ImmersiveArticleSectionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f58714a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f58715b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f58716c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SectionThemeUiModel f58717e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleSliderUiModel(String str, String str2, String str3, List<ImmersiveArticleSlideUiModel> list, SectionThemeUiModel sectionThemeUiModel) {
        super(null);
        pq0.B(str, str2, list);
        this.f58714a = str;
        this.f58715b = str2;
        this.f58716c = str3;
        this.d = list;
        this.f58717e = sectionThemeUiModel;
    }

    @Override // com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSectionUiModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF58714a() {
        return this.f58714a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleSliderUiModel)) {
            return false;
        }
        ImmersiveArticleSliderUiModel immersiveArticleSliderUiModel = (ImmersiveArticleSliderUiModel) obj;
        return Intrinsics.c(this.f58714a, immersiveArticleSliderUiModel.f58714a) && Intrinsics.c(this.f58715b, immersiveArticleSliderUiModel.f58715b) && Intrinsics.c(this.f58716c, immersiveArticleSliderUiModel.f58716c) && Intrinsics.c(this.d, immersiveArticleSliderUiModel.d) && Intrinsics.c(this.f58717e, immersiveArticleSliderUiModel.f58717e);
    }

    public final int hashCode() {
        int iB = fc.b(this.f58714a.hashCode() * 31, 31, this.f58715b);
        String str = this.f58716c;
        int iA = n00.a((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.d);
        SectionThemeUiModel sectionThemeUiModel = this.f58717e;
        return iA + (sectionThemeUiModel != null ? sectionThemeUiModel.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ImmersiveArticleSliderUiModel(key=", this.f58714a, ", type=", this.f58715b, ", title=");
        d21.z(this.f58716c, ", slides=", ", mainTheme=", sbS, this.d);
        sbS.append(this.f58717e);
        sbS.append(")");
        return sbS.toString();
    }
}
