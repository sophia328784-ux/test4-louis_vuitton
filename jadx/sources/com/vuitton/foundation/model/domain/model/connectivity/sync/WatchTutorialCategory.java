package com.vuitton.foundation.model.domain.model.connectivity.sync;

import defpackage.fc;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B=\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0016\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\b\u0012\u0004\u0012\u00020\u0007`\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/sync/WatchTutorialCategory;", "", "", "title", "subtitle", "iconUrl", "Ljava/util/ArrayList;", "Lcom/vuitton/foundation/model/domain/model/connectivity/sync/WatchTutorial;", "Lkotlin/collections/ArrayList;", "content", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class WatchTutorialCategory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67351a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67352b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67353c;
    public final ArrayList d;

    public WatchTutorialCategory(String str, String str2, String str3, ArrayList<WatchTutorial> arrayList) {
        arrayList.getClass();
        this.f67351a = str;
        this.f67352b = str2;
        this.f67353c = str3;
        this.d = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WatchTutorialCategory)) {
            return false;
        }
        WatchTutorialCategory watchTutorialCategory = (WatchTutorialCategory) obj;
        return Intrinsics.c(this.f67351a, watchTutorialCategory.f67351a) && Intrinsics.c(this.f67352b, watchTutorialCategory.f67352b) && Intrinsics.c(this.f67353c, watchTutorialCategory.f67353c) && Intrinsics.c(this.d, watchTutorialCategory.d);
    }

    public final int hashCode() {
        String str = this.f67351a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f67352b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f67353c;
        return this.d.hashCode() + ((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("WatchTutorialCategory(title=", this.f67351a, ", subtitle=", this.f67352b, ", iconUrl=");
        sbS.append(this.f67353c);
        sbS.append(", content=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }
}
