package androidx.compose.runtime.tooling;

import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/tooling/ComposeStackTrace;", "", "", "Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;", "frames", "", "hasSourceInformation", "<init>", "(Ljava/util/List;Z)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ComposeStackTrace {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f8551a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f8552b;

    public ComposeStackTrace(List<ComposeStackTraceFrame> list, boolean z) {
        this.f8551a = list;
        this.f8552b = z;
    }
}
