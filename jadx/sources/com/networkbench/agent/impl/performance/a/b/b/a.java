package com.networkbench.agent.impl.performance.a.b.b;

import android.os.SystemClock;
import com.sightcall.livetranslation.data.LiveTranslationEntity;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c f37646a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f37647b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f37648c;

    public a(c cVar) {
        this.f37646a = cVar;
    }

    private void b() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j2 = this.f37648c;
        if (j2 == 0 || jElapsedRealtime - j2 >= LiveTranslationEntity.DefaultSentenceTimeOut) {
            this.f37648c = jElapsedRealtime;
            this.f37647b = true;
        }
    }

    public final boolean a() {
        b();
        return this.f37647b;
    }
}
