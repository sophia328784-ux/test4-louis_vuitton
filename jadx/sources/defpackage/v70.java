package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.compose.LVSoundButtonKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.VtoCameraButtonKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class v70 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80521b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f80522c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f80523e;

    public /* synthetic */ v70(Modifier modifier, int i2, boolean z, Function0 function0, int i3) {
        this.f80521b = i3;
        this.f80522c = modifier;
        this.d = z;
        this.f80523e = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f80521b;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                LVSoundButtonKt.a(RecomposeScopeImplKt.a(1), composer, this.f80522c, this.f80523e, this.d);
                break;
            default:
                VtoCameraButtonKt.a(RecomposeScopeImplKt.a(1), composer, this.f80522c, this.f80523e, this.d);
                break;
        }
        return Unit.f71739a;
    }
}
