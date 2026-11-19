package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.account.myicons.components.MyIconsComposableKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class pd0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78830b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f78831c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f78832e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function1 f78833f;

    public /* synthetic */ pd0(Function0 function0, Function0 function1, Function1 function2, Function1 function3, int i2, int i3) {
        this.f78830b = i3;
        this.f78831c = function0;
        this.d = function1;
        this.f78832e = function2;
        this.f78833f = function3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f78830b) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                MyIconsComposableKt.a(this.f78831c, this.d, this.f78832e, this.f78833f, (Composer) obj, iA);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                MyIconsComposableKt.b(this.f78831c, this.d, this.f78832e, this.f78833f, (Composer) obj, iA2);
                break;
        }
        return Unit.f71739a;
    }
}
