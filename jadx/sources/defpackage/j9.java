package defpackage;

import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentFormComponentKt;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpWishListTopBarButtonKt;
import com.vuitton.android.presentation.screen.privacy.components.headers.PiplPrivacyHeaderKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class j9 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71341b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f71342c;
    public final /* synthetic */ int d;

    public /* synthetic */ j9(boolean z, int i2, int i3) {
        this.f71341b = i3;
        this.f71342c = z;
        this.d = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f71341b;
        final int i3 = this.d;
        boolean z = this.f71342c;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                AssessmentFormComponentKt.c(z, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 1:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Boolean boolValueOf = Boolean.valueOf(z);
                    Object objX = composer.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = new yk0(23);
                        composer.q(objX);
                    }
                    AnimatedContentKt.b(boolValueOf, null, (Function1) objX, null, "WishlistLoading", null, ComposableLambdaKt.b(1371044064, new Function4() { // from class: dn0
                        @Override // kotlin.jvm.functions.Function4
                        public final Object g(Object obj3, Object obj4, Object obj5, Object obj6) {
                            boolean zBooleanValue = ((Boolean) obj4).booleanValue();
                            Composer composer2 = (Composer) obj5;
                            ((Integer) obj6).getClass();
                            ((AnimatedContentScope) obj3).getClass();
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            if (zBooleanValue) {
                                composer2.L(-365230872);
                                PdpWishListTopBarButtonKt.b(null, composer2, 0);
                                composer2.F();
                            } else {
                                IconKt.a(PainterResources_androidKt.a(i3, composer2, 0), null, SizeKt.o(pq0.j(-365141871, composer2, "PdpWishListTopBarButton$lambda$0$1"), LVAppDesignKitTheme.d(composer2).o), LVAppDesignKitTheme.c(composer2).f48361b.u, composer2, 56, 0);
                                composer2.F();
                            }
                            return Unit.f71739a;
                        }
                    }, composer), composer, 1597824, 42);
                } else {
                    composer.D();
                }
                break;
            default:
                ((Integer) obj2).getClass();
                PiplPrivacyHeaderKt.a(z, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
        }
        return Unit.f71739a;
    }
}
