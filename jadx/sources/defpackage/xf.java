package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.booking.form.components.module.BookingModuleGridKt;
import com.vuitton.android.presentation.screen.reinsurance.components.ReinsuranceListKt;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.collections.immutable.ImmutableList;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class xf implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81116b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f81117c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f81118e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f81119f;
    public final /* synthetic */ List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function f81120h;

    public /* synthetic */ xf(Modifier modifier, ImmutableList immutableList, int i2, Function1 function1, int i3, int i4) {
        this.f81117c = modifier;
        this.g = immutableList;
        this.d = i2;
        this.f81120h = function1;
        this.f81118e = i3;
        this.f81119f = i4;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f81116b) {
            case 0:
                ((Integer) obj2).getClass();
                BookingModuleGridKt.a(this.g, this.f81117c, this.d, (Function3) this.f81120h, (Composer) obj, RecomposeScopeImplKt.a(this.f81118e | 1), this.f81119f);
                break;
            default:
                ((Integer) obj2).getClass();
                ReinsuranceListKt.b(this.f81117c, (ImmutableList) this.g, this.d, (Function1) this.f81120h, (Composer) obj, RecomposeScopeImplKt.a(this.f81118e | 1), this.f81119f);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ xf(List list, Modifier modifier, int i2, Function3 function3, int i3, int i4) {
        this.g = list;
        this.f81117c = modifier;
        this.d = i2;
        this.f81120h = function3;
        this.f81118e = i3;
        this.f81119f = i4;
    }
}
