package defpackage;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class x90 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81068b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AtomicBoolean f81069c;

    public /* synthetic */ x90(AtomicBoolean atomicBoolean, int i2) {
        this.f81068b = i2;
        this.f81069c = atomicBoolean;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f81068b;
        AtomicBoolean atomicBoolean = this.f81069c;
        switch (i2) {
            case 0:
                atomicBoolean.set(true);
                break;
            default:
                atomicBoolean.set(true);
                break;
        }
    }
}
