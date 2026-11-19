package defpackage;

import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.IconToggleButtonColors;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b20 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20719b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f20720c;
    public final /* synthetic */ Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Modifier f20721e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f20722f;
    public final /* synthetic */ IconToggleButtonColors g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Shape f20723h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ ComposableLambdaImpl f20724i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ int f20725j;

    public /* synthetic */ b20(boolean z, Function1 function1, Modifier modifier, boolean z2, IconToggleButtonColors iconToggleButtonColors, Shape shape, ComposableLambdaImpl composableLambdaImpl, int i2, int i3) {
        this.f20719b = i3;
        this.f20720c = z;
        this.d = function1;
        this.f20721e = modifier;
        this.f20722f = z2;
        this.g = iconToggleButtonColors;
        this.f20723h = shape;
        this.f20724i = composableLambdaImpl;
        this.f20725j = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f20719b;
        int i3 = this.f20725j;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                IconButtonKt.d(this.f20720c, this.d, this.f20721e, this.f20722f, this.g, this.f20723h, this.f20724i, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            default:
                ((Integer) obj2).getClass();
                IconButtonKt.c(this.f20720c, this.d, this.f20721e, this.f20722f, this.g, this.f20723h, this.f20724i, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
        }
        return Unit.f71739a;
    }
}
