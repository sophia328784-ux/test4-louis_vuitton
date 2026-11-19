package com.vuitton.foundation.model.domain.model.immersivearticle;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.fc;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001BI\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;", "", "", ConfigurationName.KEY, "title", "", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSection;", "sections", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveAudio;", "audio", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;", "banner", "backgroundColor", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveAudio;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticlePage {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67675a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67676b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f67677c;
    public final ImmersiveAudio d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ImmersiveArticleBanner f67678e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f67679f;

    public ImmersiveArticlePage(String str, String str2, List<? extends ImmersiveArticleSection> list, ImmersiveAudio immersiveAudio, ImmersiveArticleBanner immersiveArticleBanner, String str3) {
        this.f67675a = str;
        this.f67676b = str2;
        this.f67677c = list;
        this.d = immersiveAudio;
        this.f67678e = immersiveArticleBanner;
        this.f67679f = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticlePage)) {
            return false;
        }
        ImmersiveArticlePage immersiveArticlePage = (ImmersiveArticlePage) obj;
        return Intrinsics.c(this.f67675a, immersiveArticlePage.f67675a) && Intrinsics.c(this.f67676b, immersiveArticlePage.f67676b) && Intrinsics.c(this.f67677c, immersiveArticlePage.f67677c) && Intrinsics.c(this.d, immersiveArticlePage.d) && Intrinsics.c(this.f67678e, immersiveArticlePage.f67678e) && Intrinsics.c(this.f67679f, immersiveArticlePage.f67679f);
    }

    public final int hashCode() {
        String str = this.f67675a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f67676b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        List list = this.f67677c;
        int iHashCode3 = (iHashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        ImmersiveAudio immersiveAudio = this.d;
        int iHashCode4 = (iHashCode3 + (immersiveAudio == null ? 0 : immersiveAudio.hashCode())) * 31;
        ImmersiveArticleBanner immersiveArticleBanner = this.f67678e;
        int iHashCode5 = (iHashCode4 + (immersiveArticleBanner == null ? 0 : immersiveArticleBanner.hashCode())) * 31;
        String str3 = this.f67679f;
        return iHashCode5 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ImmersiveArticlePage(key=", this.f67675a, ", title=", this.f67676b, ", sections=");
        sbS.append(this.f67677c);
        sbS.append(", audio=");
        sbS.append(this.d);
        sbS.append(", banner=");
        sbS.append(this.f67678e);
        sbS.append(", backgroundColor=");
        sbS.append(this.f67679f);
        sbS.append(")");
        return sbS.toString();
    }
}
