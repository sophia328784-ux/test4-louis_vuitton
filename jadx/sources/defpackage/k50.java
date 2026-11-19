package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.compose.components.LVCalendarKt;
import com.vuitton.android.presentation.screen.pdp.bottomsheet.VariationBottomSheetKt;
import java.time.LocalDate;
import java.util.List;
import java.util.Locale;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class k50 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71565b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f71566c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ List f71567e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f71568f;
    public final /* synthetic */ boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function1 f71569h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f71570i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f71571j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f71572k;

    public /* synthetic */ k50(Modifier modifier, int i2, String str, List list, boolean z, boolean z2, Function0 function0, Function1 function1, int i3) {
        this.f71566c = modifier;
        this.d = i2;
        this.f71571j = str;
        this.f71567e = list;
        this.f71568f = z;
        this.g = z2;
        this.f71572k = function0;
        this.f71569h = function1;
        this.f71570i = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f71565b) {
            case 0:
                ((Integer) obj2).getClass();
                LVCalendarKt.d(this.f71566c, this.f71567e, (LocalDate) this.f71571j, (Locale) this.f71572k, this.f71568f, this.g, this.f71569h, (Composer) obj, RecomposeScopeImplKt.a(this.d | 1), this.f71570i);
                break;
            default:
                ((Integer) obj2).getClass();
                VariationBottomSheetKt.a(this.f71566c, this.d, (String) this.f71571j, this.f71567e, this.f71568f, this.g, (Function0) this.f71572k, this.f71569h, (Composer) obj, RecomposeScopeImplKt.a(this.f71570i | 1));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ k50(Modifier modifier, List list, LocalDate localDate, Locale locale, boolean z, boolean z2, Function1 function1, int i2, int i3) {
        this.f71566c = modifier;
        this.f71567e = list;
        this.f71571j = localDate;
        this.f71572k = locale;
        this.f71568f = z;
        this.g = z2;
        this.f71569h = function1;
        this.d = i2;
        this.f71570i = i3;
    }
}
