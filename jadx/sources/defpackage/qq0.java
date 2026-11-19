package defpackage;

import androidx.compose.material3.internal.ProvideContentColorTextStyleKt;
import androidx.compose.material3.internal.TextFieldImplKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.text.TextStyle;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class qq0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79139b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f79140c;
    public final /* synthetic */ TextStyle d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function2 f79141e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f79142f;

    public /* synthetic */ qq0(long j2, TextStyle textStyle, Function2 function2, int i2, int i3) {
        this.f79139b = i3;
        this.f79140c = j2;
        this.d = textStyle;
        this.f79141e = function2;
        this.f79142f = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f79139b) {
            case 0:
                ((Integer) obj2).intValue();
                ProvideContentColorTextStyleKt.a(this.f79140c, this.d, this.f79141e, (Composer) obj, RecomposeScopeImplKt.a(this.f79142f | 1));
                break;
            default:
                ((Integer) obj2).getClass();
                TextFieldImplKt.b(this.f79140c, this.d, this.f79141e, (Composer) obj, RecomposeScopeImplKt.a(this.f79142f | 1));
                break;
        }
        return Unit.f71739a;
    }
}
