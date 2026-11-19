package androidx.work.impl.workers;

import androidx.work.Logger;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkNameDao;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.model.WorkTagDao;
import defpackage.pq0;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"work-runtime_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class DiagnosticsWorkerKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f20570a = 0;

    static {
        Logger.b("DiagnosticsWrkr");
    }

    public static final String a(WorkNameDao workNameDao, WorkTagDao workTagDao, SystemIdInfoDao systemIdInfoDao, List list) {
        StringBuilder sb = new StringBuilder("\n Id \t Class Name\t Job Id\t State\t Unique Name\t Tags\t");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            WorkSpec workSpec = (WorkSpec) it.next();
            WorkGenerationalId workGenerationalIdA = WorkSpecKt.a(workSpec);
            String str = workSpec.f20510a;
            SystemIdInfo systemIdInfoB = systemIdInfoDao.b(workGenerationalIdA);
            Integer numValueOf = systemIdInfoB != null ? Integer.valueOf(systemIdInfoB.f20495c) : null;
            String strK = CollectionsKt.K(workNameDao.b(str), ",", null, null, null, 62);
            String strK2 = CollectionsKt.K(workTagDao.a(str), ",", null, null, null, 62);
            StringBuilder sbR = pq0.r("\n", str, "\t ");
            sbR.append(workSpec.f20512c);
            sbR.append("\t ");
            sbR.append(numValueOf);
            sbR.append("\t ");
            sbR.append(workSpec.f20511b.name());
            sbR.append("\t ");
            sbR.append(strK);
            sbR.append("\t ");
            sbR.append(strK2);
            sbR.append('\t');
            sb.append(sbR.toString());
        }
        return sb.toString();
    }
}
