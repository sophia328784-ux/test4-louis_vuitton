package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVRadioButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVSwitchKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class d70 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68461b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f68462c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f68463e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ LVColorScheme f68464f;
    public final /* synthetic */ Function1 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f68465h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f68466i;

    public /* synthetic */ d70(Modifier modifier, boolean z, boolean z2, LVColorScheme lVColorScheme, Function1 function1, int i2, int i3, int i4) {
        this.f68461b = i4;
        this.f68462c = modifier;
        this.d = z;
        this.f68463e = z2;
        this.f68464f = lVColorScheme;
        this.g = function1;
        this.f68465h = i2;
        this.f68466i = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f68461b) {
            case 0:
                ((Integer) obj2).getClass();
                LVRadioButtonKt.a(this.f68462c, this.d, this.f68463e, this.f68464f, this.g, (Composer) obj, RecomposeScopeImplKt.a(this.f68465h | 1), this.f68466i);
                break;
            default:
                ((Integer) obj2).getClass();
                LVSwitchKt.a(this.f68462c, this.d, this.f68463e, this.f68464f, this.g, (Composer) obj, RecomposeScopeImplKt.a(this.f68465h | 1), this.f68466i);
                break;
        }
        return Unit.f71739a;
    }
}
