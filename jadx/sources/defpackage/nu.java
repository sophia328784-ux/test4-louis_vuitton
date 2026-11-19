package defpackage;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationType;
import java.time.LocalDate;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class nu implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76614b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function2 f76615c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ nu(Function0 function0, Function2 function2) {
        this.d = function0;
        this.f76615c = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76614b;
        Function0 function0 = this.d;
        Function2 function2 = this.f76615c;
        switch (i2) {
            case 0:
                LocalDate localDate = (LocalDate) obj;
                String str = (String) obj2;
                localDate.getClass();
                str.getClass();
                function0.mo47invoke();
                function2.invoke(localDate, str);
                break;
            default:
                String str2 = (String) obj;
                CustomizationType customizationType = (CustomizationType) obj2;
                str2.getClass();
                customizationType.getClass();
                function2.invoke(str2, customizationType);
                function0.mo47invoke();
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ nu(Function2 function2, Function0 function0) {
        this.f76615c = function2;
        this.d = function0;
    }
}
