package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.compose.components.PushCardImageLoaderKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.SearchResultCountBarKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class rq0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79595b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f79596c;
    public final /* synthetic */ Integer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f79597e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f79598f;

    public /* synthetic */ rq0(Modifier modifier, Integer num, String str, int i2) {
        this.f79596c = modifier;
        this.d = num;
        this.f79597e = str;
        this.f79598f = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f79595b) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                PushCardImageLoaderKt.a(this.f79596c, this.f79597e, this.d, (Composer) obj, iA, this.f79598f);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(this.f79598f | 1);
                SearchResultCountBarKt.a(this.f79596c, this.d, this.f79597e, (Composer) obj, iA2);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ rq0(Modifier modifier, String str, Integer num, int i2, int i3) {
        this.f79596c = modifier;
        this.f79597e = str;
        this.d = num;
        this.f79598f = i3;
    }
}
