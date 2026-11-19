package defpackage;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ky implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75894b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f75895c;
    public final /* synthetic */ boolean d;

    public /* synthetic */ ky(Function1 function1, boolean z, int i2) {
        this.f75894b = i2;
        this.f75895c = function1;
        this.d = z;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f75894b;
        boolean z = this.d;
        Function1 function1 = this.f75895c;
        switch (i2) {
            case 0:
                function1.invoke(Boolean.valueOf(z));
                break;
            case 1:
                function1.invoke(Boolean.valueOf(!z));
                break;
            case 2:
                function1.invoke(Boolean.valueOf(!z));
                break;
            case 3:
                function1.invoke(Boolean.valueOf(!z));
                break;
            default:
                function1.invoke(Boolean.valueOf(z));
                break;
        }
        return Unit.f71739a;
    }
}
