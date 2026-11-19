package com.vuitton.android.presentation.screen.immersivearticle.models;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import defpackage.fc;
import defpackage.o60;
import java.time.Instant;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001Bg\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleEventSectionUiModel;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;", "", ConfigurationName.KEY, "type", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTitlesUiModel;", "titlesDuringCountdown", "titlesAfterCountdown", "Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "asset", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;", "ratio", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleEventContentUiModel;", "content", "Ljava/time/Instant;", "deadline", "", "isOnCountdown", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;", "mainTheme", "ctaTheme", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTitlesUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTitlesUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleEventContentUiModel;Ljava/time/Instant;ZLcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleEventSectionUiModel extends ImmersiveArticleSectionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f58656a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f58657b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmersiveArticleTitlesUiModel f58658c;
    public final ImmersiveArticleTitlesUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AssetUiModel f58659e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ImmersiveArticleSizeCardUiModel f58660f;
    public final ImmersiveArticleEventContentUiModel g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Instant f58661h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f58662i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final SectionThemeUiModel f58663j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final SectionThemeUiModel f58664k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleEventSectionUiModel(String str, String str2, ImmersiveArticleTitlesUiModel immersiveArticleTitlesUiModel, ImmersiveArticleTitlesUiModel immersiveArticleTitlesUiModel2, AssetUiModel assetUiModel, ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel, ImmersiveArticleEventContentUiModel immersiveArticleEventContentUiModel, Instant instant, boolean z, SectionThemeUiModel sectionThemeUiModel, SectionThemeUiModel sectionThemeUiModel2) {
        super(null);
        str.getClass();
        str2.getClass();
        immersiveArticleTitlesUiModel.getClass();
        immersiveArticleTitlesUiModel2.getClass();
        assetUiModel.getClass();
        immersiveArticleSizeCardUiModel.getClass();
        this.f58656a = str;
        this.f58657b = str2;
        this.f58658c = immersiveArticleTitlesUiModel;
        this.d = immersiveArticleTitlesUiModel2;
        this.f58659e = assetUiModel;
        this.f58660f = immersiveArticleSizeCardUiModel;
        this.g = immersiveArticleEventContentUiModel;
        this.f58661h = instant;
        this.f58662i = z;
        this.f58663j = sectionThemeUiModel;
        this.f58664k = sectionThemeUiModel2;
    }

    @Override // com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSectionUiModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF58656a() {
        return this.f58656a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleEventSectionUiModel)) {
            return false;
        }
        ImmersiveArticleEventSectionUiModel immersiveArticleEventSectionUiModel = (ImmersiveArticleEventSectionUiModel) obj;
        return Intrinsics.c(this.f58656a, immersiveArticleEventSectionUiModel.f58656a) && Intrinsics.c(this.f58657b, immersiveArticleEventSectionUiModel.f58657b) && Intrinsics.c(this.f58658c, immersiveArticleEventSectionUiModel.f58658c) && Intrinsics.c(this.d, immersiveArticleEventSectionUiModel.d) && Intrinsics.c(this.f58659e, immersiveArticleEventSectionUiModel.f58659e) && this.f58660f == immersiveArticleEventSectionUiModel.f58660f && Intrinsics.c(this.g, immersiveArticleEventSectionUiModel.g) && Intrinsics.c(this.f58661h, immersiveArticleEventSectionUiModel.f58661h) && this.f58662i == immersiveArticleEventSectionUiModel.f58662i && Intrinsics.c(this.f58663j, immersiveArticleEventSectionUiModel.f58663j) && Intrinsics.c(this.f58664k, immersiveArticleEventSectionUiModel.f58664k);
    }

    public final int hashCode() {
        int iHashCode = (this.f58660f.hashCode() + ((this.f58659e.hashCode() + ((this.d.hashCode() + ((this.f58658c.hashCode() + fc.b(this.f58656a.hashCode() * 31, 31, this.f58657b)) * 31)) * 31)) * 31)) * 31;
        ImmersiveArticleEventContentUiModel immersiveArticleEventContentUiModel = this.g;
        int iHashCode2 = (iHashCode + (immersiveArticleEventContentUiModel == null ? 0 : immersiveArticleEventContentUiModel.hashCode())) * 31;
        Instant instant = this.f58661h;
        int iB = o60.b((iHashCode2 + (instant == null ? 0 : instant.hashCode())) * 31, 31, this.f58662i);
        SectionThemeUiModel sectionThemeUiModel = this.f58663j;
        int iHashCode3 = (iB + (sectionThemeUiModel == null ? 0 : sectionThemeUiModel.hashCode())) * 31;
        SectionThemeUiModel sectionThemeUiModel2 = this.f58664k;
        return iHashCode3 + (sectionThemeUiModel2 != null ? sectionThemeUiModel2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ImmersiveArticleEventSectionUiModel(key=", this.f58656a, ", type=", this.f58657b, ", titlesDuringCountdown=");
        sbS.append(this.f58658c);
        sbS.append(", titlesAfterCountdown=");
        sbS.append(this.d);
        sbS.append(", asset=");
        sbS.append(this.f58659e);
        sbS.append(", ratio=");
        sbS.append(this.f58660f);
        sbS.append(", content=");
        sbS.append(this.g);
        sbS.append(", deadline=");
        sbS.append(this.f58661h);
        sbS.append(", isOnCountdown=");
        sbS.append(this.f58662i);
        sbS.append(", mainTheme=");
        sbS.append(this.f58663j);
        sbS.append(", ctaTheme=");
        sbS.append(this.f58664k);
        sbS.append(")");
        return sbS.toString();
    }
}
