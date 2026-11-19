package defpackage;

import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class u3 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80215b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f80216c;
    public final /* synthetic */ String d;

    public /* synthetic */ u3(String str, String str2, int i2) {
        this.f80215b = i2;
        this.f80216c = str;
        this.d = str2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f80215b;
        String str = this.d;
        String str2 = this.f80216c;
        SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
        switch (i2) {
            case 0:
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver, str2 + str);
                break;
            case 1:
                semanticsPropertyReceiver.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver, 0);
                SemanticsPropertiesKt.i(semanticsPropertyReceiver, str2);
                SemanticsPropertiesKt.r(semanticsPropertyReceiver, str);
                break;
            case 2:
                SemanticsPropertiesKt.i(semanticsPropertyReceiver, str2 + ", " + str);
                break;
            case 3:
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.t(semanticsPropertyReceiver, new AnnotatedString(tr.h(str2, " ", str), null, 2, null));
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver, 0);
                break;
            default:
                semanticsPropertyReceiver.getClass();
                if (str2 == null) {
                    str2 = "";
                }
                SemanticsPropertiesKt.i(semanticsPropertyReceiver, str2);
                if (str != null) {
                    SemanticsPropertiesKt.s(semanticsPropertyReceiver, str);
                }
                break;
        }
        return Unit.f71739a;
    }
}
