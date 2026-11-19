package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.components.components.LVSwipeToRevealKt;
import com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationTitleKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class x70 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81045b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f81046c;
    public final /* synthetic */ List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f81047e;

    public /* synthetic */ x70(Modifier modifier, List list, int i2) {
        this.f81046c = modifier;
        this.d = list;
        this.f81047e = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f81045b;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                LVSwipeToRevealKt.b(this.f81046c, this.d, composer, RecomposeScopeImplKt.a(this.f81047e | 1));
                break;
            default:
                NativeAuthenticationTitleKt.a(this.f81046c, this.d, this.f81047e, composer, RecomposeScopeImplKt.a(1));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ x70(Modifier modifier, List list, int i2, int i3) {
        this.f81046c = modifier;
        this.d = list;
        this.f81047e = i2;
    }
}
