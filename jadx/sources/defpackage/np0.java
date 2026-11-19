package defpackage;

import androidx.navigation.NavHostController;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class np0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76584b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NavHostController f76585c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ np0(NavHostController navHostController, Function0 function0, int i2) {
        this.f76584b = i2;
        this.f76585c = navHostController;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f76584b) {
            case 0:
                if (!this.f76585c.e()) {
                    this.d.mo47invoke();
                }
                break;
            default:
                if (!this.f76585c.e()) {
                    this.d.mo47invoke();
                }
                break;
        }
        return Unit.f71739a;
    }
}
