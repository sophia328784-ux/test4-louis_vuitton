package defpackage;

import androidx.compose.foundation.layout.BoxWithConstraintsKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVSwitchKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVSwitchLegalState;
import com.vuitton.android.designkit.ui.theme.molecules.LVCapsulePageControlKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVPushCardKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.SearchBottomBarKt;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class oh implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76784b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f76785c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f76786e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f76787f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f76788h;

    public /* synthetic */ oh(Modifier modifier, PagerState pagerState, LVColorScheme lVColorScheme, boolean z, int i2, int i3) {
        this.f76784b = 1;
        this.f76785c = modifier;
        this.g = pagerState;
        this.f76788h = lVColorScheme;
        this.d = z;
        this.f76786e = i2;
        this.f76787f = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76784b;
        int i3 = this.f76786e;
        Object obj3 = this.f76788h;
        Object obj4 = this.g;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(i3 | 1);
                Modifier modifier = this.f76785c;
                BoxWithConstraintsKt.a(modifier, (Alignment) obj4, this.d, (ComposableLambdaImpl) obj3, (Composer) obj, iA, this.f76787f);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(i3 | 1);
                Modifier modifier2 = this.f76785c;
                LVCapsulePageControlKt.a(modifier2, (PagerState) obj4, (LVColorScheme) obj3, this.d, (Composer) obj, iA2, this.f76787f);
                break;
            case 2:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(i3 | 1);
                Modifier modifier3 = this.f76785c;
                boolean z = this.d;
                LVPushCardKt.a(modifier3, z, (Function0) obj4, (Function3) obj3, (Composer) obj, iA3, this.f76787f);
                break;
            case 3:
                ((Integer) obj2).getClass();
                int iA4 = RecomposeScopeImplKt.a(i3 | 1);
                Modifier modifier4 = this.f76785c;
                LVSwitchKt.c(modifier4, (LVSwitchLegalState) obj4, this.d, (Function1) obj3, (Composer) obj, iA4, this.f76787f);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA5 = RecomposeScopeImplKt.a(i3 | 1);
                int i4 = this.f76787f;
                SearchBottomBarKt.a(iA5, i4, (Composer) obj, this.f76785c, (String) obj4, (Function0) obj3, this.d);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ oh(Modifier modifier, Object obj, boolean z, Function function, int i2, int i3, int i4) {
        this.f76784b = i4;
        this.f76785c = modifier;
        this.g = obj;
        this.d = z;
        this.f76788h = function;
        this.f76786e = i2;
        this.f76787f = i3;
    }

    public /* synthetic */ oh(Modifier modifier, boolean z, Object obj, Function function, int i2, int i3, int i4) {
        this.f76784b = i4;
        this.f76785c = modifier;
        this.d = z;
        this.g = obj;
        this.f76788h = function;
        this.f76786e = i2;
        this.f76787f = i3;
    }
}
