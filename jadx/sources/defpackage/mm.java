package defpackage;

import androidx.compose.foundation.text.ClickableTextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Dp;
import com.vuitton.android.designkit.ui.theme.atoms.LVIconButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationIconButton;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class mm implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76315b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f76316c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f76317e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f76318f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f76319h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f76320i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f76321j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f76322k;
    public final /* synthetic */ Function l;

    public /* synthetic */ mm(Modifier modifier, int i2, Dp dp, String str, ConfigurationIconButton configurationIconButton, int i3, boolean z, Function0 function0, int i4, int i5) {
        this.f76316c = modifier;
        this.d = i2;
        this.f76320i = dp;
        this.f76321j = str;
        this.f76322k = configurationIconButton;
        this.f76317e = i3;
        this.f76318f = z;
        this.l = function0;
        this.g = i4;
        this.f76319h = i5;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f76315b) {
            case 0:
                ((Integer) obj2).getClass();
                ClickableTextKt.a((AnnotatedString) this.f76320i, this.f76316c, (TextStyle) this.f76321j, this.f76318f, this.d, this.f76317e, (Function1) this.f76322k, (Function1) this.l, (Composer) obj, RecomposeScopeImplKt.a(this.g | 1), this.f76319h);
                break;
            default:
                ((Integer) obj2).getClass();
                LVIconButtonKt.a(this.f76316c, this.d, (Dp) this.f76320i, (String) this.f76321j, (ConfigurationIconButton) this.f76322k, this.f76317e, this.f76318f, (Function0) this.l, (Composer) obj, RecomposeScopeImplKt.a(this.g | 1), RecomposeScopeImplKt.a(this.f76319h));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ mm(AnnotatedString annotatedString, Modifier modifier, TextStyle textStyle, boolean z, int i2, int i3, Function1 function1, Function1 function2, int i4, int i5) {
        this.f76320i = annotatedString;
        this.f76316c = modifier;
        this.f76321j = textStyle;
        this.f76318f = z;
        this.d = i2;
        this.f76317e = i3;
        this.f76322k = function1;
        this.l = function2;
        this.g = i4;
        this.f76319h = i5;
    }
}
