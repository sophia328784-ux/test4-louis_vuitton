package defpackage;

import android.content.Intent;
import androidx.activity.result.ActivityResult;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import com.vuitton.android.presentation.screen.filter.quickaccess.FiltersDropDownType;
import com.vuitton.android.presentation.screen.plp.components.screens.PLPScreenKt;
import com.vuitton.android.presentation.screen.plp.components.screens.PSPScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class eg implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68852b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f68853c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ eg(Function0 function0, Function0 function1, int i2) {
        this.f68852b = i2;
        this.f68853c = function0;
        this.d = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f68852b;
        Function0 function0 = this.d;
        Function0 function1 = this.f68853c;
        switch (i2) {
            case 0:
                ActivityResult activityResult = (ActivityResult) obj;
                activityResult.getClass();
                if (activityResult.f731b == -1) {
                    Intent intent = activityResult.f732c;
                    if (intent != null && intent.getBooleanExtra("BOOKING_PAYMENT_SUCCESS", false)) {
                        function1.mo47invoke();
                    } else if (intent != null && intent.getBooleanExtra("BOOKING_PAYMENT_EXIT", false)) {
                        function0.mo47invoke();
                    }
                }
                return Unit.f71739a;
            case 1:
                FiltersDropDownType filtersDropDownType = (FiltersDropDownType) obj;
                filtersDropDownType.getClass();
                int i3 = PLPScreenKt.WhenMappings.f62769a[filtersDropDownType.ordinal()];
                if (i3 == 1) {
                    function1.mo47invoke();
                } else {
                    if (i3 != 2) {
                        v40.g();
                        return null;
                    }
                    function0.mo47invoke();
                }
                return Unit.f71739a;
            case 2:
                FiltersDropDownType filtersDropDownType2 = (FiltersDropDownType) obj;
                filtersDropDownType2.getClass();
                int i4 = PSPScreenKt.WhenMappings.f62773b[filtersDropDownType2.ordinal()];
                if (i4 == 1) {
                    function1.mo47invoke();
                } else {
                    if (i4 != 2) {
                        v40.g();
                        return null;
                    }
                    function0.mo47invoke();
                }
                return Unit.f71739a;
            default:
                TextContextMenuSession textContextMenuSession = (TextContextMenuSession) obj;
                function1.mo47invoke();
                if (function0 != null ? ((Boolean) function0.mo47invoke()).booleanValue() : true) {
                    textContextMenuSession.close();
                }
                return Unit.f71739a;
        }
    }
}
