package defpackage;

import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsProperties_androidKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import com.vuitton.android.presentation.screen.personalselections.list.models.PersonalSelectionsListTrackingUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class hd0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69684b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f69685c;
    public final /* synthetic */ Function1 d;

    public /* synthetic */ hd0(String str, Function1 function1) {
        this.f69684b = 2;
        this.d = function1;
        this.f69685c = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f69684b;
        String str = this.f69685c;
        Function1 function1 = this.d;
        switch (i2) {
            case 0:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.s(semanticsPropertyReceiver, str);
                SemanticsProperties_androidKt.a(semanticsPropertyReceiver);
                function1.invoke(semanticsPropertyReceiver);
                break;
            case 1:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                SemanticsPropertiesKt.s(semanticsPropertyReceiver2, str);
                SemanticsProperties_androidKt.a(semanticsPropertyReceiver2);
                function1.invoke(semanticsPropertyReceiver2);
                break;
            default:
                function1.invoke(new PersonalSelectionsListTrackingUiModel.ScrollPercentageReachedEvent(str, ((Integer) obj).intValue()));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ hd0(int i2, String str, Function1 function1) {
        this.f69684b = i2;
        this.f69685c = str;
        this.d = function1;
    }
}
