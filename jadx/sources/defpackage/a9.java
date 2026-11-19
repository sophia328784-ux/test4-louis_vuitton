package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.account.lvpass.components.QrCodeErrorScreenKt;
import com.vuitton.android.presentation.screen.account.myinformation.components.MyInformationBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.cart.components.bottomsheets.NativeCartBottomSheetsKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaLocationFormBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.osa.list.components.OsaListBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.pdp.components.PdpErrorScreenKt;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBottomSheetLayoutKt;
import com.vuitton.android.presentation.screen.wishlist.components.WishlistBottomSheetScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a9 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f446b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f447c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f448e;

    public /* synthetic */ a9(Function0 function0, Function0 function1, int i2, int i3) {
        this.f446b = i3;
        this.f447c = function0;
        this.d = function1;
        this.f448e = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Composer composer = (Composer) obj;
        Integer num = (Integer) obj2;
        switch (this.f446b) {
            case 0:
                num.getClass();
                AssessmentBottomSheetScreenKt.a(this.f447c, this.d, composer, RecomposeScopeImplKt.a(this.f448e | 1));
                break;
            case 1:
                num.getClass();
                DistantRepairFormBottomSheetScreenKt.b(this.f447c, this.d, composer, RecomposeScopeImplKt.a(this.f448e | 1));
                break;
            case 2:
                num.intValue();
                MyInformationBottomSheetScreenKt.a(this.f447c, this.d, composer, RecomposeScopeImplKt.a(this.f448e | 1));
                break;
            case 3:
                num.intValue();
                NativeCartBottomSheetsKt.d(this.f447c, this.d, composer, RecomposeScopeImplKt.a(this.f448e | 1));
                break;
            case 4:
                num.intValue();
                NativeRegisterBottomSheetScreenKt.a(this.f447c, this.d, composer, RecomposeScopeImplKt.a(this.f448e | 1));
                break;
            case 5:
                num.intValue();
                OsaListBottomSheetScreenKt.a(this.f447c, this.d, composer, RecomposeScopeImplKt.a(this.f448e | 1));
                break;
            case 6:
                num.intValue();
                OsaLocationFormBottomSheetScreenKt.c(this.f447c, this.d, composer, RecomposeScopeImplKt.a(this.f448e | 1));
                break;
            case 7:
                num.intValue();
                PdpErrorScreenKt.a(this.f447c, this.d, composer, RecomposeScopeImplKt.a(this.f448e | 1));
                break;
            case 8:
                num.intValue();
                QrCodeErrorScreenKt.a(this.f447c, this.d, composer, RecomposeScopeImplKt.a(this.f448e | 1));
                break;
            case 9:
                num.intValue();
                RepairDetailBottomSheetLayoutKt.a(this.f447c, this.d, composer, RecomposeScopeImplKt.a(this.f448e | 1));
                break;
            default:
                num.intValue();
                WishlistBottomSheetScreenKt.a(this.f447c, this.d, composer, RecomposeScopeImplKt.a(this.f448e | 1));
                break;
        }
        return Unit.f71739a;
    }
}
