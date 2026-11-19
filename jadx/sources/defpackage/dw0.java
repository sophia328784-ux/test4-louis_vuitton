package defpackage;

import androidx.compose.animation.BoundsTransform;
import androidx.compose.animation.SharedTransitionScopeKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.ui.geometry.Rect;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class dw0 implements BoundsTransform {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f68688a;

    public /* synthetic */ dw0(int i2) {
        this.f68688a = i2;
    }

    @Override // androidx.compose.animation.BoundsTransform
    public final SpringSpec a() {
        switch (this.f68688a) {
            case 0:
                Rect.Companion companion = Rect.f8809e;
                return AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3, VisibilityThresholdsKt.f4089a);
            default:
                return SharedTransitionScopeKt.f3704a;
        }
    }
}
