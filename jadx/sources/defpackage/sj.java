package defpackage;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.vuitton.android.R;
import com.vuitton.android.core.type.SystemIcons;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.presentation.compose.components.EdgeToEdgeKt;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.screen.authentication.register.components.LegalNoticeKt;
import com.vuitton.android.presentation.utils.LocationUtilsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class sj implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79804b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f79805c;

    public /* synthetic */ sj(Context context, int i2) {
        this.f79804b = 1;
        this.f79805c = context;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f79804b;
        Context context = this.f79805c;
        switch (i2) {
            case 0:
                SystemIcons systemIcons = (SystemIcons) obj;
                SystemIcons systemIcons2 = (SystemIcons) obj2;
                AppCompatActivity appCompatActivityB = ContextExtKt.b(context);
                if (appCompatActivityB != null) {
                    EdgeToEdgeKt.a(appCompatActivityB, systemIcons.f43535a, systemIcons2.f43535a);
                }
                break;
            case 1:
                ((Integer) obj2).getClass();
                LegalNoticeKt.a(context, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 2:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    String strC = StringResources_androidKt.c(composer, R.string.mylv_settings_gcm_lva_optout_title);
                    boolean zY = composer.y(context);
                    Object objX = composer.x();
                    if (zY || objX == Composer.Companion.f7939a) {
                        objX = new je(context, 16);
                        composer.q(objX);
                    }
                    LVStandardTopBarKt.a(null, null, false, strC, null, null, (Function0) objX, null, null, null, null, composer, 0, 0, 4023);
                } else {
                    composer.D();
                }
                break;
            default:
                Function1 function1 = (Function1) obj;
                Function0 function0 = (Function0) obj2;
                function1.getClass();
                function0.getClass();
                LocationUtilsKt.a(context, function1, function0);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ sj(Context context, int i2, byte b2) {
        this.f79804b = i2;
        this.f79805c = context;
    }
}
