package com.vuitton.android.presentation.tracking;

import defpackage.d21;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/tracking/PLPListTrackingIds;", "", "", "rootItemListId", "rootItemListName", "itemListId", "itemListName", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PLPListTrackingIds {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f65827a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f65828b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f65829c;
    public final String d;

    public PLPListTrackingIds(String str, String str2, String str3, String str4) {
        d21.y(str, str2, str3, str4);
        this.f65827a = str;
        this.f65828b = str2;
        this.f65829c = str3;
        this.d = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PLPListTrackingIds)) {
            return false;
        }
        PLPListTrackingIds pLPListTrackingIds = (PLPListTrackingIds) obj;
        return Intrinsics.c(this.f65827a, pLPListTrackingIds.f65827a) && Intrinsics.c(this.f65828b, pLPListTrackingIds.f65828b) && Intrinsics.c(this.f65829c, pLPListTrackingIds.f65829c) && Intrinsics.c(this.d, pLPListTrackingIds.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + fc.b(fc.b(this.f65827a.hashCode() * 31, 31, this.f65828b), 31, this.f65829c);
    }

    public final String toString() {
        return tr.l(fc.s("PLPListTrackingIds(rootItemListId=", this.f65827a, ", rootItemListName=", this.f65828b, ", itemListId="), this.f65829c, ", itemListName=", this.d, ")");
    }
}
