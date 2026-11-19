package com.vuitton.android.presentation.screen.immersivearticle.models;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import defpackage.fc;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B£\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\u001a\u0010\u0017\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00160\u0015\u0018\u00010\u0014\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0018\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u001b¢\u0006\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/TextArticleSectionUiModel;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;", "", ConfigurationName.KEY, "type", "title", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;", "titleFont", "surtitle", "surtitleFont", "description", "descriptionFont", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;", "ratio", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTextModuleTypeUiModel;", "moduleType", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTextModuleAlignmentUiModel;", "alignment", "Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "asset", "", "Lkotlin/Pair;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "ctas", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;", "mainTheme", "ctaTheme", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleDisclaimerUiModel;", "disclaimer", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTextModuleTypeUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTextModuleAlignmentUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleDisclaimerUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class TextArticleSectionUiModel extends ImmersiveArticleSectionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f58827a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f58828b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f58829c;
    public final ImmersiveArticleFontUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f58830e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ImmersiveArticleFontUiModel f58831f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ImmersiveArticleFontUiModel f58832h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ImmersiveArticleSizeCardUiModel f58833i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ImmersiveArticleTextModuleTypeUiModel f58834j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ImmersiveArticleTextModuleAlignmentUiModel f58835k;
    public final AssetUiModel l;
    public final List m;
    public final SectionThemeUiModel n;
    public final SectionThemeUiModel o;
    public final ImmersiveArticleDisclaimerUiModel p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextArticleSectionUiModel(String str, String str2, String str3, ImmersiveArticleFontUiModel immersiveArticleFontUiModel, String str4, ImmersiveArticleFontUiModel immersiveArticleFontUiModel2, String str5, ImmersiveArticleFontUiModel immersiveArticleFontUiModel3, ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel, ImmersiveArticleTextModuleTypeUiModel immersiveArticleTextModuleTypeUiModel, ImmersiveArticleTextModuleAlignmentUiModel immersiveArticleTextModuleAlignmentUiModel, AssetUiModel assetUiModel, List<? extends Pair<String, ? extends ContributionLinkUiModel>> list, SectionThemeUiModel sectionThemeUiModel, SectionThemeUiModel sectionThemeUiModel2, ImmersiveArticleDisclaimerUiModel immersiveArticleDisclaimerUiModel) {
        super(null);
        str.getClass();
        str2.getClass();
        str3.getClass();
        immersiveArticleFontUiModel.getClass();
        str4.getClass();
        immersiveArticleFontUiModel2.getClass();
        str5.getClass();
        immersiveArticleFontUiModel3.getClass();
        immersiveArticleSizeCardUiModel.getClass();
        immersiveArticleTextModuleTypeUiModel.getClass();
        immersiveArticleTextModuleAlignmentUiModel.getClass();
        this.f58827a = str;
        this.f58828b = str2;
        this.f58829c = str3;
        this.d = immersiveArticleFontUiModel;
        this.f58830e = str4;
        this.f58831f = immersiveArticleFontUiModel2;
        this.g = str5;
        this.f58832h = immersiveArticleFontUiModel3;
        this.f58833i = immersiveArticleSizeCardUiModel;
        this.f58834j = immersiveArticleTextModuleTypeUiModel;
        this.f58835k = immersiveArticleTextModuleAlignmentUiModel;
        this.l = assetUiModel;
        this.m = list;
        this.n = sectionThemeUiModel;
        this.o = sectionThemeUiModel2;
        this.p = immersiveArticleDisclaimerUiModel;
    }

    @Override // com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSectionUiModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF58827a() {
        return this.f58827a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextArticleSectionUiModel)) {
            return false;
        }
        TextArticleSectionUiModel textArticleSectionUiModel = (TextArticleSectionUiModel) obj;
        return Intrinsics.c(this.f58827a, textArticleSectionUiModel.f58827a) && Intrinsics.c(this.f58828b, textArticleSectionUiModel.f58828b) && Intrinsics.c(this.f58829c, textArticleSectionUiModel.f58829c) && this.d == textArticleSectionUiModel.d && Intrinsics.c(this.f58830e, textArticleSectionUiModel.f58830e) && this.f58831f == textArticleSectionUiModel.f58831f && Intrinsics.c(this.g, textArticleSectionUiModel.g) && this.f58832h == textArticleSectionUiModel.f58832h && this.f58833i == textArticleSectionUiModel.f58833i && this.f58834j == textArticleSectionUiModel.f58834j && this.f58835k == textArticleSectionUiModel.f58835k && Intrinsics.c(this.l, textArticleSectionUiModel.l) && Intrinsics.c(this.m, textArticleSectionUiModel.m) && Intrinsics.c(this.n, textArticleSectionUiModel.n) && Intrinsics.c(this.o, textArticleSectionUiModel.o) && Intrinsics.c(this.p, textArticleSectionUiModel.p);
    }

    public final int hashCode() {
        int iHashCode = (this.f58835k.hashCode() + ((this.f58834j.hashCode() + ((this.f58833i.hashCode() + ((this.f58832h.hashCode() + fc.b((this.f58831f.hashCode() + fc.b((this.d.hashCode() + fc.b(fc.b(this.f58827a.hashCode() * 31, 31, this.f58828b), 31, this.f58829c)) * 31, 31, this.f58830e)) * 31, 31, this.g)) * 31)) * 31)) * 31)) * 31;
        AssetUiModel assetUiModel = this.l;
        int iHashCode2 = (iHashCode + (assetUiModel == null ? 0 : assetUiModel.hashCode())) * 31;
        List list = this.m;
        int iHashCode3 = (iHashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        SectionThemeUiModel sectionThemeUiModel = this.n;
        int iHashCode4 = (iHashCode3 + (sectionThemeUiModel == null ? 0 : sectionThemeUiModel.hashCode())) * 31;
        SectionThemeUiModel sectionThemeUiModel2 = this.o;
        int iHashCode5 = (iHashCode4 + (sectionThemeUiModel2 == null ? 0 : sectionThemeUiModel2.hashCode())) * 31;
        ImmersiveArticleDisclaimerUiModel immersiveArticleDisclaimerUiModel = this.p;
        return iHashCode5 + (immersiveArticleDisclaimerUiModel != null ? immersiveArticleDisclaimerUiModel.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("TextArticleSectionUiModel(key=", this.f58827a, ", type=", this.f58828b, ", title=");
        sbS.append(this.f58829c);
        sbS.append(", titleFont=");
        sbS.append(this.d);
        sbS.append(", surtitle=");
        sbS.append(this.f58830e);
        sbS.append(", surtitleFont=");
        sbS.append(this.f58831f);
        sbS.append(", description=");
        sbS.append(this.g);
        sbS.append(", descriptionFont=");
        sbS.append(this.f58832h);
        sbS.append(", ratio=");
        sbS.append(this.f58833i);
        sbS.append(", moduleType=");
        sbS.append(this.f58834j);
        sbS.append(", alignment=");
        sbS.append(this.f58835k);
        sbS.append(", asset=");
        sbS.append(this.l);
        sbS.append(", ctas=");
        sbS.append(this.m);
        sbS.append(", mainTheme=");
        sbS.append(this.n);
        sbS.append(", ctaTheme=");
        sbS.append(this.o);
        sbS.append(", disclaimer=");
        sbS.append(this.p);
        sbS.append(")");
        return sbS.toString();
    }
}
