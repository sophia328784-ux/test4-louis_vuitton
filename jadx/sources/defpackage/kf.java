package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.booking.details.components.BookingDetailsScreenKt;
import com.vuitton.android.presentation.screen.repairs.components.RepairDetailAddressBookComposableKt;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListBffItemKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class kf implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71629b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f71630c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f71631e;

    public /* synthetic */ kf(String str, int i2, Function0 function0, int i3) {
        this.f71629b = 0;
        this.f71630c = str;
        this.f71631e = i2;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f71629b;
        int i3 = this.f71631e;
        Function0 function0 = this.d;
        String str = this.f71630c;
        Composer composer = (Composer) obj;
        Integer num = (Integer) obj2;
        switch (i2) {
            case 0:
                num.getClass();
                BookingDetailsScreenKt.a(str, i3, function0, composer, RecomposeScopeImplKt.a(1));
                break;
            case 1:
                num.getClass();
                NativeRegisterBottomSheetScreenKt.b(str, function0, composer, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 2:
                num.intValue();
                RepairDetailAddressBookComposableKt.b(str, function0, composer, RecomposeScopeImplKt.a(i3 | 1));
                break;
            default:
                num.intValue();
                RepairListBffItemKt.b(str, function0, composer, RecomposeScopeImplKt.a(i3 | 1));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ kf(String str, Function0 function0, int i2, int i3) {
        this.f71629b = i3;
        this.f71630c = str;
        this.d = function0;
        this.f71631e = i2;
    }
}
