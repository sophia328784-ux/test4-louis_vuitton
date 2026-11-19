package defpackage;

import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVSkeletonKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class m70 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76199b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f76200c;
    public final /* synthetic */ LVColorScheme d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ InfiniteTransition f76201e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f76202f;

    public /* synthetic */ m70(Modifier modifier, LVColorScheme lVColorScheme, InfiniteTransition infiniteTransition, int i2, int i3) {
        this.f76199b = i3;
        this.f76200c = modifier;
        this.d = lVColorScheme;
        this.f76201e = infiniteTransition;
        this.f76202f = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76199b;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                LVSkeletonKt.a(this.f76200c, this.d, this.f76201e, composer, RecomposeScopeImplKt.a(this.f76202f | 1));
                break;
            default:
                LVSkeletonKt.d(this.f76200c, this.d, this.f76201e, composer, RecomposeScopeImplKt.a(this.f76202f | 1));
                break;
        }
        return Unit.f71739a;
    }
}
