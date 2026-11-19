package androidx.work.impl;

import android.text.TextUtils;
import androidx.work.ExistingWorkPolicy;
import androidx.work.Logger;
import androidx.work.Operation;
import androidx.work.OperationKt;
import androidx.work.WorkContinuation;
import androidx.work.WorkRequest;
import defpackage.k61;
import defpackage.md;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class WorkContinuationImpl extends WorkContinuation {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f20330j = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WorkManagerImpl f20331a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f20332b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ExistingWorkPolicy f20333c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f20334e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f20335f;
    public final List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f20336h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Operation f20337i;

    static {
        Logger.b("WorkContinuationImpl");
    }

    public WorkContinuationImpl(WorkManagerImpl workManagerImpl, String str, ExistingWorkPolicy existingWorkPolicy, List<? extends WorkRequest> list, List<WorkContinuationImpl> list2) {
        this.f20331a = workManagerImpl;
        this.f20332b = str;
        this.f20333c = existingWorkPolicy;
        this.d = list;
        this.g = list2;
        this.f20334e = new ArrayList(list.size());
        this.f20335f = new ArrayList();
        if (list2 != null) {
            Iterator<WorkContinuationImpl> it = list2.iterator();
            while (it.hasNext()) {
                this.f20335f.addAll(it.next().f20335f);
            }
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (existingWorkPolicy == ExistingWorkPolicy.REPLACE && list.get(i2).f20282b.u != Long.MAX_VALUE) {
                md.n("Next Schedule Time Override must be used with ExistingPeriodicWorkPolicyUPDATE (preferably) or KEEP");
                throw null;
            }
            String string = list.get(i2).f20281a.toString();
            string.getClass();
            this.f20334e.add(string);
            this.f20335f.add(string);
        }
    }

    public static boolean b(WorkContinuationImpl workContinuationImpl, HashSet hashSet) {
        hashSet.addAll(workContinuationImpl.f20334e);
        HashSet hashSetC = c(workContinuationImpl);
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            if (hashSetC.contains((String) it.next())) {
                return true;
            }
        }
        List list = workContinuationImpl.g;
        if (list != null && !list.isEmpty()) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                if (b((WorkContinuationImpl) it2.next(), hashSet)) {
                    return true;
                }
            }
        }
        hashSet.removeAll(workContinuationImpl.f20334e);
        return false;
    }

    public static HashSet c(WorkContinuationImpl workContinuationImpl) {
        HashSet hashSet = new HashSet();
        List list = workContinuationImpl.g;
        if (list != null && !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                hashSet.addAll(((WorkContinuationImpl) it.next()).f20334e);
            }
        }
        return hashSet;
    }

    public final Operation a() {
        if (this.f20336h) {
            Logger loggerA = Logger.a();
            TextUtils.join(", ", this.f20334e);
            loggerA.getClass();
        } else {
            WorkManagerImpl workManagerImpl = this.f20331a;
            this.f20337i = OperationKt.a(workManagerImpl.f20344c.n, "EnqueueRunnable_" + this.f20333c.name(), workManagerImpl.f20345e.c(), new k61(this, 6));
        }
        return this.f20337i;
    }

    public WorkContinuationImpl(WorkManagerImpl workManagerImpl, String str, ExistingWorkPolicy existingWorkPolicy, List<? extends WorkRequest> list) {
        this(workManagerImpl, str, existingWorkPolicy, list, null);
    }

    public WorkContinuationImpl(WorkManagerImpl workManagerImpl, List<? extends WorkRequest> list) {
        this(workManagerImpl, null, ExistingWorkPolicy.KEEP, list, null);
    }
}
