package com.vuitton.foundation.model.domain.model.product.vto;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@kotlin.Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSection;", "", "", b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSectionType;", "type", "Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSectionData;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSectionType;Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSectionData;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class TutorialSection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68094a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TutorialSectionType f68095b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TutorialSectionData f68096c;

    public TutorialSection(String str, TutorialSectionType tutorialSectionType, TutorialSectionData tutorialSectionData) {
        str.getClass();
        tutorialSectionType.getClass();
        tutorialSectionData.getClass();
        this.f68094a = str;
        this.f68095b = tutorialSectionType;
        this.f68096c = tutorialSectionData;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TutorialSection)) {
            return false;
        }
        TutorialSection tutorialSection = (TutorialSection) obj;
        return Intrinsics.c(this.f68094a, tutorialSection.f68094a) && this.f68095b == tutorialSection.f68095b && Intrinsics.c(this.f68096c, tutorialSection.f68096c);
    }

    public final int hashCode() {
        return this.f68096c.hashCode() + ((this.f68095b.hashCode() + (this.f68094a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "TutorialSection(id=" + this.f68094a + ", type=" + this.f68095b + ", data=" + this.f68096c + ")";
    }
}
