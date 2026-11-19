package defpackage;

import androidx.compose.animation.core.Animatable;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class y30 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81274b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Animatable f81275c;

    public /* synthetic */ y30(Animatable animatable, int i2) {
        this.f81274b = i2;
        this.f81275c = animatable;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        float fFloatValue;
        int i2 = this.f81274b;
        Animatable animatable = this.f81275c;
        switch (i2) {
            case 0:
                fFloatValue = ((Number) animatable.d()).floatValue();
                break;
            case 1:
                fFloatValue = ((Number) animatable.d()).floatValue();
                break;
            default:
                fFloatValue = ((Number) animatable.d()).floatValue();
                break;
        }
        return Float.valueOf(fFloatValue);
    }
}
