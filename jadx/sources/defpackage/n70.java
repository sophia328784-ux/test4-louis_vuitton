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
public final /* synthetic */ class n70 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76457b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f76458c;
    public final /* synthetic */ LVColorScheme d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ InfiniteTransition f76459e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f76460f;
    public final /* synthetic */ int g;

    public /* synthetic */ n70(Modifier modifier, LVColorScheme lVColorScheme, InfiniteTransition infiniteTransition, int i2, int i3, int i4) {
        this.f76457b = i4;
        this.f76458c = modifier;
        this.d = lVColorScheme;
        this.f76459e = infiniteTransition;
        this.f76460f = i2;
        this.g = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f76457b) {
            case 0:
                ((Integer) obj2).getClass();
                LVSkeletonKt.e(this.f76458c, this.d, this.f76459e, (Composer) obj, RecomposeScopeImplKt.a(this.f76460f | 1), this.g);
                break;
            default:
                ((Integer) obj2).getClass();
                LVSkeletonKt.b(this.f76458c, this.d, this.f76459e, (Composer) obj, RecomposeScopeImplKt.a(this.f76460f | 1), this.g);
                break;
        }
        return Unit.f71739a;
    }
}
