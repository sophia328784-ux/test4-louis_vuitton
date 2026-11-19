package defpackage;

import androidx.compose.animation.core.Easing;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.compose.components.LVNotificationKt;
import com.vuitton.android.presentation.compose.components.PreferenceSwitchKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class t60 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79971b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f79972c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f79973e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function1 f79974f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f79975h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f79976i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f79977j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f79978k;
    public final /* synthetic */ Object l;

    public /* synthetic */ t60(Modifier modifier, String str, String str2, boolean z, boolean z2, boolean z3, String str3, Function1 function1, int i2, int i3) {
        this.f79976i = modifier;
        this.f79977j = str;
        this.f79978k = str2;
        this.f79972c = z;
        this.d = z2;
        this.f79973e = z3;
        this.l = str3;
        this.f79974f = function1;
        this.g = i2;
        this.f79975h = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f79971b;
        int i3 = this.g;
        Object obj3 = this.l;
        Object obj4 = this.f79978k;
        Object obj5 = this.f79977j;
        Object obj6 = this.f79976i;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(i3 | 1);
                LVNotificationKt.a(this.f79972c, this.d, this.f79973e, (Easing) obj6, this.f79974f, (Function0) obj5, (Function0) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, iA, this.f79975h);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(i3 | 1);
                PreferenceSwitchKt.a((Modifier) obj6, (String) obj5, (String) obj4, this.f79972c, this.d, this.f79973e, (String) obj3, this.f79974f, (Composer) obj, iA2, this.f79975h);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ t60(boolean z, boolean z2, boolean z3, Easing easing, Function1 function1, Function0 function0, Function0 function2, ComposableLambdaImpl composableLambdaImpl, int i2, int i3) {
        this.f79972c = z;
        this.d = z2;
        this.f79973e = z3;
        this.f79976i = easing;
        this.f79974f = function1;
        this.f79977j = function0;
        this.f79978k = function2;
        this.l = composableLambdaImpl;
        this.g = i2;
        this.f79975h = i3;
    }
}
