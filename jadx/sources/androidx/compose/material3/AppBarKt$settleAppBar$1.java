package androidx.compose.material3;

import androidx.compose.animation.core.AnimationSpec;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref$FloatRef;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.material3.AppBarKt", f = "AppBar.kt", l = {3464, 3480}, m = "settleAppBar")
final class AppBarKt$settleAppBar$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f6564b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AnimationSpec f6565c;
    public Ref$FloatRef d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f6566e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6567f;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f6566e = obj;
        this.f6567f |= Integer.MIN_VALUE;
        return AppBarKt.e(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, this);
    }
}
