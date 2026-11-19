package androidx.work;

import android.os.Trace;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/work/ConfigurationKt$createDefaultTracer$tracer$1", "Landroidx/work/Tracer;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ConfigurationKt$createDefaultTracer$tracer$1 implements Tracer {
    @Override // androidx.work.Tracer
    public final void a(String str) {
        Trace.beginSection(androidx.tracing.Trace.b(str));
    }

    @Override // androidx.work.Tracer
    public final void b(int i2, String str) {
        str.getClass();
        Trace.endAsyncSection(androidx.tracing.Trace.b(str), i2);
    }

    @Override // androidx.work.Tracer
    public final void c() {
        Trace.endSection();
    }

    @Override // androidx.work.Tracer
    public final void d(int i2, String str) {
        str.getClass();
        Trace.beginAsyncSection(androidx.tracing.Trace.b(str), i2);
    }

    @Override // androidx.work.Tracer
    public final boolean isEnabled() {
        return androidx.tracing.Trace.a();
    }
}
