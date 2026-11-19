package kotlin.sequences;

import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0002"}, d2 = {"kotlin/sequences/SequencesKt___SequencesKt$sorted$1", "Lkotlin/sequences/Sequence;", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class SequencesKt___SequencesKt$sorted$1 implements Sequence<Comparable<Object>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Sequence f74487a;

    public SequencesKt___SequencesKt$sorted$1(Sequence sequence) {
        this.f74487a = sequence;
    }

    @Override // kotlin.sequences.Sequence
    /* JADX INFO: renamed from: iterator */
    public final Iterator getF74480a() {
        ArrayList arrayList = new ArrayList();
        Iterator f74480a = this.f74487a.getF74480a();
        while (f74480a.hasNext()) {
            arrayList.add(f74480a.next());
        }
        CollectionsKt.l0(arrayList);
        return arrayList.iterator();
    }
}
