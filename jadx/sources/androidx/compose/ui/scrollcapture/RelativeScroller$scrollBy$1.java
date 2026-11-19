package androidx.compose.ui.scrollcapture;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.ui.scrollcapture.RelativeScroller", f = "ComposeScrollCaptureCallback.android.kt", l = {296}, m = "scrollBy", v = 1)
final class RelativeScroller$scrollBy$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f10261b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RelativeScroller f10262c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RelativeScroller$scrollBy$1(RelativeScroller relativeScroller, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f10262c = relativeScroller;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f10261b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f10262c.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, this);
    }
}
