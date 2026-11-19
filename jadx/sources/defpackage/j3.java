package defpackage;

import android.content.Context;
import androidx.compose.animation.ExitTransition;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.ActiveFiltersSliderKt;
import com.vuitton.android.presentation.screen.mylv.MyLvActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class j3 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71271b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f71272c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ j3(Context context, Function0 function0, int i2) {
        this.f71271b = i2;
        this.f71272c = context;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f71271b;
        Function0 function0 = this.d;
        Context context = this.f71272c;
        switch (i2) {
            case 0:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                ExitTransition exitTransition = ActiveFiltersSliderKt.f58051a;
                semanticsPropertyReceiver.getClass();
                String string = context.getString(R.string.alt_remove_all_filters);
                string.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver, string);
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver, 0);
                SemanticsPropertiesKt.e(semanticsPropertyReceiver, null, new h1(function0, 1));
                break;
            case 1:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                String string2 = context.getString(R.string.alt_photo_take);
                string2.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver2, string2);
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver2, 0);
                SemanticsPropertiesKt.e(semanticsPropertyReceiver2, null, new h1(function0, 16));
                break;
            case 2:
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver3.getClass();
                String string3 = context.getString(R.string.alt_close);
                string3.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver3, string3);
                SemanticsPropertiesKt.e(semanticsPropertyReceiver3, null, new h1(function0, 29));
                break;
            default:
                ((String) obj).getClass();
                context.startActivity(MyLvActivity.Companion.b(MyLvActivity.s, context));
                function0.mo47invoke();
                break;
        }
        return Unit.f71739a;
    }
}
