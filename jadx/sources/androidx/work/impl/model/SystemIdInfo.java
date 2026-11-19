package androidx.work.impl.model;

import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/work/impl/model/SystemIdInfo;", "", "", "workSpecId", "", "generation", "systemId", "<init>", "(Ljava/lang/String;II)V", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class SystemIdInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f20493a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f20494b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f20495c;

    public SystemIdInfo(String str, int i2, int i3) {
        str.getClass();
        this.f20493a = str;
        this.f20494b = i2;
        this.f20495c = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SystemIdInfo)) {
            return false;
        }
        SystemIdInfo systemIdInfo = (SystemIdInfo) obj;
        return Intrinsics.c(this.f20493a, systemIdInfo.f20493a) && this.f20494b == systemIdInfo.f20494b && this.f20495c == systemIdInfo.f20495c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f20495c) + tr.b(this.f20494b, this.f20493a.hashCode() * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SystemIdInfo(workSpecId=");
        sb.append(this.f20493a);
        sb.append(", generation=");
        sb.append(this.f20494b);
        sb.append(", systemId=");
        return tr.k(sb, this.f20495c, ')');
    }
}
