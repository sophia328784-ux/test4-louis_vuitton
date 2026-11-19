package com.perfectcorp.common.downloader;

import com.github.druk.dnssd.DNSSD;
import com.networkbench.agent.impl.background.NBSApplicationStateMonitor;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.perfectcorp.common.utility.CapacityUnit;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.al;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import defpackage.fc;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f39184e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f39185f = (int) CapacityUnit.MBS.b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile List f39186a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile List f39187b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicInteger f39188c;
    public final AtomicInteger d;

    public a() {
        bz bzVar = ImmutableList.f42200c;
        Integer numValueOf = Integer.valueOf(HarvestConfiguration.SLOW_START_THRESHOLD);
        Object[] objArr = {numValueOf, 6000, 21000};
        al.a.d(3, objArr);
        this.f39186a = ImmutableList.s(3, objArr);
        Object[] objArr2 = {numValueOf, Integer.valueOf(NBSApplicationStateMonitor.ALTERNATEPERIOD), Integer.valueOf(DNSSD.DNSSD_DEFAULT_TIMEOUT)};
        al.a.d(3, objArr2);
        this.f39187b = ImmutableList.s(3, objArr2);
        this.f39188c = new AtomicInteger(0);
        this.d = new AtomicInteger(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int a(int i2, List list) {
        bz bzVarListIterator = ((ImmutableList) list).listIterator(0);
        while (bzVarListIterator.hasNext()) {
            Integer num = (Integer) bzVarListIterator.next();
            if (num.intValue() > i2) {
                return num.intValue();
            }
        }
        return ((Integer) fc.e(1, list)).intValue();
    }
}
