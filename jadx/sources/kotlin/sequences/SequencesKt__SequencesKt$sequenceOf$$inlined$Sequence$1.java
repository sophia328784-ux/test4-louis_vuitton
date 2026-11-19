package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0002"}, d2 = {"kotlin/sequences/SequencesKt__SequencesKt$sequenceOf$$inlined$Sequence$1", "Lkotlin/sequences/Sequence;", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class SequencesKt__SequencesKt$sequenceOf$$inlined$Sequence$1 implements Sequence<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f74481a;

    public SequencesKt__SequencesKt$sequenceOf$$inlined$Sequence$1(Object obj) {
        this.f74481a = obj;
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        return new SequencesKt__SequencesKt$sequenceOf$1$1(this.f74481a);
    }
}
