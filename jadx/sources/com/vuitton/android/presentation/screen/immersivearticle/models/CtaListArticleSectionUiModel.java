package com.vuitton.android.presentation.screen.immersivearticle.models;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0018\u0010\b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00070\u00060\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/CtaListArticleSectionUiModel;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;", "", ConfigurationName.KEY, "type", "", "Lkotlin/Pair;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "ctas", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;", "mainTheme", "ctaTheme", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CtaListArticleSectionUiModel extends ImmersiveArticleSectionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f58633a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f58634b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f58635c;
    public final SectionThemeUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SectionThemeUiModel f58636e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CtaListArticleSectionUiModel(String str, String str2, List<? extends Pair<String, ? extends ContributionLinkUiModel>> list, SectionThemeUiModel sectionThemeUiModel, SectionThemeUiModel sectionThemeUiModel2) {
        super(null);
        pq0.B(str, str2, list);
        this.f58633a = str;
        this.f58634b = str2;
        this.f58635c = list;
        this.d = sectionThemeUiModel;
        this.f58636e = sectionThemeUiModel2;
    }

    @Override // com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSectionUiModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF58633a() {
        return this.f58633a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CtaListArticleSectionUiModel)) {
            return false;
        }
        CtaListArticleSectionUiModel ctaListArticleSectionUiModel = (CtaListArticleSectionUiModel) obj;
        return Intrinsics.c(this.f58633a, ctaListArticleSectionUiModel.f58633a) && Intrinsics.c(this.f58634b, ctaListArticleSectionUiModel.f58634b) && Intrinsics.c(this.f58635c, ctaListArticleSectionUiModel.f58635c) && Intrinsics.c(this.d, ctaListArticleSectionUiModel.d) && Intrinsics.c(this.f58636e, ctaListArticleSectionUiModel.f58636e);
    }

    public final int hashCode() {
        int iA = n00.a(fc.b(this.f58633a.hashCode() * 31, 31, this.f58634b), 31, this.f58635c);
        SectionThemeUiModel sectionThemeUiModel = this.d;
        int iHashCode = (iA + (sectionThemeUiModel == null ? 0 : sectionThemeUiModel.hashCode())) * 31;
        SectionThemeUiModel sectionThemeUiModel2 = this.f58636e;
        return iHashCode + (sectionThemeUiModel2 != null ? sectionThemeUiModel2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("CtaListArticleSectionUiModel(key=", this.f58633a, ", type=", this.f58634b, ", ctas=");
        sbS.append(this.f58635c);
        sbS.append(", mainTheme=");
        sbS.append(this.d);
        sbS.append(", ctaTheme=");
        sbS.append(this.f58636e);
        sbS.append(")");
        return sbS.toString();
    }
}
