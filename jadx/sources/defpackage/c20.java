package defpackage;

import androidx.compose.material3.IconKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.ImageVector;
import com.vuitton.android.presentation.compose.components.LVLiveCountdownKt;
import java.time.Instant;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class c20 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21037b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f21038c;
    public final /* synthetic */ Modifier d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ long f21039e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f21040f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f21041h;

    public /* synthetic */ c20(Modifier modifier, long j2, Instant instant, Function0 function0, int i2, int i3) {
        this.f21037b = 2;
        this.d = modifier;
        this.f21039e = j2;
        this.f21041h = instant;
        this.f21038c = function0;
        this.f21040f = i2;
        this.g = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f21037b) {
            case 0:
                ((Integer) obj2).getClass();
                IconKt.a((Painter) this.f21041h, (String) this.f21038c, this.d, this.f21039e, (Composer) obj, RecomposeScopeImplKt.a(this.f21040f | 1), this.g);
                break;
            case 1:
                ((Integer) obj2).getClass();
                IconKt.b((ImageVector) this.f21041h, (String) this.f21038c, this.d, this.f21039e, (Composer) obj, RecomposeScopeImplKt.a(this.f21040f | 1), this.g);
                break;
            default:
                ((Integer) obj2).getClass();
                LVLiveCountdownKt.a(this.d, this.f21039e, (Instant) this.f21041h, (Function0) this.f21038c, (Composer) obj, RecomposeScopeImplKt.a(this.f21040f | 1), this.g);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ c20(Object obj, String str, Modifier modifier, long j2, int i2, int i3, int i4) {
        this.f21037b = i4;
        this.f21041h = obj;
        this.f21038c = str;
        this.d = modifier;
        this.f21039e = j2;
        this.f21040f = i2;
        this.g = i3;
    }
}
