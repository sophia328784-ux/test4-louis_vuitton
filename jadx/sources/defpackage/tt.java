package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextStyle;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairAddressCardComponentKt;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpServicesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class tt implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80137b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f80138c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f80139e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f80140f;
    public final /* synthetic */ Function0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f80141h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f80142i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f80143j;

    public /* synthetic */ tt(Modifier modifier, int i2, String str, String str2, String str3, int i3, Function0 function0, int i4) {
        this.f80143j = modifier;
        this.d = i2;
        this.f80138c = str;
        this.f80139e = str2;
        this.f80140f = str3;
        this.f80141h = i3;
        this.g = function0;
        this.f80142i = i4;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f80137b;
        Object obj3 = this.f80143j;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                DistantRepairAddressCardComponentKt.a((Modifier) obj3, this.d, this.f80138c, this.f80139e, this.f80140f, this.f80141h, this.g, (Composer) obj, RecomposeScopeImplKt.a(this.f80142i | 1));
                break;
            default:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(this.f80141h | 1);
                String str = this.f80138c;
                int i3 = this.d;
                String str2 = this.f80139e;
                String str3 = this.f80140f;
                PdpServicesKt.b(str, i3, str2, str3, (TextStyle) obj3, this.g, (Composer) obj, iA, this.f80142i);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ tt(String str, int i2, String str2, String str3, TextStyle textStyle, Function0 function0, int i3, int i4) {
        this.f80138c = str;
        this.d = i2;
        this.f80139e = str2;
        this.f80140f = str3;
        this.f80143j = textStyle;
        this.g = function0;
        this.f80141h = i3;
        this.f80142i = i4;
    }
}
