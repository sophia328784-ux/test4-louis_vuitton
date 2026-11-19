package com.vuitton.android.presentation.screen.immersivearticle.models;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.android.presentation.common.editorial.models.LiveFormatUiModel;
import com.vuitton.android.presentation.common.editorial.models.LiveInfoUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001Bu\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;", "", ConfigurationName.KEY, "type", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTitlesUiModel;", "titlesDuringLive", "titlesDuringReplay", "Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "asset", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;", "ratio", "Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;", "video", "Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;", "liveInfo", "", "isOnCountdown", "Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;", "format", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowContentUiModel;", "content", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;", "mainTheme", "ctaTheme", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTitlesUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTitlesUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;ZLcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowContentUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleFashionShowSectionUiModel extends ImmersiveArticleSectionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f58672a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f58673b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmersiveArticleTitlesUiModel f58674c;
    public final ImmersiveArticleTitlesUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AssetUiModel f58675e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ImmersiveArticleSizeCardUiModel f58676f;
    public final AssetVideoUiModel g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LiveInfoUiModel f58677h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f58678i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LiveFormatUiModel f58679j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ImmersiveArticleFashionShowContentUiModel f58680k;
    public final SectionThemeUiModel l;
    public final SectionThemeUiModel m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleFashionShowSectionUiModel(String str, String str2, ImmersiveArticleTitlesUiModel immersiveArticleTitlesUiModel, ImmersiveArticleTitlesUiModel immersiveArticleTitlesUiModel2, AssetUiModel assetUiModel, ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel, AssetVideoUiModel assetVideoUiModel, LiveInfoUiModel liveInfoUiModel, boolean z, LiveFormatUiModel liveFormatUiModel, ImmersiveArticleFashionShowContentUiModel immersiveArticleFashionShowContentUiModel, SectionThemeUiModel sectionThemeUiModel, SectionThemeUiModel sectionThemeUiModel2) {
        super(null);
        str.getClass();
        str2.getClass();
        immersiveArticleTitlesUiModel.getClass();
        immersiveArticleTitlesUiModel2.getClass();
        assetUiModel.getClass();
        immersiveArticleSizeCardUiModel.getClass();
        assetVideoUiModel.getClass();
        liveInfoUiModel.getClass();
        liveFormatUiModel.getClass();
        this.f58672a = str;
        this.f58673b = str2;
        this.f58674c = immersiveArticleTitlesUiModel;
        this.d = immersiveArticleTitlesUiModel2;
        this.f58675e = assetUiModel;
        this.f58676f = immersiveArticleSizeCardUiModel;
        this.g = assetVideoUiModel;
        this.f58677h = liveInfoUiModel;
        this.f58678i = z;
        this.f58679j = liveFormatUiModel;
        this.f58680k = immersiveArticleFashionShowContentUiModel;
        this.l = sectionThemeUiModel;
        this.m = sectionThemeUiModel2;
    }

    @Override // com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSectionUiModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF58672a() {
        return this.f58672a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleFashionShowSectionUiModel)) {
            return false;
        }
        ImmersiveArticleFashionShowSectionUiModel immersiveArticleFashionShowSectionUiModel = (ImmersiveArticleFashionShowSectionUiModel) obj;
        return Intrinsics.c(this.f58672a, immersiveArticleFashionShowSectionUiModel.f58672a) && Intrinsics.c(this.f58673b, immersiveArticleFashionShowSectionUiModel.f58673b) && Intrinsics.c(this.f58674c, immersiveArticleFashionShowSectionUiModel.f58674c) && Intrinsics.c(this.d, immersiveArticleFashionShowSectionUiModel.d) && Intrinsics.c(this.f58675e, immersiveArticleFashionShowSectionUiModel.f58675e) && this.f58676f == immersiveArticleFashionShowSectionUiModel.f58676f && Intrinsics.c(this.g, immersiveArticleFashionShowSectionUiModel.g) && Intrinsics.c(this.f58677h, immersiveArticleFashionShowSectionUiModel.f58677h) && this.f58678i == immersiveArticleFashionShowSectionUiModel.f58678i && this.f58679j == immersiveArticleFashionShowSectionUiModel.f58679j && Intrinsics.c(this.f58680k, immersiveArticleFashionShowSectionUiModel.f58680k) && Intrinsics.c(this.l, immersiveArticleFashionShowSectionUiModel.l) && Intrinsics.c(this.m, immersiveArticleFashionShowSectionUiModel.m);
    }

    public final int hashCode() {
        int iHashCode = (this.f58679j.hashCode() + o60.b((this.f58677h.hashCode() + ((this.g.hashCode() + ((this.f58676f.hashCode() + ((this.f58675e.hashCode() + ((this.d.hashCode() + ((this.f58674c.hashCode() + fc.b(this.f58672a.hashCode() * 31, 31, this.f58673b)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31, 31, this.f58678i)) * 31;
        ImmersiveArticleFashionShowContentUiModel immersiveArticleFashionShowContentUiModel = this.f58680k;
        int iHashCode2 = (iHashCode + (immersiveArticleFashionShowContentUiModel == null ? 0 : immersiveArticleFashionShowContentUiModel.hashCode())) * 31;
        SectionThemeUiModel sectionThemeUiModel = this.l;
        int iHashCode3 = (iHashCode2 + (sectionThemeUiModel == null ? 0 : sectionThemeUiModel.hashCode())) * 31;
        SectionThemeUiModel sectionThemeUiModel2 = this.m;
        return iHashCode3 + (sectionThemeUiModel2 != null ? sectionThemeUiModel2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ImmersiveArticleFashionShowSectionUiModel(key=", this.f58672a, ", type=", this.f58673b, ", titlesDuringLive=");
        sbS.append(this.f58674c);
        sbS.append(", titlesDuringReplay=");
        sbS.append(this.d);
        sbS.append(", asset=");
        sbS.append(this.f58675e);
        sbS.append(", ratio=");
        sbS.append(this.f58676f);
        sbS.append(", video=");
        sbS.append(this.g);
        sbS.append(", liveInfo=");
        sbS.append(this.f58677h);
        sbS.append(", isOnCountdown=");
        sbS.append(this.f58678i);
        sbS.append(", format=");
        sbS.append(this.f58679j);
        sbS.append(", content=");
        sbS.append(this.f58680k);
        sbS.append(", mainTheme=");
        sbS.append(this.l);
        sbS.append(", ctaTheme=");
        sbS.append(this.m);
        sbS.append(")");
        return sbS.toString();
    }
}
