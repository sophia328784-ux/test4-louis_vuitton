package androidx.compose.foundation.gestures;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.NonTouchScrollingLogic", f = "NonTouchScrollingLogic.kt", l = {55}, m = "userScroll$foundation", v = 1)
final class NonTouchScrollingLogic$userScroll$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f4638b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NonTouchScrollingLogic f4639c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NonTouchScrollingLogic$userScroll$1(NonTouchScrollingLogic nonTouchScrollingLogic, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f4639c = nonTouchScrollingLogic;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f4638b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f4639c.b(null, this);
    }
}
