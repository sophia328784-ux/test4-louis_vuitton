package defpackage;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material3.OutlinedTextFieldKt;
import androidx.compose.material3.TextFieldColors;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.VisualTransformation;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.ClearButtonMode;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class o80 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76721b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f76722c;
    public final /* synthetic */ Modifier d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f76723e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f76724f;
    public final /* synthetic */ VisualTransformation g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ KeyboardOptions f76725h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ KeyboardActions f76726i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ boolean f76727j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ int f76728k;
    public final /* synthetic */ int l;
    public final /* synthetic */ int m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;
    public final /* synthetic */ Object r;
    public final /* synthetic */ Object s;
    public final /* synthetic */ Object t;

    public /* synthetic */ o80(TextFieldValue textFieldValue, Function1 function1, Modifier modifier, boolean z, TextStyle textStyle, Function2 function2, Function2 function3, Function2 function4, boolean z2, VisualTransformation visualTransformation, KeyboardOptions keyboardOptions, KeyboardActions keyboardActions, boolean z3, int i2, int i3, Shape shape, TextFieldColors textFieldColors, int i4) {
        this.n = textFieldValue;
        this.f76722c = function1;
        this.d = modifier;
        this.f76723e = z;
        this.o = textStyle;
        this.p = function2;
        this.q = function3;
        this.r = function4;
        this.f76724f = z2;
        this.g = visualTransformation;
        this.f76725h = keyboardOptions;
        this.f76726i = keyboardActions;
        this.f76727j = z3;
        this.f76728k = i2;
        this.l = i3;
        this.s = shape;
        this.t = textFieldColors;
        this.m = i4;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76721b;
        Object obj3 = this.t;
        Object obj4 = this.s;
        Object obj5 = this.r;
        Object obj6 = this.q;
        Object obj7 = this.p;
        Object obj8 = this.o;
        Object obj9 = this.n;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(this.f76728k | 1);
                int iA2 = RecomposeScopeImplKt.a(this.l);
                LVTextFieldKt.a((String) obj9, this.f76722c, this.d, (LVColorScheme) obj5, this.f76723e, (String) obj8, this.f76724f, (String) obj7, this.g, this.f76725h, this.f76726i, (MutableInteractionSource) obj4, (ClearButtonMode) obj3, (String) obj6, this.f76727j, (Composer) obj, iA, iA2, this.m);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(this.m | 1);
                OutlinedTextFieldKt.a((TextFieldValue) obj9, this.f76722c, this.d, this.f76723e, (TextStyle) obj8, (Function2) obj7, (Function2) obj6, (Function2) obj5, this.f76724f, this.g, this.f76725h, this.f76726i, this.f76727j, this.f76728k, this.l, (Shape) obj4, (TextFieldColors) obj3, (Composer) obj, iA3);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ o80(String str, Function1 function1, Modifier modifier, LVColorScheme lVColorScheme, boolean z, String str2, boolean z2, String str3, VisualTransformation visualTransformation, KeyboardOptions keyboardOptions, KeyboardActions keyboardActions, MutableInteractionSource mutableInteractionSource, ClearButtonMode clearButtonMode, String str4, boolean z3, int i2, int i3, int i4) {
        this.n = str;
        this.f76722c = function1;
        this.d = modifier;
        this.r = lVColorScheme;
        this.f76723e = z;
        this.o = str2;
        this.f76724f = z2;
        this.p = str3;
        this.g = visualTransformation;
        this.f76725h = keyboardOptions;
        this.f76726i = keyboardActions;
        this.s = mutableInteractionSource;
        this.t = clearButtonMode;
        this.q = str4;
        this.f76727j = z3;
        this.f76728k = i2;
        this.l = i3;
        this.m = i4;
    }
}
