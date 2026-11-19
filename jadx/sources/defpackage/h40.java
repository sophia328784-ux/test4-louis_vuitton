package defpackage;

import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class h40 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69591b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f69592c;
    public final /* synthetic */ double d;

    public /* synthetic */ h40(boolean z, double d, int i2) {
        this.f69591b = i2;
        this.f69592c = z;
        this.d = d;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f69591b;
        double d = this.d;
        boolean z = this.f69592c;
        int iIntValue = ((Integer) obj).intValue();
        switch (i2) {
            case 0:
                return Integer.valueOf(z ? (int) (((double) iIntValue) * d) : -((int) (((double) iIntValue) * d)));
            case 1:
                return Integer.valueOf(z ? (int) (((double) iIntValue) * d) : -((int) (((double) iIntValue) * d)));
            case 2:
                return Integer.valueOf(z ? (int) (((double) iIntValue) * d) : -((int) (((double) iIntValue) * d)));
            default:
                return Integer.valueOf(z ? (int) (((double) iIntValue) * d) : -((int) (((double) iIntValue) * d)));
        }
    }
}
