package defpackage;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class v20 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80478b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f80479c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ v20(int i2, int i3, Function0 function0) {
        this.f80478b = i3;
        this.f80479c = i2;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f80478b;
        Function0 function0 = this.d;
        int i3 = this.f80479c;
        switch (i2) {
            case 0:
                if (i3 == 0 && function0 != null) {
                    function0.mo47invoke();
                }
                break;
            case 1:
                if (i3 == 0 && function0 != null) {
                    function0.mo47invoke();
                }
                break;
            default:
                if (i3 == 0 && function0 != null) {
                    function0.mo47invoke();
                }
                break;
        }
        return Unit.f71739a;
    }
}
