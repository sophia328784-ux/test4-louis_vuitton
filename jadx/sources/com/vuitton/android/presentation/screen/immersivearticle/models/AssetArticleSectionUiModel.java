package com.vuitton.android.presentation.screen.immersivearticle.models;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000e\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/AssetArticleSectionUiModel;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;", "", ConfigurationName.KEY, "type", "title", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;", "titleFont", "surtitle", "surtitleFont", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;", "ratio", "Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "asset", "", "mustBeScaled", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;", "mainTheme", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;ZLcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AssetArticleSectionUiModel extends ImmersiveArticleSectionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f58621a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f58622b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f58623c;
    public final ImmersiveArticleFontUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f58624e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ImmersiveArticleFontUiModel f58625f;
    public final ImmersiveArticleSizeCardUiModel g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AssetUiModel f58626h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f58627i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final SectionThemeUiModel f58628j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AssetArticleSectionUiModel(String str, String str2, String str3, ImmersiveArticleFontUiModel immersiveArticleFontUiModel, String str4, ImmersiveArticleFontUiModel immersiveArticleFontUiModel2, ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel, AssetUiModel assetUiModel, boolean z, SectionThemeUiModel sectionThemeUiModel) {
        super(null);
        str.getClass();
        str2.getClass();
        str3.getClass();
        immersiveArticleFontUiModel.getClass();
        str4.getClass();
        immersiveArticleFontUiModel2.getClass();
        immersiveArticleSizeCardUiModel.getClass();
        this.f58621a = str;
        this.f58622b = str2;
        this.f58623c = str3;
        this.d = immersiveArticleFontUiModel;
        this.f58624e = str4;
        this.f58625f = immersiveArticleFontUiModel2;
        this.g = immersiveArticleSizeCardUiModel;
        this.f58626h = assetUiModel;
        this.f58627i = z;
        this.f58628j = sectionThemeUiModel;
    }

    @Override // com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSectionUiModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF58621a() {
        return this.f58621a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AssetArticleSectionUiModel)) {
            return false;
        }
        AssetArticleSectionUiModel assetArticleSectionUiModel = (AssetArticleSectionUiModel) obj;
        return Intrinsics.c(this.f58621a, assetArticleSectionUiModel.f58621a) && Intrinsics.c(this.f58622b, assetArticleSectionUiModel.f58622b) && Intrinsics.c(this.f58623c, assetArticleSectionUiModel.f58623c) && this.d == assetArticleSectionUiModel.d && Intrinsics.c(this.f58624e, assetArticleSectionUiModel.f58624e) && this.f58625f == assetArticleSectionUiModel.f58625f && this.g == assetArticleSectionUiModel.g && Intrinsics.c(this.f58626h, assetArticleSectionUiModel.f58626h) && this.f58627i == assetArticleSectionUiModel.f58627i && Intrinsics.c(this.f58628j, assetArticleSectionUiModel.f58628j);
    }

    public final int hashCode() {
        int iHashCode = (this.g.hashCode() + ((this.f58625f.hashCode() + fc.b((this.d.hashCode() + fc.b(fc.b(this.f58621a.hashCode() * 31, 31, this.f58622b), 31, this.f58623c)) * 31, 31, this.f58624e)) * 31)) * 31;
        AssetUiModel assetUiModel = this.f58626h;
        int iB = o60.b((iHashCode + (assetUiModel == null ? 0 : assetUiModel.hashCode())) * 31, 31, this.f58627i);
        SectionThemeUiModel sectionThemeUiModel = this.f58628j;
        return iB + (sectionThemeUiModel != null ? sectionThemeUiModel.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("AssetArticleSectionUiModel(key=", this.f58621a, ", type=", this.f58622b, ", title=");
        sbS.append(this.f58623c);
        sbS.append(", titleFont=");
        sbS.append(this.d);
        sbS.append(", surtitle=");
        sbS.append(this.f58624e);
        sbS.append(", surtitleFont=");
        sbS.append(this.f58625f);
        sbS.append(", ratio=");
        sbS.append(this.g);
        sbS.append(", asset=");
        sbS.append(this.f58626h);
        sbS.append(", mustBeScaled=");
        sbS.append(this.f58627i);
        sbS.append(", mainTheme=");
        sbS.append(this.f58628j);
        sbS.append(")");
        return sbS.toString();
    }

    public /* synthetic */ AssetArticleSectionUiModel(String str, String str2, String str3, ImmersiveArticleFontUiModel immersiveArticleFontUiModel, String str4, ImmersiveArticleFontUiModel immersiveArticleFontUiModel2, ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel, AssetUiModel assetUiModel, boolean z, SectionThemeUiModel sectionThemeUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, immersiveArticleFontUiModel, str4, immersiveArticleFontUiModel2, immersiveArticleSizeCardUiModel, assetUiModel, (i2 & 256) != 0 ? false : z, sectionThemeUiModel);
    }
}
