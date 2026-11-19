package com.vuitton.android.presentation.screen.immersivearticle.models;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001Bc\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u000b\u0012\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;", "", ConfigurationName.KEY, "type", "title", "ctaText", "Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "asset", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;", "ratio", "", "wallpapers", "Landroidx/compose/runtime/MutableState;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;", "wallpaperDownloadState", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;", "mainTheme", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;Ljava/util/List;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class WallpaperArticleSectionUiModel extends ImmersiveArticleSectionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f58850a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f58851b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f58852c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AssetUiModel f58853e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ImmersiveArticleSizeCardUiModel f58854f;
    public final List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableState f58855h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final SectionThemeUiModel f58856i;

    public /* synthetic */ WallpaperArticleSectionUiModel(String str, String str2, String str3, String str4, AssetUiModel assetUiModel, ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel, List list, MutableState mutableState, SectionThemeUiModel sectionThemeUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, assetUiModel, immersiveArticleSizeCardUiModel, list, (i2 & 128) != 0 ? SnapshotStateKt.g(new WallpaperDownloadStateUiModel(false, false, false, 7, null)) : mutableState, sectionThemeUiModel);
    }

    @Override // com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSectionUiModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF58665a() {
        return this.f58850a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WallpaperArticleSectionUiModel)) {
            return false;
        }
        WallpaperArticleSectionUiModel wallpaperArticleSectionUiModel = (WallpaperArticleSectionUiModel) obj;
        return Intrinsics.c(this.f58850a, wallpaperArticleSectionUiModel.f58850a) && Intrinsics.c(this.f58851b, wallpaperArticleSectionUiModel.f58851b) && Intrinsics.c(this.f58852c, wallpaperArticleSectionUiModel.f58852c) && Intrinsics.c(this.d, wallpaperArticleSectionUiModel.d) && Intrinsics.c(this.f58853e, wallpaperArticleSectionUiModel.f58853e) && this.f58854f == wallpaperArticleSectionUiModel.f58854f && Intrinsics.c(this.g, wallpaperArticleSectionUiModel.g) && Intrinsics.c(this.f58855h, wallpaperArticleSectionUiModel.f58855h) && Intrinsics.c(this.f58856i, wallpaperArticleSectionUiModel.f58856i);
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(fc.b(this.f58850a.hashCode() * 31, 31, this.f58851b), 31, this.f58852c), 31, this.d);
        AssetUiModel assetUiModel = this.f58853e;
        int iHashCode = (iB + (assetUiModel == null ? 0 : assetUiModel.hashCode())) * 31;
        ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel = this.f58854f;
        int iHashCode2 = (this.f58855h.hashCode() + n00.a((iHashCode + (immersiveArticleSizeCardUiModel == null ? 0 : immersiveArticleSizeCardUiModel.hashCode())) * 31, 31, this.g)) * 31;
        SectionThemeUiModel sectionThemeUiModel = this.f58856i;
        return iHashCode2 + (sectionThemeUiModel != null ? sectionThemeUiModel.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("WallpaperArticleSectionUiModel(key=", this.f58850a, ", type=", this.f58851b, ", title=");
        cj.C(sbS, this.f58852c, ", ctaText=", this.d, ", asset=");
        sbS.append(this.f58853e);
        sbS.append(", ratio=");
        sbS.append(this.f58854f);
        sbS.append(", wallpapers=");
        sbS.append(this.g);
        sbS.append(", wallpaperDownloadState=");
        sbS.append(this.f58855h);
        sbS.append(", mainTheme=");
        sbS.append(this.f58856i);
        sbS.append(")");
        return sbS.toString();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WallpaperArticleSectionUiModel(String str, String str2, String str3, String str4, AssetUiModel assetUiModel, ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel, List<String> list, MutableState<WallpaperDownloadStateUiModel> mutableState, SectionThemeUiModel sectionThemeUiModel) {
        super(null);
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        list.getClass();
        mutableState.getClass();
        this.f58850a = str;
        this.f58851b = str2;
        this.f58852c = str3;
        this.d = str4;
        this.f58853e = assetUiModel;
        this.f58854f = immersiveArticleSizeCardUiModel;
        this.g = list;
        this.f58855h = mutableState;
        this.f58856i = sectionThemeUiModel;
    }
}
