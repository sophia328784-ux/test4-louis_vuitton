package defpackage;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.text.AndroidCursorHandle_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class q5 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79010b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f79011c;
    public final /* synthetic */ int d;

    public /* synthetic */ q5(Modifier modifier, int i2) {
        this.f79011c = modifier;
        this.d = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Composer composer = (Composer) obj;
        Integer num = (Integer) obj2;
        switch (this.f79010b) {
            case 0:
                num.getClass();
                AndroidCursorHandle_androidKt.b(this.f79011c, composer, RecomposeScopeImplKt.a(1), this.d);
                break;
            default:
                num.intValue();
                BoxKt.a(this.f79011c, composer, RecomposeScopeImplKt.a(this.d | 1));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ q5(Modifier modifier, int i2, int i3) {
        this.f79011c = modifier;
        this.d = i3;
    }
}
