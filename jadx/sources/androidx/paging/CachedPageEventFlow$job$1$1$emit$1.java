package androidx.paging;

import kotlin.Metadata;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.paging.CachedPageEventFlow$job$1$1", f = "CachedPageEventFlow.kt", l = {EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID, 78}, m = "emit")
final class CachedPageEventFlow$job$1$1$emit$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f18539b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public IndexedValue f18540c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ CachedPageEventFlow$job$1.AnonymousClass1 f18541e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f18542f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CachedPageEventFlow$job$1$1$emit$1(CachedPageEventFlow$job$1.AnonymousClass1 anonymousClass1, Continuation continuation) {
        super(continuation);
        this.f18541e = anonymousClass1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f18542f |= Integer.MIN_VALUE;
        return this.f18541e.emit(null, this);
    }
}
