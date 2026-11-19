package coil3.compose;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref$ObjectRef;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "coil3.compose.ConstraintsSizeResolver", f = "ConstraintsSizeResolver.kt", l = {EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID}, m = "size", v = 1)
final class ConstraintsSizeResolver$size$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Ref$ObjectRef f21299b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f21300c;
    public final /* synthetic */ ConstraintsSizeResolver d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f21301e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConstraintsSizeResolver$size$1(ConstraintsSizeResolver constraintsSizeResolver, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = constraintsSizeResolver;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f21300c = obj;
        this.f21301e |= Integer.MIN_VALUE;
        return this.d.g(this);
    }
}
