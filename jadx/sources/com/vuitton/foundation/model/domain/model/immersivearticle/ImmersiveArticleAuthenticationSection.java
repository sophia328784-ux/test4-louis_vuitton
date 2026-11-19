package com.vuitton.foundation.model.domain.model.immersivearticle;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.cj;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAuthenticationSection;", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSection;", "", ConfigurationName.KEY, "type", "title", "description", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleAuthenticationSection extends ImmersiveArticleSection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67632a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67633b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67634c;
    public final String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleAuthenticationSection(String str, String str2, String str3, String str4) {
        super(null);
        cj.z(str, str2, str3);
        this.f67632a = str;
        this.f67633b = str2;
        this.f67634c = str3;
        this.d = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleAuthenticationSection)) {
            return false;
        }
        ImmersiveArticleAuthenticationSection immersiveArticleAuthenticationSection = (ImmersiveArticleAuthenticationSection) obj;
        return Intrinsics.c(this.f67632a, immersiveArticleAuthenticationSection.f67632a) && Intrinsics.c(this.f67633b, immersiveArticleAuthenticationSection.f67633b) && Intrinsics.c(this.f67634c, immersiveArticleAuthenticationSection.f67634c) && Intrinsics.c(this.d, immersiveArticleAuthenticationSection.d);
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(this.f67632a.hashCode() * 31, 31, this.f67633b), 31, this.f67634c);
        String str = this.d;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return tr.l(fc.s("ImmersiveArticleAuthenticationSection(key=", this.f67632a, ", type=", this.f67633b, ", title="), this.f67634c, ", description=", this.d, ")");
    }
}
