package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.account.myinformation.components.MyInformationScreenKt;
import com.vuitton.android.presentation.screen.plp.components.composables.brandcontent.PLPHalfEditoComposableKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ud0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80291b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f80292c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f80293e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f80294f;
    public final /* synthetic */ int g;

    public /* synthetic */ ud0(int i2, int i3, String str, String str2, String str3, String str4) {
        this.f80291b = i3;
        this.f80292c = str;
        this.d = str2;
        this.f80293e = str3;
        this.f80294f = str4;
        this.g = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f80291b) {
            case 0:
                ((Integer) obj2).getClass();
                MyInformationScreenKt.b(this.f80292c, this.d, this.f80293e, this.f80294f, (Composer) obj, RecomposeScopeImplKt.a(this.g | 1));
                break;
            default:
                ((Integer) obj2).getClass();
                PLPHalfEditoComposableKt.a(this.f80292c, this.d, this.f80293e, this.f80294f, (Composer) obj, RecomposeScopeImplKt.a(this.g | 1));
                break;
        }
        return Unit.f71739a;
    }
}
