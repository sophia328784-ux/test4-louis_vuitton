package defpackage;

import androidx.compose.ui.focus.FocusManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ve implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80560b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FocusManager f80561c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ ve(FocusManager focusManager, Function0 function0) {
        this.f80560b = 3;
        this.d = function0;
        this.f80561c = focusManager;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f80560b) {
            case 0:
                this.f80561c.z(false);
                this.d.mo47invoke();
                break;
            case 1:
                this.f80561c.z(false);
                this.d.mo47invoke();
                break;
            case 2:
                this.f80561c.z(false);
                this.d.mo47invoke();
                break;
            default:
                this.d.mo47invoke();
                this.f80561c.z(false);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ ve(FocusManager focusManager, Function0 function0, int i2) {
        this.f80560b = i2;
        this.f80561c = focusManager;
        this.d = function0;
    }
}
