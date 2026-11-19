package com.vuitton.android.presentation.screen.immersivearticle.models;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/CarouselArticleSectionUiModel;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;", "", ConfigurationName.KEY, "type", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;", "ratio", "", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleAssetUiModel;", "assets", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;", "mainTheme", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CarouselArticleSectionUiModel extends ImmersiveArticleSectionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f58629a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f58630b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmersiveArticleSizeCardUiModel f58631c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SectionThemeUiModel f58632e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CarouselArticleSectionUiModel(String str, String str2, ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel, List<ImmersiveArticleAssetUiModel> list, SectionThemeUiModel sectionThemeUiModel) {
        super(null);
        pq0.B(str, str2, list);
        this.f58629a = str;
        this.f58630b = str2;
        this.f58631c = immersiveArticleSizeCardUiModel;
        this.d = list;
        this.f58632e = sectionThemeUiModel;
    }

    @Override // com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSectionUiModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF58629a() {
        return this.f58629a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CarouselArticleSectionUiModel)) {
            return false;
        }
        CarouselArticleSectionUiModel carouselArticleSectionUiModel = (CarouselArticleSectionUiModel) obj;
        return Intrinsics.c(this.f58629a, carouselArticleSectionUiModel.f58629a) && Intrinsics.c(this.f58630b, carouselArticleSectionUiModel.f58630b) && this.f58631c == carouselArticleSectionUiModel.f58631c && Intrinsics.c(this.d, carouselArticleSectionUiModel.d) && Intrinsics.c(this.f58632e, carouselArticleSectionUiModel.f58632e);
    }

    public final int hashCode() {
        int iB = fc.b(this.f58629a.hashCode() * 31, 31, this.f58630b);
        ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel = this.f58631c;
        int iA = n00.a((iB + (immersiveArticleSizeCardUiModel == null ? 0 : immersiveArticleSizeCardUiModel.hashCode())) * 31, 31, this.d);
        SectionThemeUiModel sectionThemeUiModel = this.f58632e;
        return iA + (sectionThemeUiModel != null ? sectionThemeUiModel.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("CarouselArticleSectionUiModel(key=", this.f58629a, ", type=", this.f58630b, ", ratio=");
        sbS.append(this.f58631c);
        sbS.append(", assets=");
        sbS.append(this.d);
        sbS.append(", mainTheme=");
        sbS.append(this.f58632e);
        sbS.append(")");
        return sbS.toString();
    }
}
