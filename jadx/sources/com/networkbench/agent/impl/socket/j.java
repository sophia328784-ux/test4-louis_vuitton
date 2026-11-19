package com.networkbench.agent.impl.socket;

import android.text.TextUtils;
import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import defpackage.pq0;

/* JADX INFO: loaded from: classes2.dex */
public class j {
    private static final com.networkbench.agent.impl.c.e d = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f38188a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f38189b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f38190c = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f38191e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private NBSTransactionState f38192f;

    private void b(int i2) {
        if (this.f38192f == null || TextUtils.isEmpty(this.f38190c)) {
            return;
        }
        d.a("begin set transaction first remain time");
        this.f38192f.setFirstPacketPeriod(this.f38191e);
        this.f38192f.setRemainPackage(i2);
    }

    public void a(NBSTransactionState nBSTransactionState) {
        if (nBSTransactionState == null) {
            d.a("transactionState == null aaaaaaaa");
        }
        this.f38192f = nBSTransactionState;
    }

    public void c(long j2) {
        long j3 = this.f38189b;
        if (j2 <= j3) {
            com.networkbench.agent.impl.c.e eVar = d;
            StringBuilder sbQ = pq0.q(j2, "get first package firstReadTime:", ", lastWriteStamp:");
            sbQ.append(this.f38189b);
            sbQ.append(", hostName:");
            sbQ.append(this.f38190c);
            eVar.a(sbQ.toString());
            return;
        }
        if (j2 - j3 < com.networkbench.agent.impl.util.r.x) {
            if (!this.f38188a) {
                this.f38188a = true;
                this.f38191e = (int) (j2 - j3);
            }
            b(j2);
            return;
        }
        com.networkbench.agent.impl.c.e eVar2 = d;
        StringBuilder sbQ2 = pq0.q(j2, "first package is too big, firstReadTime:", ", lastWriteStamp:");
        sbQ2.append(this.f38189b);
        sbQ2.append(", hostName:");
        sbQ2.append(this.f38190c);
        eVar2.f(sbQ2.toString());
    }

    public void a(String str) {
        if (str == null) {
            return;
        }
        this.f38190c = str;
    }

    public void a(boolean z) {
        this.f38188a = z;
    }

    public NBSTransactionState a() {
        return this.f38192f;
    }

    public void a(int i2) {
        NBSTransactionState nBSTransactionState = this.f38192f;
        if (nBSTransactionState != null) {
            nBSTransactionState.setTcpHandShakeTime(i2);
        }
    }

    public void a(long j2) {
        this.f38189b = j2;
        this.f38188a = false;
    }

    public void b(long j2) {
        long j3 = j2 - this.f38189b;
        int i2 = this.f38191e;
        int i3 = (int) (j3 - ((long) i2));
        r.a(this.f38190c, i2, i3 > 0 ? i3 : 0);
        if (i3 <= 0) {
            i3 = 0;
        }
        b(i3);
    }
}
