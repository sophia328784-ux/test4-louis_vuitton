package defpackage;

import androidx.compose.material3.DatePickerKt;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVTopBarCommonKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class fs implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69199b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f69200c;
    public final /* synthetic */ long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ float f69201e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f69202f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f69203h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f69204i;

    public /* synthetic */ fs(Modifier modifier, Function2 function2, long j2, long j3, float f2, ComposableLambdaImpl composableLambdaImpl, int i2) {
        this.g = modifier;
        this.f69203h = function2;
        this.f69200c = j2;
        this.d = j3;
        this.f69201e = f2;
        this.f69204i = composableLambdaImpl;
        this.f69202f = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f69199b;
        Object obj3 = this.f69204i;
        Object obj4 = this.g;
        Object obj5 = this.f69203h;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1 | this.f69202f);
                DatePickerKt.d((Modifier) obj4, (Function2) obj5, this.f69200c, this.d, this.f69201e, (ComposableLambdaImpl) obj3, (Composer) obj, iA);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                LVTopBarCommonKt.a((String) obj4, (String) obj5, this.f69200c, this.d, this.f69201e, (String) obj3, (Composer) obj, iA2, this.f69202f);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(1572865);
                ProgressIndicatorKt.b((Function0) obj5, (Modifier) obj4, this.f69200c, this.d, this.f69202f, this.f69201e, (Function1) obj3, (Composer) obj, iA3);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ fs(String str, String str2, long j2, long j3, float f2, String str3, int i2, int i3) {
        this.g = str;
        this.f69203h = str2;
        this.f69200c = j2;
        this.d = j3;
        this.f69201e = f2;
        this.f69204i = str3;
        this.f69202f = i3;
    }

    public /* synthetic */ fs(Function0 function0, Modifier modifier, long j2, long j3, int i2, float f2, Function1 function1, int i3) {
        this.f69203h = function0;
        this.g = modifier;
        this.f69200c = j2;
        this.d = j3;
        this.f69202f = i2;
        this.f69201e = f2;
        this.f69204i = function1;
    }
}
