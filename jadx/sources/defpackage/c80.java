package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.molecules.LVTabsKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.components.ThematicPlpHeaderKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.QuickAccessFiltersCategoryKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class c80 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21088b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f21089c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f21090e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f21091f;

    public /* synthetic */ c80(Modifier modifier, String str, boolean z, Function0 function0, int i2, int i3) {
        this.f21088b = i3;
        this.f21089c = modifier;
        this.d = str;
        this.f21090e = z;
        this.f21091f = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f21088b) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                LVTabsKt.c(this.f21089c, this.d, this.f21090e, this.f21091f, (Composer) obj, iA);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                QuickAccessFiltersCategoryKt.a(this.f21089c, this.d, this.f21090e, this.f21091f, (Composer) obj, iA2);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(1);
                ThematicPlpHeaderKt.a(this.f21089c, this.d, this.f21090e, this.f21091f, (Composer) obj, iA3);
                break;
        }
        return Unit.f71739a;
    }
}
