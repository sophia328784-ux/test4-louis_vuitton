package com.vuitton.foundation.model.domain.model.immersivearticle;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductTabsSection;", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSection;", "", ConfigurationName.KEY, "type", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductTabsData;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductTabsData;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleProductTabsSection extends ImmersiveArticleSection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67690a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67691b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmersiveArticleProductTabsData f67692c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleProductTabsSection(String str, String str2, ImmersiveArticleProductTabsData immersiveArticleProductTabsData) {
        super(null);
        str.getClass();
        immersiveArticleProductTabsData.getClass();
        this.f67690a = str;
        this.f67691b = str2;
        this.f67692c = immersiveArticleProductTabsData;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleProductTabsSection)) {
            return false;
        }
        ImmersiveArticleProductTabsSection immersiveArticleProductTabsSection = (ImmersiveArticleProductTabsSection) obj;
        return Intrinsics.c(this.f67690a, immersiveArticleProductTabsSection.f67690a) && Intrinsics.c(this.f67691b, immersiveArticleProductTabsSection.f67691b) && Intrinsics.c(this.f67692c, immersiveArticleProductTabsSection.f67692c);
    }

    public final int hashCode() {
        int iHashCode = this.f67690a.hashCode() * 31;
        String str = this.f67691b;
        return this.f67692c.f67689a.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ImmersiveArticleProductTabsSection(key=", this.f67690a, ", type=", this.f67691b, ", data=");
        sbS.append(this.f67692c);
        sbS.append(")");
        return sbS.toString();
    }

    public /* synthetic */ ImmersiveArticleProductTabsSection(String str, String str2, ImmersiveArticleProductTabsData immersiveArticleProductTabsData, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2, immersiveArticleProductTabsData);
    }
}
