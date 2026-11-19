package com.vuitton.foundation.model.domain.model.immersivearticle;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSliderSection;", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSection;", "", ConfigurationName.KEY, "type", "title", "", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSlide;", "slides", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;", "mainTheme", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleSliderSection extends ImmersiveArticleSection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67697a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67698b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67699c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SectionTheme f67700e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleSliderSection(String str, String str2, String str3, List<ImmersiveArticleSlide> list, SectionTheme sectionTheme) {
        super(null);
        pq0.B(str, str2, list);
        this.f67697a = str;
        this.f67698b = str2;
        this.f67699c = str3;
        this.d = list;
        this.f67700e = sectionTheme;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleSliderSection)) {
            return false;
        }
        ImmersiveArticleSliderSection immersiveArticleSliderSection = (ImmersiveArticleSliderSection) obj;
        return Intrinsics.c(this.f67697a, immersiveArticleSliderSection.f67697a) && Intrinsics.c(this.f67698b, immersiveArticleSliderSection.f67698b) && Intrinsics.c(this.f67699c, immersiveArticleSliderSection.f67699c) && Intrinsics.c(this.d, immersiveArticleSliderSection.d) && Intrinsics.c(this.f67700e, immersiveArticleSliderSection.f67700e);
    }

    public final int hashCode() {
        int iB = fc.b(this.f67697a.hashCode() * 31, 31, this.f67698b);
        String str = this.f67699c;
        int iA = n00.a((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.d);
        SectionTheme sectionTheme = this.f67700e;
        return iA + (sectionTheme != null ? sectionTheme.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ImmersiveArticleSliderSection(key=", this.f67697a, ", type=", this.f67698b, ", title=");
        d21.z(this.f67699c, ", slides=", ", mainTheme=", sbS, this.d);
        sbS.append(this.f67700e);
        sbS.append(")");
        return sbS.toString();
    }
}
