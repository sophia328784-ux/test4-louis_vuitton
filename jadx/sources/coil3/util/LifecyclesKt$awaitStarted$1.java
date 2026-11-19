package coil3.util;

import androidx.lifecycle.Lifecycle;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref$ObjectRef;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "coil3.util.LifecyclesKt", f = "lifecycles.kt", l = {EACTags.CURRENCY_CODE}, m = "awaitStarted", v = 1)
final class LifecyclesKt$awaitStarted$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Lifecycle f21724b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Ref$ObjectRef f21725c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f21726e;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f21726e |= Integer.MIN_VALUE;
        return LifecyclesKt.a(null, this);
    }
}
