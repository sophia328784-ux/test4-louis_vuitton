package androidx.compose.ui.contentcapture;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.channels.ChannelIterator;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.ui.contentcapture.AndroidContentCaptureManager", f = "AndroidContentCaptureManager.android.kt", l = {205, 215}, m = "boundsUpdatesEventLoop$ui", v = 1)
final class AndroidContentCaptureManager$boundsUpdatesEventLoop$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ChannelIterator f8670b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f8671c;
    public final /* synthetic */ AndroidContentCaptureManager d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8672e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidContentCaptureManager$boundsUpdatesEventLoop$1(AndroidContentCaptureManager androidContentCaptureManager, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = androidContentCaptureManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f8671c = obj;
        this.f8672e |= Integer.MIN_VALUE;
        return this.d.a(this);
    }
}
