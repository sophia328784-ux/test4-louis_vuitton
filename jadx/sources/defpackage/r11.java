package defpackage;

import androidx.compose.ui.focus.FocusManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class r11 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79223b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FocusManager f79224c;

    public /* synthetic */ r11(FocusManager focusManager, int i2) {
        this.f79223b = i2;
        this.f79224c = focusManager;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f79223b;
        FocusManager focusManager = this.f79224c;
        switch (i2) {
            case 0:
                focusManager.z(false);
                break;
            case 1:
                focusManager.z(false);
                break;
            default:
                focusManager.z(false);
                break;
        }
        return Unit.f71739a;
    }
}
