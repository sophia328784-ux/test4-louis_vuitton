package coil3.network.internal;

import coil3.network.NetworkResponseBody;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import okio.Buffer;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "coil3.network.internal.UtilsKt", f = "utils.kt", l = {23}, m = "readBuffer", v = 1)
final class UtilsKt$readBuffer$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public NetworkResponseBody f21589b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Buffer f21590c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f21591e;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f21591e |= Integer.MIN_VALUE;
        return UtilsKt.a(null, this);
    }
}
