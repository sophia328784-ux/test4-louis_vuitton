package com.vuitton.foundation.model.domain.model.immersivearticle;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductListSection;", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSection;", "", ConfigurationName.KEY, "type", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductListData;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductListData;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleProductListSection extends ImmersiveArticleSection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67683a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67684b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmersiveArticleProductListData f67685c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleProductListSection(String str, String str2, ImmersiveArticleProductListData immersiveArticleProductListData) {
        super(null);
        str.getClass();
        immersiveArticleProductListData.getClass();
        this.f67683a = str;
        this.f67684b = str2;
        this.f67685c = immersiveArticleProductListData;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleProductListSection)) {
            return false;
        }
        ImmersiveArticleProductListSection immersiveArticleProductListSection = (ImmersiveArticleProductListSection) obj;
        return Intrinsics.c(this.f67683a, immersiveArticleProductListSection.f67683a) && Intrinsics.c(this.f67684b, immersiveArticleProductListSection.f67684b) && Intrinsics.c(this.f67685c, immersiveArticleProductListSection.f67685c);
    }

    public final int hashCode() {
        int iHashCode = this.f67683a.hashCode() * 31;
        String str = this.f67684b;
        return this.f67685c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ImmersiveArticleProductListSection(key=", this.f67683a, ", type=", this.f67684b, ", data=");
        sbS.append(this.f67685c);
        sbS.append(")");
        return sbS.toString();
    }

    public /* synthetic */ ImmersiveArticleProductListSection(String str, String str2, ImmersiveArticleProductListData immersiveArticleProductListData, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2, immersiveArticleProductListData);
    }
}
