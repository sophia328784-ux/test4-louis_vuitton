package defpackage;

import androidx.compose.material3.ProgressIndicatorKt;
import com.vuitton.android.presentation.screen.immersivearticle.podcast.components.PodcastTrackSliderKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ee0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68842b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f68843c;

    public /* synthetic */ ee0(Function0 function0, int i2) {
        this.f68842b = i2;
        this.f68843c = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f68842b;
        Function0 function0 = this.f68843c;
        switch (i2) {
            case 0:
                function0.mo47invoke();
                return Unit.f71739a;
            case 1:
                if (function0 != null) {
                    function0.mo47invoke();
                }
                return Unit.f71739a;
            case 2:
                if (function0 != null) {
                    function0.mo47invoke();
                }
                return Unit.f71739a;
            case 3:
                function0.mo47invoke();
                return Unit.f71739a;
            case 4:
                function0.mo47invoke();
                return Unit.f71739a;
            case 5:
                function0.mo47invoke();
                return Unit.f71739a;
            case 6:
                function0.mo47invoke();
                return Unit.f71739a;
            case 7:
                function0.mo47invoke();
                return Unit.f71739a;
            case 8:
                function0.mo47invoke();
                return Unit.f71739a;
            case 9:
                function0.mo47invoke();
                return Unit.f71739a;
            case 10:
                function0.mo47invoke();
                return Unit.f71739a;
            case 11:
                function0.mo47invoke();
                return Unit.f71739a;
            case 12:
                function0.mo47invoke();
                return Boolean.TRUE;
            case 13:
                function0.mo47invoke();
                return Unit.f71739a;
            case 14:
                function0.mo47invoke();
                return Unit.f71739a;
            case 15:
                function0.mo47invoke();
                return Unit.f71739a;
            case 16:
                if (function0 != null) {
                    function0.mo47invoke();
                }
                return Unit.f71739a;
            case 17:
                function0.mo47invoke();
                return Unit.f71739a;
            case 18:
                function0.mo47invoke();
                return Boolean.TRUE;
            case 19:
                function0.mo47invoke();
                return Boolean.TRUE;
            case 20:
                function0.mo47invoke();
                return Unit.f71739a;
            case 21:
                function0.mo47invoke();
                return Unit.f71739a;
            case 22:
                float f2 = PodcastTrackSliderKt.f58900a;
                function0.mo47invoke();
                return Unit.f71739a;
            case 23:
                function0.mo47invoke();
                return Unit.f71739a;
            case 24:
                function0.mo47invoke();
                return Unit.f71739a;
            case 25:
                function0.mo47invoke();
                return Unit.f71739a;
            case 26:
                function0.mo47invoke();
                return Unit.f71739a;
            case 27:
                function0.mo47invoke();
                return Unit.f71739a;
            case 28:
                function0.mo47invoke();
                return Unit.f71739a;
            default:
                float f3 = ProgressIndicatorKt.f7152a;
                float fFloatValue = ((Number) function0.mo47invoke()).floatValue();
                if (fFloatValue < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    fFloatValue = 0.0f;
                }
                if (fFloatValue > 1.0f) {
                    fFloatValue = 1.0f;
                }
                return Float.valueOf(fFloatValue);
        }
    }
}
