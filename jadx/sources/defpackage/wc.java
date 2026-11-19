package defpackage;

import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.VisualTransformation;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.TopBarNavIcon;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class wc implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80821b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f80822c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f80823e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f80824f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f80825h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f80826i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f80827j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f80828k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;

    public /* synthetic */ wc(Modifier modifier, LVColorScheme lVColorScheme, boolean z, String str, String str2, TopBarNavIcon topBarNavIcon, Function0 function0, Function4 function4, WindowInsets windowInsets, String str3, String str4, int i2, int i3, int i4) {
        this.f80822c = modifier;
        this.f80826i = lVColorScheme;
        this.d = z;
        this.f80823e = str;
        this.f80827j = str2;
        this.f80828k = topBarNavIcon;
        this.l = function0;
        this.m = function4;
        this.n = windowInsets;
        this.o = str3;
        this.p = str4;
        this.f80824f = i2;
        this.g = i3;
        this.f80825h = i4;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f80821b;
        Object obj3 = this.p;
        Object obj4 = this.o;
        Object obj5 = this.n;
        Object obj6 = this.m;
        Object obj7 = this.l;
        Object obj8 = this.f80828k;
        Object obj9 = this.f80827j;
        Object obj10 = this.f80826i;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(this.f80825h | 1);
                BasicTextFieldKt.b(this.f80823e, (Function1) obj10, this.f80822c, this.d, (TextStyle) obj8, (KeyboardOptions) obj7, (KeyboardActions) obj6, this.f80824f, this.g, (VisualTransformation) obj5, (Function1) obj9, (Brush) obj4, (Function3) obj3, (Composer) obj, iA);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(this.f80824f | 1);
                int iA3 = RecomposeScopeImplKt.a(this.g);
                LVStandardTopBarKt.a(this.f80822c, (LVColorScheme) obj10, this.d, this.f80823e, (String) obj9, (TopBarNavIcon) obj8, (Function0) obj7, (Function4) obj6, (WindowInsets) obj5, (String) obj4, (String) obj3, (Composer) obj, iA2, iA3, this.f80825h);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ wc(String str, Function1 function1, Modifier modifier, boolean z, TextStyle textStyle, KeyboardOptions keyboardOptions, KeyboardActions keyboardActions, int i2, int i3, VisualTransformation visualTransformation, Function1 function2, Brush brush, Function3 function3, int i4) {
        this.f80823e = str;
        this.f80826i = function1;
        this.f80822c = modifier;
        this.d = z;
        this.f80828k = textStyle;
        this.l = keyboardOptions;
        this.m = keyboardActions;
        this.f80824f = i2;
        this.g = i3;
        this.n = visualTransformation;
        this.f80827j = function2;
        this.o = brush;
        this.p = function3;
        this.f80825h = i4;
    }
}
