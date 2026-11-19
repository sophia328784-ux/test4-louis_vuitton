package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.atoms.LVTagButtonKt;
import com.vuitton.android.presentation.screen.pdp.components.sizeguide.TableSizeCellKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class d80 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68470b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f68471c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f68472e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f68473f;
    public final /* synthetic */ Function0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f68474h;

    public /* synthetic */ d80(Modifier modifier, String str, boolean z, boolean z2, Function0 function0, int i2, int i3) {
        this.f68470b = i3;
        this.f68471c = modifier;
        this.d = str;
        this.f68472e = z;
        this.f68473f = z2;
        this.g = function0;
        this.f68474h = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f68470b) {
            case 0:
                ((Integer) obj2).getClass();
                LVTagButtonKt.b(this.f68471c, this.d, this.f68472e, this.f68473f, this.g, (Composer) obj, RecomposeScopeImplKt.a(this.f68474h | 1));
                break;
            default:
                ((Integer) obj2).getClass();
                TableSizeCellKt.a(this.f68471c, this.d, this.f68472e, this.f68473f, this.g, (Composer) obj, RecomposeScopeImplKt.a(this.f68474h | 1));
                break;
        }
        return Unit.f71739a;
    }
}
