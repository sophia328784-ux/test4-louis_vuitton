package defpackage;

import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.TopAppBarColors;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class x6 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81031b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f81032c;
    public final /* synthetic */ Modifier d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f81033e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f81034f;
    public final /* synthetic */ float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f81035h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f81036i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ int f81037j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ int f81038k;

    public /* synthetic */ x6(Painter painter, String str, Modifier modifier, Alignment alignment, ContentScale contentScale, float f2, ColorFilter colorFilter, int i2, int i3) {
        this.f81031b = 2;
        this.f81032c = painter;
        this.f81033e = str;
        this.d = modifier;
        this.f81034f = alignment;
        this.f81035h = contentScale;
        this.g = f2;
        this.f81036i = colorFilter;
        this.f81037j = i2;
        this.f81038k = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f81031b;
        int i3 = this.f81037j;
        Object obj3 = this.f81036i;
        Object obj4 = this.f81035h;
        Object obj5 = this.f81034f;
        Object obj6 = this.f81033e;
        Object obj7 = this.f81032c;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(i3 | 1);
                AppBarKt.a((Function2) obj7, this.d, (Function2) obj6, (Function3) obj5, this.g, (WindowInsets) obj4, (TopAppBarColors) obj3, (Composer) obj, iA, this.f81038k);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(i3 | 1);
                AppBarKt.c((Function2) obj7, this.d, (Function2) obj6, (Function3) obj5, this.g, (WindowInsets) obj4, (TopAppBarColors) obj3, (Composer) obj, iA2, this.f81038k);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(i3 | 1);
                ImageKt.a((Painter) obj7, (String) obj6, this.d, (Alignment) obj5, (ContentScale) obj4, this.g, (ColorFilter) obj3, (Composer) obj, iA3, this.f81038k);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ x6(Function2 function2, Modifier modifier, Function2 function3, Function3 function4, float f2, WindowInsets windowInsets, TopAppBarColors topAppBarColors, int i2, int i3, int i4) {
        this.f81031b = i4;
        this.f81032c = function2;
        this.d = modifier;
        this.f81033e = function3;
        this.f81034f = function4;
        this.g = f2;
        this.f81035h = windowInsets;
        this.f81036i = topAppBarColors;
        this.f81037j = i2;
        this.f81038k = i3;
    }
}
