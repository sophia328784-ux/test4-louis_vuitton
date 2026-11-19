package androidx.compose.runtime;

import androidx.collection.IntList;
import androidx.collection.ObjectList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002BA\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u0012\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/compose/runtime/ComposePausableCompositionException;", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "Landroidx/collection/ObjectList;", "", "instances", "reused", "Landroidx/collection/IntList;", "operations", "", "lastOperation", "", "cause", "<init>", "(Landroidx/collection/ObjectList;Landroidx/collection/ObjectList;Landroidx/collection/IntList;ILjava/lang/Throwable;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class ComposePausableCompositionException extends RuntimeException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObjectList f7931b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ObjectList f7932c;
    public final IntList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f7933e;

    public ComposePausableCompositionException(ObjectList<Object> objectList, ObjectList<Object> objectList2, IntList intList, int i2, Throwable th) {
        super(th);
        this.f7931b = objectList;
        this.f7932c = objectList2;
        this.d = intList;
        this.f7933e = i2;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return StringsKt.c0("\n            |Failed to execute op number " + this.f7933e + ":\n            |" + CollectionsKt.K(CollectionsKt.r0(50, SequencesKt.x(new SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1(new ComposePausableCompositionException$operationsSequence$1(this, null)))), "\n", null, null, null, 62) + "\n            ");
    }
}
