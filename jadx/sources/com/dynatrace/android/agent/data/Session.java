package com.dynatrace.android.agent.data;

import com.dynatrace.android.agent.AdkSettings;
import com.dynatrace.android.agent.Core;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.TimeLineProvider;
import com.dynatrace.android.agent.conf.PrivacyRules;
import com.dynatrace.android.agent.conf.RageTapConfiguration;
import com.dynatrace.android.agent.conf.ServerConfiguration;
import com.dynatrace.android.agent.conf.SessionSplitConfiguration;
import com.dynatrace.android.agent.util.Utility;
import java.util.Random;

/* JADX INFO: loaded from: classes2.dex */
public class Session {
    public static final RandomFactory m;
    public static volatile Session n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f27475a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f27476b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f27477c;
    public final Random g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile long f27480h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public PrivacyRules f27481i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final RageTapConfiguration f27482j;
    public int d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public SessionState f27478e = SessionState.CREATED;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f27483k = false;
    public volatile boolean l = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile int f27479f = 0;

    static {
        boolean z = Global.f27307a;
        m = new RandomFactory();
        n = null;
    }

    public Session(long j2, Random random, PrivacyRules privacyRules, RageTapConfiguration rageTapConfiguration) {
        this.f27475a = j2;
        this.f27480h = j2;
        this.g = random;
        this.f27481i = privacyRules;
        this.f27482j = rageTapConfiguration;
    }

    public static Session a() {
        return n != null ? n : i(PrivacyRules.f27382b);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0026  */
    public static Session b(long j2, boolean z) {
        Session sessionA = a();
        if (!z) {
            SessionSplitConfiguration sessionSplitConfiguration = AdkSettings.f27249k.g.f27411c;
            if ((((long) sessionSplitConfiguration.f27432b) * 1000) + sessionA.f27480h >= j2) {
                if ((((long) (sessionSplitConfiguration.f27431a * 60)) * 1000) + sessionA.f27475a < j2) {
                    Core.i(true, sessionA.f27481i, j2);
                    sessionA = n;
                }
            } else {
                Core.i(true, sessionA.f27481i, j2);
                sessionA = n;
            }
        }
        sessionA.f27480h = j2;
        return sessionA;
    }

    public static Session h(PrivacyRules privacyRules, long j2) {
        ServerConfiguration serverConfiguration = AdkSettings.f27249k.g;
        Session session = n;
        boolean z = session != null ? session.l : serverConfiguration.f27415i;
        m.getClass();
        n = new Session(j2, new Random(), privacyRules, serverConfiguration.f27413f);
        n.f27483k = z;
        n.l = z;
        return n;
    }

    public static Session i(PrivacyRules privacyRules) {
        if (n == null) {
            synchronized (Session.class) {
                try {
                    if (n == null) {
                        return h(privacyRules, TimeLineProvider.f27311c.a());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return n;
    }

    public final long c() {
        return TimeLineProvider.f27311c.a() - this.f27475a;
    }

    public final void d(ServerConfiguration serverConfiguration) {
        if (this.f27478e != SessionState.CREATED) {
            return;
        }
        int i2 = serverConfiguration.f27417k;
        int i3 = serverConfiguration.f27414h;
        boolean z = i2 > 0;
        if (!z && Global.f27307a) {
            Utility.n("Session disabled by overload prevention (mp=0)");
        }
        if (z) {
            boolean z2 = this.g.nextInt(100) < i3;
            if (!z2 && Global.f27307a) {
                Utility.n("Session disabled by traffic control: tc=" + i3);
            }
            z = z2;
        }
        this.f27478e = z ? SessionState.ENABLED : SessionState.DISABLED;
        this.d = i2;
    }

    public final boolean e() {
        return this.f27478e.a();
    }

    public final boolean f() {
        return this.f27478e.b();
    }

    public final boolean g() {
        return this.f27478e == SessionState.DISABLED;
    }

    public final synchronized void j(long j2) {
        if (j2 > this.f27480h) {
            this.f27480h = j2;
        }
    }
}
