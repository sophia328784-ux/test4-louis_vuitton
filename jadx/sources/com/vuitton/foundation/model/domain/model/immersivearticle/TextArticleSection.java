package com.vuitton.foundation.model.domain.model.immersivearticle;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import defpackage.fc;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B£\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\u001a\u0010\u0017\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00160\u0015\u0018\u00010\u0014\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0018\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u001b¢\u0006\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/TextArticleSection;", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSection;", "", ConfigurationName.KEY, "type", "title", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;", "titleFont", "surtitle", "surtitleFont", "description", "descriptionFont", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;", "ratio", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTextModuleType;", "moduleType", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTextModuleAlignment;", "alignment", "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "asset", "", "Lkotlin/Pair;", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "ctas", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;", "mainTheme", "ctaTheme", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleDisclaimer;", "disclaimer", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleFont;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTextModuleType;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleTextModuleAlignment;Lcom/vuitton/foundation/model/domain/model/common/Asset;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleDisclaimer;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class TextArticleSection extends ImmersiveArticleSection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67726a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67727b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67728c;
    public final ImmersiveArticleFont d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67729e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ImmersiveArticleFont f67730f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ImmersiveArticleFont f67731h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ImmersiveArticleSizeCard f67732i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ImmersiveArticleTextModuleType f67733j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ImmersiveArticleTextModuleAlignment f67734k;
    public final Asset l;
    public final List m;
    public final SectionTheme n;
    public final SectionTheme o;
    public final ImmersiveArticleDisclaimer p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextArticleSection(String str, String str2, String str3, ImmersiveArticleFont immersiveArticleFont, String str4, ImmersiveArticleFont immersiveArticleFont2, String str5, ImmersiveArticleFont immersiveArticleFont3, ImmersiveArticleSizeCard immersiveArticleSizeCard, ImmersiveArticleTextModuleType immersiveArticleTextModuleType, ImmersiveArticleTextModuleAlignment immersiveArticleTextModuleAlignment, Asset asset, List<? extends Pair<String, ? extends ContributionLink>> list, SectionTheme sectionTheme, SectionTheme sectionTheme2, ImmersiveArticleDisclaimer immersiveArticleDisclaimer) {
        super(null);
        str.getClass();
        str2.getClass();
        str3.getClass();
        immersiveArticleFont.getClass();
        str4.getClass();
        immersiveArticleFont2.getClass();
        str5.getClass();
        immersiveArticleFont3.getClass();
        immersiveArticleSizeCard.getClass();
        immersiveArticleTextModuleType.getClass();
        immersiveArticleTextModuleAlignment.getClass();
        this.f67726a = str;
        this.f67727b = str2;
        this.f67728c = str3;
        this.d = immersiveArticleFont;
        this.f67729e = str4;
        this.f67730f = immersiveArticleFont2;
        this.g = str5;
        this.f67731h = immersiveArticleFont3;
        this.f67732i = immersiveArticleSizeCard;
        this.f67733j = immersiveArticleTextModuleType;
        this.f67734k = immersiveArticleTextModuleAlignment;
        this.l = asset;
        this.m = list;
        this.n = sectionTheme;
        this.o = sectionTheme2;
        this.p = immersiveArticleDisclaimer;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextArticleSection)) {
            return false;
        }
        TextArticleSection textArticleSection = (TextArticleSection) obj;
        return Intrinsics.c(this.f67726a, textArticleSection.f67726a) && Intrinsics.c(this.f67727b, textArticleSection.f67727b) && Intrinsics.c(this.f67728c, textArticleSection.f67728c) && this.d == textArticleSection.d && Intrinsics.c(this.f67729e, textArticleSection.f67729e) && this.f67730f == textArticleSection.f67730f && Intrinsics.c(this.g, textArticleSection.g) && this.f67731h == textArticleSection.f67731h && this.f67732i == textArticleSection.f67732i && this.f67733j == textArticleSection.f67733j && this.f67734k == textArticleSection.f67734k && Intrinsics.c(this.l, textArticleSection.l) && Intrinsics.c(this.m, textArticleSection.m) && Intrinsics.c(this.n, textArticleSection.n) && Intrinsics.c(this.o, textArticleSection.o) && Intrinsics.c(this.p, textArticleSection.p);
    }

    public final int hashCode() {
        int iHashCode = (this.f67734k.hashCode() + ((this.f67733j.hashCode() + ((this.f67732i.hashCode() + ((this.f67731h.hashCode() + fc.b((this.f67730f.hashCode() + fc.b((this.d.hashCode() + fc.b(fc.b(this.f67726a.hashCode() * 31, 31, this.f67727b), 31, this.f67728c)) * 31, 31, this.f67729e)) * 31, 31, this.g)) * 31)) * 31)) * 31)) * 31;
        Asset asset = this.l;
        int iHashCode2 = (iHashCode + (asset == null ? 0 : asset.hashCode())) * 31;
        List list = this.m;
        int iHashCode3 = (iHashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        SectionTheme sectionTheme = this.n;
        int iHashCode4 = (iHashCode3 + (sectionTheme == null ? 0 : sectionTheme.hashCode())) * 31;
        SectionTheme sectionTheme2 = this.o;
        int iHashCode5 = (iHashCode4 + (sectionTheme2 == null ? 0 : sectionTheme2.hashCode())) * 31;
        ImmersiveArticleDisclaimer immersiveArticleDisclaimer = this.p;
        return iHashCode5 + (immersiveArticleDisclaimer != null ? immersiveArticleDisclaimer.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("TextArticleSection(key=", this.f67726a, ", type=", this.f67727b, ", title=");
        sbS.append(this.f67728c);
        sbS.append(", titleFont=");
        sbS.append(this.d);
        sbS.append(", surtitle=");
        sbS.append(this.f67729e);
        sbS.append(", surtitleFont=");
        sbS.append(this.f67730f);
        sbS.append(", description=");
        sbS.append(this.g);
        sbS.append(", descriptionFont=");
        sbS.append(this.f67731h);
        sbS.append(", ratio=");
        sbS.append(this.f67732i);
        sbS.append(", moduleType=");
        sbS.append(this.f67733j);
        sbS.append(", alignment=");
        sbS.append(this.f67734k);
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
