package defpackage;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.navigation3.ui.NavDisplayKt;
import com.vuitton.android.presentation.screen.booking.summary.components.BookingSummaryScreenKt;
import com.vuitton.android.presentation.screen.booking.summary.models.PreBookViewState;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class sg implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79789b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f79790c;
    public final /* synthetic */ Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function2 f79791e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f79792f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f79793h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f79794i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f79795j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f79796k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;

    public /* synthetic */ sg(PreBookViewState preBookViewState, SnackbarHostState snackbarHostState, Function0 function0, Function0 function1, Function2 function2, Function2 function3, Function1 function4, Function0 function5, Function1 function6, int i2, int i3) {
        this.f79794i = preBookViewState;
        this.f79795j = snackbarHostState;
        this.f79792f = function0;
        this.f79796k = function1;
        this.f79791e = function2;
        this.m = function3;
        this.f79790c = function4;
        this.l = function5;
        this.d = function6;
        this.g = i2;
        this.f79793h = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f79789b;
        int i3 = this.g;
        Object obj3 = this.m;
        Object obj4 = this.l;
        Object obj5 = this.f79796k;
        Object obj6 = this.f79795j;
        Object obj7 = this.f79794i;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(i3 | 1);
                BookingSummaryScreenKt.a((PreBookViewState) obj7, (SnackbarHostState) obj6, this.f79792f, (Function0) obj5, this.f79791e, (Function2) obj3, this.f79790c, (Function0) obj4, this.d, (Composer) obj, iA, this.f79793h);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(i3 | 1);
                int iA3 = RecomposeScopeImplKt.a(this.f79793h);
                NavDisplayKt.b((ArrayList) obj7, (Modifier) obj6, (Alignment) obj5, (List) obj4, (List) obj3, this.f79790c, this.d, this.f79791e, this.f79792f, (Composer) obj, iA2, iA3);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ sg(ArrayList arrayList, Modifier modifier, Alignment alignment, List list, List list2, Function1 function1, Function1 function2, Function2 function3, Function0 function0, int i2, int i3) {
        this.f79794i = arrayList;
        this.f79795j = modifier;
        this.f79796k = alignment;
        this.l = list;
        this.m = list2;
        this.f79790c = function1;
        this.d = function2;
        this.f79791e = function3;
        this.f79792f = function0;
        this.g = i2;
        this.f79793h = i3;
    }
}
