package com.vuitton.foundation.model.domain.model.personalselections;

import com.batch.android.s.b;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionStore;", "", "", b.a.f24015b, "name", "imageURL", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SelectionStore {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67814a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67815b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67816c;

    public SelectionStore(String str, String str2, String str3) {
        str2.getClass();
        this.f67814a = str;
        this.f67815b = str2;
        this.f67816c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SelectionStore)) {
            return false;
        }
        SelectionStore selectionStore = (SelectionStore) obj;
        return Intrinsics.c(this.f67814a, selectionStore.f67814a) && Intrinsics.c(this.f67815b, selectionStore.f67815b) && Intrinsics.c(this.f67816c, selectionStore.f67816c);
    }

    public final int hashCode() {
        String str = this.f67814a;
        int iB = fc.b((str == null ? 0 : str.hashCode()) * 31, 31, this.f67815b);
        String str2 = this.f67816c;
        return iB + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return n00.r(this.f67816c, ")", fc.s("SelectionStore(id=", this.f67814a, ", name=", this.f67815b, ", imageURL="));
    }
}
