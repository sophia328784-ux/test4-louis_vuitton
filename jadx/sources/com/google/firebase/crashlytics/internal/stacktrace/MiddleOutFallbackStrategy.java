package com.google.firebase.crashlytics.internal.stacktrace;

/* JADX INFO: loaded from: classes2.dex */
public class MiddleOutFallbackStrategy implements StackTraceTrimmingStrategy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f35064a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StackTraceTrimmingStrategy[] f35065b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MiddleOutStrategy f35066c;

    public MiddleOutFallbackStrategy(int i2, StackTraceTrimmingStrategy... stackTraceTrimmingStrategyArr) {
        this.f35064a = i2;
        this.f35065b = stackTraceTrimmingStrategyArr;
        this.f35066c = new MiddleOutStrategy(i2);
    }

    @Override // com.google.firebase.crashlytics.internal.stacktrace.StackTraceTrimmingStrategy
    public final StackTraceElement[] a(StackTraceElement[] stackTraceElementArr) {
        int length = stackTraceElementArr.length;
        int i2 = this.f35064a;
        if (length <= i2) {
            return stackTraceElementArr;
        }
        StackTraceElement[] stackTraceElementArrA = stackTraceElementArr;
        for (StackTraceTrimmingStrategy stackTraceTrimmingStrategy : this.f35065b) {
            if (stackTraceElementArrA.length <= i2) {
                break;
            }
            stackTraceElementArrA = stackTraceTrimmingStrategy.a(stackTraceElementArr);
        }
        return stackTraceElementArrA.length > i2 ? this.f35066c.a(stackTraceElementArrA) : stackTraceElementArrA;
    }
}
