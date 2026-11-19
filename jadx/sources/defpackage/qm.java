package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.painter.Painter;
import com.vuitton.android.designkit.ui.theme.atoms.LVDisclaimerKt;
import com.vuitton.android.presentation.compose.components.CollapsingDetailListKt;
import com.vuitton.android.presentation.compose.components.LVIconSelectorKt;
import com.vuitton.android.presentation.model.onboarding.IconLauncherType;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class qm implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79109b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f79110c;
    public final /* synthetic */ long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f79111e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f79112f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f79113h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f79114i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Function f79115j;

    public /* synthetic */ qm(Modifier modifier, String str, Painter painter, long j2, String str2, Function0 function0, int i2, int i3) {
        this.f79110c = modifier;
        this.g = str;
        this.f79113h = painter;
        this.d = j2;
        this.f79114i = str2;
        this.f79115j = function0;
        this.f79111e = i2;
        this.f79112f = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f79109b) {
            case 0:
                ((Integer) obj2).getClass();
                CollapsingDetailListKt.c(this.f79110c, (List) this.g, this.d, (Function3) this.f79113h, (Function3) this.f79114i, (Function3) this.f79115j, (Composer) obj, RecomposeScopeImplKt.a(this.f79111e | 1), this.f79112f);
                break;
            case 1:
                ((Integer) obj2).getClass();
                LVDisclaimerKt.a(this.f79110c, (String) this.g, (Painter) this.f79113h, this.d, (String) this.f79114i, (Function0) this.f79115j, (Composer) obj, RecomposeScopeImplKt.a(this.f79111e | 1), this.f79112f);
                break;
            default:
                ((Integer) obj2).getClass();
                LVIconSelectorKt.a(this.f79110c, (Function2) this.f79113h, this.d, (IconLauncherType) this.f79114i, (List) this.g, (Function2) this.f79115j, (Composer) obj, RecomposeScopeImplKt.a(this.f79111e | 1), this.f79112f);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ qm(Modifier modifier, List list, long j2, Function3 function3, Function3 function4, Function3 function5, int i2, int i3) {
        this.f79110c = modifier;
        this.g = list;
        this.d = j2;
        this.f79113h = function3;
        this.f79114i = function4;
        this.f79115j = function5;
        this.f79111e = i2;
        this.f79112f = i3;
    }

    public /* synthetic */ qm(Modifier modifier, Function2 function2, long j2, IconLauncherType iconLauncherType, List list, Function2 function3, int i2, int i3) {
        this.f79110c = modifier;
        this.f79113h = function2;
        this.d = j2;
        this.f79114i = iconLauncherType;
        this.g = list;
        this.f79115j = function3;
        this.f79111e = i2;
        this.f79112f = i3;
    }
}
