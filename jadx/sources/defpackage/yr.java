package defpackage;

import androidx.compose.material3.DatePickerColors;
import androidx.compose.material3.DatePickerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.filter.quickaccess.FiltersDropDownType;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.FiltersOverlayScreenKt;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class yr implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81412b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f81413c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f81414e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f81415f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f81416h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f81417i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Function f81418j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f81419k;

    public /* synthetic */ yr(Modifier modifier, boolean z, boolean z2, boolean z3, String str, Function0 function0, Function0 function1, Function0 function2, DatePickerColors datePickerColors, int i2) {
        this.g = modifier;
        this.f81413c = z;
        this.d = z2;
        this.f81414e = z3;
        this.f81416h = str;
        this.f81415f = function0;
        this.f81417i = function1;
        this.f81418j = function2;
        this.f81419k = datePickerColors;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f81412b;
        Object obj3 = this.f81419k;
        Function function = this.f81418j;
        Object obj4 = this.f81417i;
        Object obj5 = this.f81416h;
        Object obj6 = this.g;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(7);
                DatePickerKt.j((Modifier) obj6, this.f81413c, this.d, this.f81414e, (String) obj5, this.f81415f, (Function0) obj4, (Function0) function, (DatePickerColors) obj3, (Composer) obj, iA);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                FiltersOverlayScreenKt.b(this.f81413c, (List) obj6, (List) obj5, this.d, (FiltersDropDownType) obj4, this.f81414e, this.f81415f, (Function1) function, (Function1) obj3, (Composer) obj, iA2);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ yr(boolean z, List list, List list2, boolean z2, FiltersDropDownType filtersDropDownType, boolean z3, Function0 function0, Function1 function1, Function1 function2, int i2) {
        this.f81413c = z;
        this.g = list;
        this.f81416h = list2;
        this.d = z2;
        this.f81417i = filtersDropDownType;
        this.f81414e = z3;
        this.f81415f = function0;
        this.f81418j = function1;
        this.f81419k = function2;
    }
}
