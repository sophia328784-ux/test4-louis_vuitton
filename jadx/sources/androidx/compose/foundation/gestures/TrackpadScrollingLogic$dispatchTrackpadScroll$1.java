package androidx.compose.foundation.gestures;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.TrackpadScrollingLogic", f = "TrackpadScrollingLogic.kt", l = {173, 190}, m = "dispatchTrackpadScroll", v = 1)
final class TrackpadScrollingLogic$dispatchTrackpadScroll$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f4814b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TrackpadScrollingLogic f4815c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TrackpadScrollingLogic$dispatchTrackpadScroll$1(TrackpadScrollingLogic trackpadScrollingLogic, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f4815c = trackpadScrollingLogic;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f4814b = obj;
        this.d |= Integer.MIN_VALUE;
        return TrackpadScrollingLogic.c(this.f4815c, null, null, this);
    }
}
