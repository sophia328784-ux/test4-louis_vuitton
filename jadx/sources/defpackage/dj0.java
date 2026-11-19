package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.components.OsaContactFormBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.privacy.components.PrivacyCtasKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class dj0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68596b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f68597c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f68598e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f68599f;

    public /* synthetic */ dj0(Modifier modifier, Function0 function0, Function0 function1, int i2, int i3) {
        this.f68596b = i3;
        this.f68597c = modifier;
        this.d = function0;
        this.f68598e = function1;
        this.f68599f = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f68596b;
        Composer composer = (Composer) obj;
        ((Integer) obj2).intValue();
        switch (i2) {
            case 0:
                OsaContactFormBottomSheetScreenKt.c(this.f68597c, this.d, this.f68598e, composer, RecomposeScopeImplKt.a(this.f68599f | 1));
                break;
            default:
                PrivacyCtasKt.a(this.f68597c, this.d, this.f68598e, composer, RecomposeScopeImplKt.a(this.f68599f | 1));
                break;
        }
        return Unit.f71739a;
    }
}
