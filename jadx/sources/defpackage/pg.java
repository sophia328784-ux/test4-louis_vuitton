package defpackage;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class pg implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78849b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f78850c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f78851e;

    public /* synthetic */ pg(boolean z, Function0 function0, Function0 function1, int i2) {
        this.f78849b = i2;
        this.f78850c = z;
        this.d = function0;
        this.f78851e = function1;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f78849b;
        Function0 function0 = this.f78851e;
        Function0 function1 = this.d;
        boolean z = this.f78850c;
        switch (i2) {
            case 0:
                if (z) {
                    function1.mo47invoke();
                } else {
                    function0.mo47invoke();
                }
                return Unit.f71739a;
            case 1:
                if (z) {
                    function1.mo47invoke();
                } else {
                    function0.mo47invoke();
                }
                return Boolean.TRUE;
            default:
                if (z) {
                    function1.mo47invoke();
                } else {
                    function0.mo47invoke();
                }
                return Unit.f71739a;
        }
    }
}
