package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;
import org.bouncycastle.math.Primes;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.datastore.core.MultiProcessCoordinator", f = "MultiProcessCoordinator.android.kt", l = {Primes.SMALL_FACTOR_LIMIT, EACTags.PIN_USAGE_POLICY, 48}, m = "lock")
final class MultiProcessCoordinator$lock$1<T> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f12794b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f12795c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f12796e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MultiProcessCoordinator f12797f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MultiProcessCoordinator$lock$1(MultiProcessCoordinator multiProcessCoordinator, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f12797f = multiProcessCoordinator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f12796e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f12797f.d(null, this);
    }
}
