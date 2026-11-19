package defpackage;

import androidx.compose.foundation.text.KeyboardActionScope;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class eu implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68948b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SoftwareKeyboardController f68949c;

    public /* synthetic */ eu(SoftwareKeyboardController softwareKeyboardController, int i2) {
        this.f68948b = i2;
        this.f68949c = softwareKeyboardController;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f68948b;
        SoftwareKeyboardController softwareKeyboardController = this.f68949c;
        switch (i2) {
            case 0:
                ((KeyboardActionScope) obj).getClass();
                if (softwareKeyboardController != null) {
                    softwareKeyboardController.b();
                }
                break;
            case 1:
                ((KeyboardActionScope) obj).getClass();
                if (softwareKeyboardController != null) {
                    softwareKeyboardController.b();
                }
                break;
            case 2:
                ((KeyboardActionScope) obj).getClass();
                if (softwareKeyboardController != null) {
                    softwareKeyboardController.b();
                }
                break;
            default:
                if (!((Boolean) obj).booleanValue() && softwareKeyboardController != null) {
                    softwareKeyboardController.b();
                }
                break;
        }
        return Unit.f71739a;
    }
}
