package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.sightcall.graphik.composent.ButtonsKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.ProductFocusDialogKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class vh implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80581b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f80582c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Modifier f80583e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f80584f;
    public final /* synthetic */ int g;

    public /* synthetic */ vh(int i2, int i3, Modifier modifier, String str, Function0 function0) {
        this.f80581b = 2;
        this.f80583e = modifier;
        this.f80584f = i2;
        this.f80582c = str;
        this.d = function0;
        this.g = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f80581b) {
            case 0:
                int iIntValue = ((Integer) obj2).intValue();
                return ButtonsKt.LargeConfirmButton$lambda$1(this.f80582c, this.d, this.f80583e, this.f80584f, this.g, (Composer) obj, iIntValue);
            case 1:
                int iIntValue2 = ((Integer) obj2).intValue();
                return ButtonsKt.VisionTextButton$lambda$1(this.f80582c, this.d, this.f80583e, this.f80584f, this.g, (Composer) obj, iIntValue2);
            default:
                ((Integer) obj2).getClass();
                ProductFocusDialogKt.b(this.f80582c, this.d, this.f80583e, (Composer) obj, this.f80584f, RecomposeScopeImplKt.a(this.g | 1));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ vh(String str, Function0 function0, Modifier modifier, int i2, int i3, int i4) {
        this.f80581b = i4;
        this.f80582c = str;
        this.d = function0;
        this.f80583e = modifier;
        this.f80584f = i2;
        this.g = i3;
    }
}
