package defpackage;

import androidx.activity.compose.ManagedActivityResultLauncher;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class qn0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79121b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f79122c;
    public final /* synthetic */ ManagedActivityResultLauncher d;

    public /* synthetic */ qn0(Function1 function1, ManagedActivityResultLauncher managedActivityResultLauncher, int i2) {
        this.f79121b = i2;
        this.f79122c = function1;
        this.d = managedActivityResultLauncher;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f79121b) {
            case 0:
                this.f79122c.invoke(this.d);
                break;
            case 1:
                this.f79122c.invoke(this.d);
                break;
            case 2:
                this.f79122c.invoke(this.d);
                break;
            default:
                this.f79122c.invoke(this.d);
                break;
        }
        return Unit.f71739a;
    }
}
