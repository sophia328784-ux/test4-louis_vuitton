package androidx.work.impl.model;

import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/work/impl/model/WorkGenerationalId;", "", "", "workSpecId", "", "generation", "<init>", "(Ljava/lang/String;I)V", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class WorkGenerationalId {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f20499a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f20500b;

    public WorkGenerationalId(String str, int i2) {
        str.getClass();
        this.f20499a = str;
        this.f20500b = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WorkGenerationalId)) {
            return false;
        }
        WorkGenerationalId workGenerationalId = (WorkGenerationalId) obj;
        return Intrinsics.c(this.f20499a, workGenerationalId.f20499a) && this.f20500b == workGenerationalId.f20500b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f20500b) + (this.f20499a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("WorkGenerationalId(workSpecId=");
        sb.append(this.f20499a);
        sb.append(", generation=");
        return tr.k(sb, this.f20500b, ')');
    }
}
