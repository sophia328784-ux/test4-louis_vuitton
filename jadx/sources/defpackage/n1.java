package defpackage;

import androidx.compose.ui.platform.SoftwareKeyboardController;
import com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionSearchBarKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class n1 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76412b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SoftwareKeyboardController f76413c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ n1(SoftwareKeyboardController softwareKeyboardController, Function0 function0, int i2) {
        this.f76412b = i2;
        this.f76413c = softwareKeyboardController;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f76412b;
        Function0 function0 = this.d;
        SoftwareKeyboardController softwareKeyboardController = this.f76413c;
        switch (i2) {
            case 0:
                float f2 = AICompanionSearchBarKt.f52815a;
                if (softwareKeyboardController != null) {
                    softwareKeyboardController.b();
                }
                function0.mo47invoke();
                break;
            case 1:
                if (softwareKeyboardController != null) {
                    softwareKeyboardController.b();
                }
                function0.mo47invoke();
                break;
            case 2:
                if (softwareKeyboardController != null) {
                    softwareKeyboardController.b();
                }
                function0.mo47invoke();
                break;
            default:
                if (softwareKeyboardController != null) {
                    softwareKeyboardController.b();
                }
                function0.mo47invoke();
                break;
        }
        return Unit.f71739a;
    }
}
