package com.networkbench.agent.impl.instrumentation;

import android.os.Looper;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.data.type.r;
import com.networkbench.agent.impl.util.ak;
import defpackage.d21;
import defpackage.n00;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentSkipListSet;

/* JADX INFO: loaded from: classes2.dex */
public class NBSUnit {
    private static final int MAX_CHILD_COUNT = 100;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected static final e f37377b = f.a();
    public String className;
    public long threadId;
    public String threadName;
    public long entryTimestamp = 0;
    public long exitTimestamp = 0;
    public boolean isComplete = false;
    public boolean isRootUnit = false;
    public boolean shouldPushPop = false;
    public UUID parentUUID = null;
    public String metricName = "";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected volatile Set<UUID> f37378a = new ConcurrentSkipListSet();
    public UUID myUUID = new UUID(ak.a().nextLong(), ak.a().nextLong());
    public r unitType = r.OTHER_UNIT;

    public NBSUnit() {
        this.threadId = 0L;
        this.threadName = "main";
        this.threadId = Thread.currentThread().getId();
        this.threadName = Thread.currentThread().getName();
    }

    public void addChild(NBSUnit nBSUnit) {
        if (isUnitCanAdd(this.f37378a.size(), 100)) {
            this.f37378a.add(nBSUnit.myUUID);
            return;
        }
        f37377b.f("children size is too large, skip add child uuid:" + nBSUnit.myUUID);
    }

    public long calcDurationWithEndStamp(NBSUnit nBSUnit) {
        return Math.abs(this.exitTimestamp - nBSUnit.exitTimestamp);
    }

    public void complete() {
        this.exitTimestamp = System.currentTimeMillis();
        this.isComplete = true;
    }

    public Set<UUID> getChildren() {
        return this.f37378a;
    }

    public long getDuration() {
        long j2 = this.exitTimestamp - this.entryTimestamp;
        if (j2 > 0) {
            return j2;
        }
        return 0L;
    }

    public boolean ifEqualsMetricName(String str) {
        return this.className.equals(str.split("#")[0]);
    }

    public boolean isComplete() {
        return this.isComplete;
    }

    public boolean isUnitCanAdd(int i2, int i3) {
        if (i2 < i3) {
            return true;
        }
        r rVar = this.unitType;
        return (rVar == r.OTHER_UNIT || rVar == r.UNIT_TYPE_FOR_NETWORK || rVar == r.OPERATE_ACTION_ROOT_UNIT) ? false : true;
    }

    public void setUnitThreadWithUIThread() {
        try {
            this.threadId = Looper.getMainLooper().getThread().getId();
            this.threadName = Looper.getMainLooper().getThread().getName();
        } catch (Throwable th) {
            d21.C(th, new StringBuilder("unit get thread error: "), f37377b);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NBSUnit{hashCode =");
        sb.append(hashCode());
        sb.append("entryTimestamp=");
        sb.append(this.entryTimestamp);
        sb.append(", exitTimestamp=");
        sb.append(this.exitTimestamp);
        sb.append(", metricName='");
        sb.append(this.metricName);
        sb.append("', children=");
        sb.append(this.f37378a);
        sb.append(", isComplete=");
        sb.append(this.isComplete);
        sb.append(", parentUUID=");
        sb.append(this.parentUUID);
        sb.append(", myUUID=");
        sb.append(this.myUUID);
        sb.append(", threadId=");
        sb.append(this.threadId);
        sb.append(", threadName='");
        return n00.r(this.threadName, "'}", sb);
    }
}
