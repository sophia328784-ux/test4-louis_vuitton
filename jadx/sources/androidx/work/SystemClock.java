package androidx.work;

/* JADX INFO: loaded from: classes.dex */
public class SystemClock implements Clock {
    @Override // androidx.work.Clock
    public final long a() {
        return System.currentTimeMillis();
    }
}
