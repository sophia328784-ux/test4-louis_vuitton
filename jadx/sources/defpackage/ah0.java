package defpackage;

import android.content.res.Resources;
import android.graphics.PathMeasure;
import androidx.compose.runtime.MutableFloatState;
import com.vuitton.android.presentation.screen.onboarding.components.OnboardingIconComposableKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ah0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f513b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableFloatState f514c;
    public final /* synthetic */ MutableFloatState d;

    public /* synthetic */ ah0(MutableFloatState mutableFloatState, MutableFloatState mutableFloatState2, int i2) {
        this.f513b = i2;
        this.f514c = mutableFloatState;
        this.d = mutableFloatState2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f513b;
        MutableFloatState mutableFloatState = this.d;
        MutableFloatState mutableFloatState2 = this.f514c;
        float fFloatValue = ((Float) obj).floatValue();
        float fFloatValue2 = ((Float) obj2).floatValue();
        switch (i2) {
            case 0:
                PathMeasure pathMeasure = OnboardingIconComposableKt.f59551a;
                if (mutableFloatState2.a() == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    mutableFloatState2.w(fFloatValue2 / Resources.getSystem().getDisplayMetrics().density);
                    mutableFloatState.w(fFloatValue / Resources.getSystem().getDisplayMetrics().density);
                }
                break;
            case 1:
                PathMeasure pathMeasure2 = OnboardingIconComposableKt.f59551a;
                mutableFloatState2.w(fFloatValue);
                mutableFloatState.w(fFloatValue2);
                break;
            default:
                PathMeasure pathMeasure3 = OnboardingIconComposableKt.f59551a;
                mutableFloatState2.w(fFloatValue);
                mutableFloatState.w(fFloatValue2);
                break;
        }
        return Unit.f71739a;
    }
}
