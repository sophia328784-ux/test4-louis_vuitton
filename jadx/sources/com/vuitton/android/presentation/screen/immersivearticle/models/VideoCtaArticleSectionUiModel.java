package com.vuitton.android.presentation.screen.immersivearticle.models;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u007f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0015\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;", "", ConfigurationName.KEY, "type", "title", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;", "titleFont", "surtitle", "surtitleFont", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;", "ratio", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleVideoUiModel;", "video", "", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;", "looks", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "contributionLink", "Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "asset", "", "mustBeScaled", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;", "mainTheme", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleVideoUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;ZLcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class VideoCtaArticleSectionUiModel extends ImmersiveArticleSectionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f58841a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f58842b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f58843c;
    public final ImmersiveArticleFontUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f58844e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ImmersiveArticleFontUiModel f58845f;
    public final ImmersiveArticleSizeCardUiModel g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ImmersiveArticleVideoUiModel f58846h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f58847i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ContributionLinkUiModel f58848j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AssetUiModel f58849k;
    public final boolean l;
    public final SectionThemeUiModel m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoCtaArticleSectionUiModel(String str, String str2, String str3, ImmersiveArticleFontUiModel immersiveArticleFontUiModel, String str4, ImmersiveArticleFontUiModel immersiveArticleFontUiModel2, ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel, ImmersiveArticleVideoUiModel immersiveArticleVideoUiModel, List<ImmersiveArticleLookCardUiModel> list, ContributionLinkUiModel contributionLinkUiModel, AssetUiModel assetUiModel, boolean z, SectionThemeUiModel sectionThemeUiModel) {
        super(null);
        str.getClass();
        str2.getClass();
        str3.getClass();
        immersiveArticleFontUiModel.getClass();
        str4.getClass();
        immersiveArticleFontUiModel2.getClass();
        immersiveArticleSizeCardUiModel.getClass();
        list.getClass();
        this.f58841a = str;
        this.f58842b = str2;
        this.f58843c = str3;
        this.d = immersiveArticleFontUiModel;
        this.f58844e = str4;
        this.f58845f = immersiveArticleFontUiModel2;
        this.g = immersiveArticleSizeCardUiModel;
        this.f58846h = immersiveArticleVideoUiModel;
        this.f58847i = list;
        this.f58848j = contributionLinkUiModel;
        this.f58849k = assetUiModel;
        this.l = z;
        this.m = sectionThemeUiModel;
    }

    @Override // com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSectionUiModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF58841a() {
        return this.f58841a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VideoCtaArticleSectionUiModel)) {
            return false;
        }
        VideoCtaArticleSectionUiModel videoCtaArticleSectionUiModel = (VideoCtaArticleSectionUiModel) obj;
        return Intrinsics.c(this.f58841a, videoCtaArticleSectionUiModel.f58841a) && Intrinsics.c(this.f58842b, videoCtaArticleSectionUiModel.f58842b) && Intrinsics.c(this.f58843c, videoCtaArticleSectionUiModel.f58843c) && this.d == videoCtaArticleSectionUiModel.d && Intrinsics.c(this.f58844e, videoCtaArticleSectionUiModel.f58844e) && this.f58845f == videoCtaArticleSectionUiModel.f58845f && this.g == videoCtaArticleSectionUiModel.g && Intrinsics.c(this.f58846h, videoCtaArticleSectionUiModel.f58846h) && Intrinsics.c(this.f58847i, videoCtaArticleSectionUiModel.f58847i) && Intrinsics.c(this.f58848j, videoCtaArticleSectionUiModel.f58848j) && Intrinsics.c(this.f58849k, videoCtaArticleSectionUiModel.f58849k) && this.l == videoCtaArticleSectionUiModel.l && Intrinsics.c(this.m, videoCtaArticleSectionUiModel.m);
    }

    public final int hashCode() {
        int iHashCode = (this.g.hashCode() + ((this.f58845f.hashCode() + fc.b((this.d.hashCode() + fc.b(fc.b(this.f58841a.hashCode() * 31, 31, this.f58842b), 31, this.f58843c)) * 31, 31, this.f58844e)) * 31)) * 31;
        ImmersiveArticleVideoUiModel immersiveArticleVideoUiModel = this.f58846h;
        int iA = n00.a((iHashCode + (immersiveArticleVideoUiModel == null ? 0 : immersiveArticleVideoUiModel.hashCode())) * 31, 31, this.f58847i);
        ContributionLinkUiModel contributionLinkUiModel = this.f58848j;
        int iHashCode2 = (iA + (contributionLinkUiModel == null ? 0 : contributionLinkUiModel.hashCode())) * 31;
        AssetUiModel assetUiModel = this.f58849k;
        int iB = o60.b((iHashCode2 + (assetUiModel == null ? 0 : assetUiModel.hashCode())) * 31, 31, this.l);
        SectionThemeUiModel sectionThemeUiModel = this.m;
        return iB + (sectionThemeUiModel != null ? sectionThemeUiModel.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("VideoCtaArticleSectionUiModel(key=", this.f58841a, ", type=", this.f58842b, ", title=");
        sbS.append(this.f58843c);
        sbS.append(", titleFont=");
        sbS.append(this.d);
        sbS.append(", surtitle=");
        sbS.append(this.f58844e);
        sbS.append(", surtitleFont=");
        sbS.append(this.f58845f);
        sbS.append(", ratio=");
        sbS.append(this.g);
        sbS.append(", video=");
        sbS.append(this.f58846h);
        sbS.append(", looks=");
        sbS.append(this.f58847i);
        sbS.append(", contributionLink=");
        sbS.append(this.f58848j);
        sbS.append(", asset=");
        sbS.append(this.f58849k);
        sbS.append(", mustBeScaled=");
        sbS.append(this.l);
        sbS.append(", mainTheme=");
        sbS.append(this.m);
        sbS.append(")");
        return sbS.toString();
    }

    public /* synthetic */ VideoCtaArticleSectionUiModel(String str, String str2, String str3, ImmersiveArticleFontUiModel immersiveArticleFontUiModel, String str4, ImmersiveArticleFontUiModel immersiveArticleFontUiModel2, ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel, ImmersiveArticleVideoUiModel immersiveArticleVideoUiModel, List list, ContributionLinkUiModel contributionLinkUiModel, AssetUiModel assetUiModel, boolean z, SectionThemeUiModel sectionThemeUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, immersiveArticleFontUiModel, str4, immersiveArticleFontUiModel2, immersiveArticleSizeCardUiModel, immersiveArticleVideoUiModel, list, contributionLinkUiModel, assetUiModel, (i2 & 2048) != 0 ? false : z, sectionThemeUiModel);
    }
}
