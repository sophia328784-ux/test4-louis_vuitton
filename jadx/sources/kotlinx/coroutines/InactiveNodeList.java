package kotlinx.coroutines;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/InactiveNodeList;", "Lkotlinx/coroutines/Incomplete;", "Lkotlinx/coroutines/NodeList;", "list", "<init>", "(Lkotlinx/coroutines/NodeList;)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
final class InactiveNodeList implements Incomplete {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final NodeList f74670b;

    public InactiveNodeList(NodeList nodeList) {
        this.f74670b = nodeList;
    }

    @Override // kotlinx.coroutines.Incomplete
    /* JADX INFO: renamed from: b, reason: from getter */
    public final NodeList getF74670b() {
        return this.f74670b;
    }

    @Override // kotlinx.coroutines.Incomplete
    public final boolean isActive() {
        return false;
    }
}
