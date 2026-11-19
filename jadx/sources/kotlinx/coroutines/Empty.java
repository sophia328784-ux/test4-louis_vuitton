package kotlinx.coroutines;

import defpackage.fc;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/Empty;", "Lkotlinx/coroutines/Incomplete;", "", "isActive", "<init>", "(Z)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
final class Empty implements Incomplete {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f74664b;

    public Empty(boolean z) {
        this.f74664b = z;
    }

    @Override // kotlinx.coroutines.Incomplete
    /* JADX INFO: renamed from: b */
    public final NodeList getF74687b() {
        return null;
    }

    @Override // kotlinx.coroutines.Incomplete
    /* JADX INFO: renamed from: isActive, reason: from getter */
    public final boolean getF74664b() {
        return this.f74664b;
    }

    public final String toString() {
        return fc.l(new StringBuilder("Empty{"), this.f74664b ? "Active" : "New", '}');
    }
}
