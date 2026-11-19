package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.common.editorial.components.carousell.CarouselLGlobalTitlesKt;
import com.vuitton.android.presentation.common.editorial.components.carousell.CarouselLItemTitlesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ij implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69981b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f69982c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f69983e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ LVColorScheme f69984f;
    public final /* synthetic */ int g;

    public /* synthetic */ ij(Modifier modifier, LVColorScheme lVColorScheme, String str, String str2, int i2) {
        this.f69982c = modifier;
        this.f69984f = lVColorScheme;
        this.d = str;
        this.f69983e = str2;
        this.g = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f69981b) {
            case 0:
                ((Integer) obj2).getClass();
                CarouselLGlobalTitlesKt.a(RecomposeScopeImplKt.a(this.g | 1), (Composer) obj, this.f69982c, this.f69984f, this.d, this.f69983e);
                break;
            default:
                ((Integer) obj2).getClass();
                CarouselLItemTitlesKt.a(RecomposeScopeImplKt.a(this.g | 1), (Composer) obj, this.f69982c, this.f69984f, this.d, this.f69983e);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ ij(Modifier modifier, String str, String str2, LVColorScheme lVColorScheme, int i2) {
        this.f69982c = modifier;
        this.d = str;
        this.f69983e = str2;
        this.f69984f = lVColorScheme;
        this.g = i2;
    }
}
