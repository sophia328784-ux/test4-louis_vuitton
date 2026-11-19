package defpackage;

import androidx.compose.foundation.text.KeyboardActionScope;
import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.focus.FocusManager;
import com.vuitton.android.presentation.screen.certificates.components.CertificateFormField;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.text.Regex;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class we implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80844b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FocusManager f80845c;

    public /* synthetic */ we(FocusManager focusManager, int i2) {
        this.f80844b = i2;
        this.f80845c = focusManager;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f80844b;
        FocusManager focusManager = this.f80845c;
        switch (i2) {
            case 0:
                focusManager.z(false);
                break;
            case 1:
                focusManager.z(false);
                break;
            case 2:
                Regex regex = CertificateFormField.l;
                ((KeyboardActionScope) obj).getClass();
                focusManager.z(false);
                break;
            case 3:
                Regex regex2 = CertificateFormField.l;
                ((KeyboardActionScope) obj).getClass();
                FocusDirection.f8731b.getClass();
                focusManager.e(FocusDirection.f8735h);
                break;
            case 4:
                focusManager.z(false);
                break;
            case 5:
                focusManager.z(false);
                break;
            case 6:
                focusManager.z(false);
                break;
            case 7:
                focusManager.z(false);
                break;
            default:
                focusManager.z(false);
                break;
        }
        return Unit.f71739a;
    }
}
