package defpackage;

import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVSkeletonKt;
import com.vuitton.android.presentation.screen.immersivearticle.podcast.components.PodcastControlButtonKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class o70 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76712b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f76713c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ float f76714e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f76715f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f76716h;

    public /* synthetic */ o70(Modifier modifier, float f2, LVColorScheme lVColorScheme, InfiniteTransition infiniteTransition, int i2, int i3) {
        this.f76713c = modifier;
        this.f76714e = f2;
        this.g = lVColorScheme;
        this.f76716h = infiniteTransition;
        this.d = i2;
        this.f76715f = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f76712b) {
            case 0:
                ((Integer) obj2).getClass();
                LVSkeletonKt.c(this.f76713c, this.f76714e, (LVColorScheme) this.g, (InfiniteTransition) this.f76716h, (Composer) obj, RecomposeScopeImplKt.a(this.d | 1), this.f76715f);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                PodcastControlButtonKt.a(this.f76713c, this.d, (String) this.g, this.f76714e, (Function0) this.f76716h, (Composer) obj, iA, this.f76715f);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ o70(Modifier modifier, int i2, String str, float f2, Function0 function0, int i3, int i4) {
        this.f76713c = modifier;
        this.d = i2;
        this.g = str;
        this.f76714e = f2;
        this.f76716h = function0;
        this.f76715f = i4;
    }
}
