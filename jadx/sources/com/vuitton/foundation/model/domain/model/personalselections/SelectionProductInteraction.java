package com.vuitton.foundation.model.domain.model.personalselections;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionProductInteraction;", "", "", "isLiked", "", "token", "<init>", "(ZLjava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SelectionProductInteraction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f67812a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67813b;

    public SelectionProductInteraction(boolean z, String str) {
        str.getClass();
        this.f67812a = z;
        this.f67813b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SelectionProductInteraction)) {
            return false;
        }
        SelectionProductInteraction selectionProductInteraction = (SelectionProductInteraction) obj;
        return this.f67812a == selectionProductInteraction.f67812a && Intrinsics.c(this.f67813b, selectionProductInteraction.f67813b);
    }

    public final int hashCode() {
        return this.f67813b.hashCode() + (Boolean.hashCode(this.f67812a) * 31);
    }

    public final String toString() {
        return "SelectionProductInteraction(isLiked=" + this.f67812a + ", token=" + this.f67813b + ")";
    }
}
