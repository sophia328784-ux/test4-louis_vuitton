package kotlinx.coroutines;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.AwaitKt", f = "Await.kt", l = {EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION}, m = "joinAll", v = 1)
final class AwaitKt$joinAll$3 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Iterator f74631b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f74632c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f74633e;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f74633e |= Integer.MIN_VALUE;
        return AwaitKt.b(null, this);
    }
}
