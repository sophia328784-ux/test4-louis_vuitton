package defpackage;

import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class f implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68983b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ HapticFeedback f68984c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ f(HapticFeedback hapticFeedback, Function0 function0, int i2) {
        this.f68983b = i2;
        this.f68984c = hapticFeedback;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f68983b;
        Function0 function0 = this.d;
        HapticFeedback hapticFeedback = this.f68984c;
        switch (i2) {
            case 0:
                HapticFeedbackType.f9193b.getClass();
                hapticFeedback.a(PlatformHapticFeedbackType.f9196a);
                function0.mo47invoke();
                return Unit.f71739a;
            case 1:
                HapticFeedbackType.f9193b.getClass();
                hapticFeedback.a(PlatformHapticFeedbackType.f9196a);
                function0.mo47invoke();
                return Unit.f71739a;
            case 2:
                HapticFeedbackType.f9193b.getClass();
                hapticFeedback.a(PlatformHapticFeedbackType.f9197b);
                function0.mo47invoke();
                return Unit.f71739a;
            case 3:
                HapticFeedbackType.f9193b.getClass();
                hapticFeedback.a(PlatformHapticFeedbackType.f9197b);
                function0.mo47invoke();
                return Unit.f71739a;
            case 4:
                function0.mo47invoke();
                HapticFeedbackType.f9193b.getClass();
                int i3 = PlatformHapticFeedbackType.f9196a;
                hapticFeedback.a(0);
                return Unit.f71739a;
            case 5:
                function0.mo47invoke();
                HapticFeedbackType.f9193b.getClass();
                int i4 = PlatformHapticFeedbackType.f9196a;
                hapticFeedback.a(0);
                return Boolean.TRUE;
            default:
                HapticFeedbackType.f9193b.getClass();
                hapticFeedback.a(PlatformHapticFeedbackType.f9197b);
                function0.mo47invoke();
                return Unit.f71739a;
        }
    }

    public /* synthetic */ f(Function0 function0, HapticFeedback hapticFeedback, int i2) {
        this.f68983b = i2;
        this.d = function0;
        this.f68984c = hapticFeedback;
    }
}
