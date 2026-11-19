package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEventPass;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt", f = "TapGestureDetector.kt", l = {317}, m = "awaitFirstDown", v = 1)
final class TapGestureDetectorKt$awaitFirstDown$2 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AwaitPointerEventScope f4735b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PointerEventPass f4736c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f4737e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4738f;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f4737e = obj;
        this.f4738f |= Integer.MIN_VALUE;
        return TapGestureDetectorKt.a(null, false, null, this);
    }
}
