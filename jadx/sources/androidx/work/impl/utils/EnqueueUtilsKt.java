package androidx.work.impl.utils;

import androidx.work.Configuration;
import androidx.work.WorkRequest;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.WorkDatabase;
import defpackage.a;
import defpackage.fc;
import defpackage.md;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"work-runtime_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class EnqueueUtilsKt {
    public static final void a(WorkDatabase workDatabase, Configuration configuration, WorkContinuationImpl workContinuationImpl) {
        int i2;
        workDatabase.getClass();
        configuration.getClass();
        ArrayList arrayListU = CollectionsKt.U(workContinuationImpl);
        int i3 = 0;
        while (!arrayListU.isEmpty()) {
            WorkContinuationImpl workContinuationImpl2 = (WorkContinuationImpl) CollectionsKt.c0(arrayListU);
            List list = workContinuationImpl2.d;
            list.getClass();
            List list2 = list;
            if ((list2 instanceof Collection) && list2.isEmpty()) {
                i2 = 0;
            } else {
                Iterator it = list2.iterator();
                i2 = 0;
                while (it.hasNext()) {
                    if (!((WorkRequest) it.next()).f20282b.f20517j.f20232i.isEmpty() && (i2 = i2 + 1) < 0) {
                        CollectionsKt.s0();
                        throw null;
                    }
                }
            }
            i3 += i2;
            List list3 = workContinuationImpl2.g;
            if (list3 != null) {
                arrayListU.addAll(list3);
            }
        }
        if (i3 == 0) {
            return;
        }
        int iA = workDatabase.D().A();
        int i4 = configuration.f20213k;
        if (iA + i3 <= i4) {
            return;
        }
        md.n(a.i(i3, ".\nTo address this issue you can: \n1. enqueue less workers or batch some of workers with content uri triggers together;\n2. increase limit via Configuration.Builder.setContentUriTriggerWorkersLimit;\nPlease beware that workers with content uri triggers immediately occupy slots in JobScheduler so no updates to content uris are missed.", fc.p(i4, iA, "Too many workers with contentUriTriggers are enqueued:\ncontentUriTrigger workers limit: ", ";\nalready enqueued count: ", ";\ncurrent enqueue operation count: ")));
    }
}
