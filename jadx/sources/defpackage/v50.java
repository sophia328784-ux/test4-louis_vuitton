package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.designkit.ui.theme.templates.AutomationTagsAction;
import com.vuitton.android.designkit.ui.theme.templates.LVEmptyViewKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class v50 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80505b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f80506c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AutomationTagsAction f80507e;

    public /* synthetic */ v50(String str, Function0 function0, AutomationTagsAction automationTagsAction) {
        this.f80506c = str;
        this.d = function0;
        this.f80507e = automationTagsAction;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f80505b;
        AutomationTagsAction automationTagsAction = this.f80507e;
        Function0 function0 = this.d;
        String str = this.f80506c;
        Composer composer = (Composer) obj;
        Integer num = (Integer) obj2;
        switch (i2) {
            case 0:
                num.getClass();
                LVEmptyViewKt.f(str, function0, automationTagsAction, composer, RecomposeScopeImplKt.a(1));
                break;
            default:
                int iIntValue = num.intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    if (str == null) {
                        composer.L(-550122141);
                        composer.F();
                    } else {
                        composer.L(-550122140);
                        LVEmptyViewKt.f(str, function0, automationTagsAction, composer, 0);
                        composer.F();
                    }
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ v50(String str, Function0 function0, AutomationTagsAction automationTagsAction, int i2) {
        this.f80506c = str;
        this.d = function0;
        this.f80507e = automationTagsAction;
    }
}
