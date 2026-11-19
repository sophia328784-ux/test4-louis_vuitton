package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBffScreenKt;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ds0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68654b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f68655c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f68656e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f68657f;

    public /* synthetic */ ds0(int i2, int i3, Modifier modifier, String str, Function0 function0) {
        this.f68654b = i3;
        this.f68655c = modifier;
        this.d = str;
        this.f68656e = function0;
        this.f68657f = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f68654b;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                RepairDetailBffScreenKt.c(this.f68655c, this.d, this.f68656e, composer, RecomposeScopeImplKt.a(this.f68657f | 1));
                break;
            default:
                RepairDetailScreenKt.a(this.f68655c, this.d, this.f68656e, composer, RecomposeScopeImplKt.a(this.f68657f | 1));
                break;
        }
        return Unit.f71739a;
    }
}
