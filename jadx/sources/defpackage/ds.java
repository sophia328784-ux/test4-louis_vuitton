package defpackage;

import androidx.compose.material3.DatePickerColors;
import androidx.compose.material3.DatePickerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.screen.storemode.components.plp.PSPStoreModeHeaderKt;
import com.vuitton.android.presentation.screen.storemode.components.plp.PSPStoreModeSearchHeaderKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ds implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68647b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f68648c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f68649e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f68650f;
    public final /* synthetic */ Function0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f68651h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f68652i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f68653j;

    public /* synthetic */ ds(String str, Modifier modifier, boolean z, boolean z2, Function0 function0, boolean z3, String str2, DatePickerColors datePickerColors, int i2) {
        this.f68648c = str;
        this.f68652i = modifier;
        this.d = z;
        this.f68649e = z2;
        this.g = function0;
        this.f68650f = z3;
        this.f68651h = str2;
        this.f68653j = datePickerColors;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f68647b;
        Object obj3 = this.f68653j;
        Object obj4 = this.f68652i;
        Object obj5 = this.f68651h;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(49);
                DatePickerKt.m(this.f68648c, (Modifier) obj4, this.d, this.f68649e, this.g, this.f68650f, (String) obj5, (DatePickerColors) obj3, (Composer) obj, iA);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                PSPStoreModeHeaderKt.a(this.f68648c, (Integer) obj5, this.d, this.f68649e, this.f68650f, (Function1) obj4, this.g, (Function0) obj3, (Composer) obj, iA2);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(24577);
                PSPStoreModeSearchHeaderKt.a(this.f68648c, (Integer) obj5, this.d, this.f68649e, (LVColorScheme) obj4, this.f68650f, this.g, (Function0) obj3, (Composer) obj, iA3);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ ds(String str, Integer num, boolean z, boolean z2, LVColorScheme lVColorScheme, boolean z3, Function0 function0, Function0 function1, int i2) {
        this.f68648c = str;
        this.f68651h = num;
        this.d = z;
        this.f68649e = z2;
        this.f68652i = lVColorScheme;
        this.f68650f = z3;
        this.g = function0;
        this.f68653j = function1;
    }

    public /* synthetic */ ds(String str, Integer num, boolean z, boolean z2, boolean z3, Function1 function1, Function0 function0, Function0 function2, int i2) {
        this.f68648c = str;
        this.f68651h = num;
        this.d = z;
        this.f68649e = z2;
        this.f68650f = z3;
        this.f68652i = function1;
        this.g = function0;
        this.f68653j = function2;
    }
}
