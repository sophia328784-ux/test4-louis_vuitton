package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairFormViewState;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightScreenKt;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightViewState;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ru implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79614b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f79615c;
    public final /* synthetic */ Function2 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f79616e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f79617f;
    public final /* synthetic */ Function0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function1 f79618h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Function0 f79619i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Function1 f79620j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Function1 f79621k;
    public final /* synthetic */ Function1 l;
    public final /* synthetic */ int m;
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Function q;
    public final /* synthetic */ Function r;
    public final /* synthetic */ Function s;

    public /* synthetic */ ru(DistantRepairFormViewState distantRepairFormViewState, CoroutineScope coroutineScope, Function0 function0, Function1 function1, Function1 function2, Function1 function3, Function3 function4, Function1 function5, Function1 function6, Function1 function7, Function0 function8, Function0 function9, Function0 function10, Function1 function11, Function2 function12, int i2, int i3) {
        this.o = distantRepairFormViewState;
        this.p = coroutineScope;
        this.f79616e = function0;
        this.f79615c = function1;
        this.f79618h = function2;
        this.f79620j = function3;
        this.s = function4;
        this.f79621k = function5;
        this.l = function6;
        this.q = function7;
        this.f79617f = function8;
        this.g = function9;
        this.f79619i = function10;
        this.r = function11;
        this.d = function12;
        this.m = i2;
        this.n = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f79614b) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(this.m | 1);
                int iA2 = RecomposeScopeImplKt.a(this.n);
                DistantRepairFormComponentKt.a((DistantRepairFormViewState) this.o, (CoroutineScope) this.p, this.f79616e, this.f79615c, this.f79618h, this.f79620j, (Function3) this.s, this.f79621k, this.l, (Function1) this.q, this.f79617f, this.g, this.f79619i, (Function1) this.r, this.d, (Composer) obj, iA, iA2);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(this.m | 1);
                int iA4 = RecomposeScopeImplKt.a(this.n);
                SpotlightScreenKt.b((SpotlightViewState) this.o, this.f79615c, this.d, this.f79616e, (Function2) this.p, this.f79617f, this.g, this.f79618h, this.f79619i, (Function0) this.q, (Function0) this.r, (Function2) this.s, this.f79620j, this.f79621k, this.l, (Composer) obj, iA3, iA4);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ ru(SpotlightViewState spotlightViewState, Function1 function1, Function2 function2, Function0 function0, Function2 function3, Function0 function4, Function0 function5, Function1 function6, Function0 function7, Function0 function8, Function0 function9, Function2 function10, Function1 function11, Function1 function12, Function1 function13, int i2, int i3) {
        this.o = spotlightViewState;
        this.f79615c = function1;
        this.d = function2;
        this.f79616e = function0;
        this.p = function3;
        this.f79617f = function4;
        this.g = function5;
        this.f79618h = function6;
        this.f79619i = function7;
        this.q = function8;
        this.r = function9;
        this.s = function10;
        this.f79620j = function11;
        this.f79621k = function12;
        this.l = function13;
        this.m = i2;
        this.n = i3;
    }
}
