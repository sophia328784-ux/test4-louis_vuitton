package com.vuitton.android.designkit.ui.theme.molecules.topbar;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.material3.TopAppBarState;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref$FloatRef;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.designkit.ui.theme.molecules.topbar.LVMediumTopBarKt", f = "LVMediumTopBar.kt", l = {293, 309}, m = "settleAppBar", v = 2)
final class LVMediumTopBarKt$settleAppBar$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TopAppBarState f48751b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AnimationSpec f48752c;
    public Ref$FloatRef d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f48753e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f48754f;
    public int g;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f48754f = obj;
        this.g |= Integer.MIN_VALUE;
        return LVMediumTopBarKt.c(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, this);
    }
}
