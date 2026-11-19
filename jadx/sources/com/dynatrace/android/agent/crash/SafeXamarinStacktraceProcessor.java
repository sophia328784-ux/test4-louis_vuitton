package com.dynatrace.android.agent.crash;

import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.util.Utility;

/* JADX INFO: loaded from: classes2.dex */
class SafeXamarinStacktraceProcessor implements StacktraceProcessor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Throwable f27448a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f27449b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f27450c;

    static {
        boolean z = Global.f27307a;
    }

    public SafeXamarinStacktraceProcessor(Throwable th, String str, int i2) {
        this.f27448a = th;
        this.f27449b = str;
        this.f27450c = i2;
    }

    @Override // com.dynatrace.android.agent.crash.StacktraceProcessor
    public final StacktraceData a() {
        int i2 = this.f27450c;
        try {
            return new XamarinStacktraceProcessor(this.f27449b, i2).a();
        } catch (Exception unused) {
            if (Global.f27307a) {
                Utility.g();
            }
            return new JavaStacktraceProcessor(this.f27448a, i2).a();
        }
    }
}
