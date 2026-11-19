package defpackage;

import androidx.compose.animation.core.AnimationState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k21 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71536b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AnimationState f71537c;

    public /* synthetic */ k21(int i2, AnimationState animationState) {
        this.f71536b = i2;
        this.f71537c = animationState;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f71536b;
        AnimationState animationState = this.f71537c;
        switch (i2) {
            case 0:
                animationState.g = false;
                break;
            default:
                animationState.g = false;
                break;
        }
        return Unit.f71739a;
    }
}
