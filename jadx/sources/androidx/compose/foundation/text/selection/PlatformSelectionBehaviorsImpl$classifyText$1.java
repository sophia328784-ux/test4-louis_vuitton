package androidx.compose.foundation.text.selection;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.sync.MutexImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl", f = "PlatformSelectionBehaviors.android.kt", l = {369, 380}, m = "classifyText-M8tDOmk", v = 1)
final class PlatformSelectionBehaviorsImpl$classifyText$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CharSequence f6361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f6362c;
    public MutexImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f6363e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f6364f;
    public final /* synthetic */ PlatformSelectionBehaviorsImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f6365h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlatformSelectionBehaviorsImpl$classifyText$1(PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = platformSelectionBehaviorsImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f6364f = obj;
        this.f6365h |= Integer.MIN_VALUE;
        return PlatformSelectionBehaviorsImpl.d(this.g, null, 0L, null, this);
    }
}
