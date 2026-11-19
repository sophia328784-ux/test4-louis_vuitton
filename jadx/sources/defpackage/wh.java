package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.sightcall.core.consent.compose.ConsentDeclineViewKt;
import com.sightcall.core.consent.compose.ConsentLayoutKt;
import com.sightcall.core.consent.compose.ConsentViewKt;
import com.sightcall.graphik.composent.ButtonsKt;
import com.vuitton.android.presentation.screen.osa.list.components.OsaListDataScreenKt;
import com.vuitton.android.presentation.screen.wishlist.components.WishlistScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class wh implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80870b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f80871c;

    public /* synthetic */ wh(int i2, int i3) {
        this.f80870b = i3;
        this.f80871c = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Composer composer = (Composer) obj;
        Integer num = (Integer) obj2;
        switch (this.f80870b) {
            case 0:
                return ButtonsKt.PreviewVisionTextButton$lambda$1(this.f80871c, composer, num.intValue());
            case 1:
                return ButtonsKt.PreviewLargeConfirmButton$lambda$1(this.f80871c, composer, num.intValue());
            case 2:
                return ConsentDeclineViewKt.PreviewConsentDeclineView$lambda$1(this.f80871c, composer, num.intValue());
            case 3:
                return ConsentLayoutKt.PreviewConsentScreen$lambda$4(this.f80871c, composer, num.intValue());
            case 4:
                return ConsentViewKt.PreviewConsentView$lambda$3(this.f80871c, composer, num.intValue());
            case 5:
                num.getClass();
                OsaListDataScreenKt.b(this.f80871c, composer, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 6:
                num.getClass();
                OsaListDataScreenKt.c(this.f80871c, composer, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            default:
                num.getClass();
                WishlistScreenKt.a(this.f80871c, composer, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ wh(int i2, int i3, int i4) {
        this.f80870b = i4;
        this.f80871c = i2;
    }
}
