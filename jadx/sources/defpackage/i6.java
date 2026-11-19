package defpackage;

import androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider_androidKt;
import androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt;
import androidx.compose.foundation.text.contextmenu.internal.PlatformDefaultTextContextMenuProviders_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i6 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69881b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f69882c;
    public final /* synthetic */ ComposableLambdaImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f69883e;

    public /* synthetic */ i6(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, int i2, int i3) {
        this.f69881b = i3;
        this.f69882c = modifier;
        this.d = composableLambdaImpl;
        this.f69883e = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f69881b;
        int i3 = this.f69883e;
        ComposableLambdaImpl composableLambdaImpl = this.d;
        Modifier modifier = this.f69882c;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                AndroidTextContextMenuToolbarProvider_androidKt.a(modifier, composableLambdaImpl, composer, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 1:
                AndroidTextContextMenuToolbarProvider_androidKt.b(modifier, composableLambdaImpl, composer, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 2:
                DefaultTextContextMenuDropdownProvider_androidKt.d(modifier, composableLambdaImpl, composer, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 3:
                PlatformDefaultTextContextMenuProviders_androidKt.b(modifier, composableLambdaImpl, composer, RecomposeScopeImplKt.a(i3 | 1));
                break;
            default:
                PlatformDefaultTextContextMenuProviders_androidKt.a(modifier, composableLambdaImpl, composer, RecomposeScopeImplKt.a(i3 | 1));
                break;
        }
        return Unit.f71739a;
    }
}
