package defpackage;

import android.content.Context;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.pdp.PdpActivity;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.SearchBottomBarKt;
import com.vuitton.android.presentation.screen.plp.models.plp.PlpSectionUiModel;
import com.vuitton.android.presentation.screen.plp.models.plp.ProductListUiModelKt;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import com.vuitton.android.presentation.utils.SemanticUtils;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class qk0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79103b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f79104c;
    public final /* synthetic */ String d;

    public /* synthetic */ qk0(Context context, String str, int i2) {
        this.f79103b = i2;
        this.f79104c = context;
        this.d = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f79103b;
        String str = this.d;
        Context context = this.f79104c;
        switch (i2) {
            case 0:
                PlpSectionUiModel plpSectionUiModel = (PlpSectionUiModel) obj;
                plpSectionUiModel.getClass();
                String strB = ProductListUiModelKt.b(plpSectionUiModel);
                if (strB != null) {
                    PdpActivity.Companion companion = PdpActivity.D;
                    Context context2 = this.f79104c;
                    context2.startActivity(PdpActivity.Companion.a(companion, context2, strB, false, null, null, this.d, false, 92));
                }
                break;
            case 1:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                float f2 = SearchBottomBarKt.f62854a;
                semanticsPropertyReceiver.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver, 0);
                SemanticsPropertiesKt.i(semanticsPropertyReceiver, context.getString(R.string.search_placeholder) + " : " + str);
                break;
            default:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                float f3 = ThankYouScreenKt.f65243a;
                semanticsPropertyReceiver2.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver2, SemanticUtils.a(context, str));
                break;
        }
        return Unit.f71739a;
    }
}
