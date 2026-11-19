package androidx.work.impl.model;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"work-runtime_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class WorkSpecKt {
    public static final WorkGenerationalId a(WorkSpec workSpec) {
        workSpec.getClass();
        return new WorkGenerationalId(workSpec.f20510a, workSpec.t);
    }
}
