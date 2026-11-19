package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Pair;
import android.util.SparseArray;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
final class zzhh extends zzjf {
    public static final Pair z = new Pair("", 0L);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SharedPreferences f31808c;
    public SharedPreferences d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public zzhf f31809e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final zzhe f31810f;
    public final zzhg g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f31811h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f31812i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f31813j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final zzhe f31814k;
    public final zzhc l;
    public final zzhg m;
    public final zzhd n;
    public final zzhc o;
    public final zzhe p;
    public final zzhe q;
    public boolean r;
    public final zzhc s;
    public final zzhc t;
    public final zzhe u;
    public final zzhg v;
    public final zzhg w;
    public final zzhe x;
    public final zzhd y;

    public zzhh(zzic zzicVar) {
        super(zzicVar);
        this.f31814k = new zzhe(this, "session_timeout", 1800000L);
        this.l = new zzhc(this, "start_new_session", true);
        this.p = new zzhe(this, "last_pause_time", 0L);
        this.q = new zzhe(this, "session_id", 0L);
        this.m = new zzhg(this, "non_personalized_ads", null);
        this.n = new zzhd(this, "last_received_uri_timestamps_by_source", null);
        this.o = new zzhc(this, "allow_remote_dynamite", false);
        this.f31810f = new zzhe(this, "first_open_time", 0L);
        new zzhe(this, "app_install_time", 0L);
        this.g = new zzhg(this, "app_instance_id", null);
        this.s = new zzhc(this, "app_backgrounded", false);
        this.t = new zzhc(this, "deep_link_retrieval_complete", false);
        this.u = new zzhe(this, "deep_link_retrieval_attempts", 0L);
        this.v = new zzhg(this, "firebase_feature_rollouts", null);
        this.w = new zzhg(this, "deferred_attribution_cache", null);
        this.x = new zzhe(this, "deferred_attribution_cache_timestamp", 0L);
        this.y = new zzhd(this, "default_event_parameters", null);
    }

    @Override // com.google.android.gms.measurement.internal.zzjf
    public final boolean h() {
        return true;
    }

    public final SharedPreferences k() {
        g();
        i();
        Preconditions.h(this.f31808c);
        return this.f31808c;
    }

    public final SharedPreferences l() {
        g();
        i();
        if (this.d == null) {
            zzic zzicVar = this.f31850a;
            String strValueOf = String.valueOf(zzicVar.f31838a.getPackageName());
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzgs zzgsVar = zzguVar.n;
            String strConcat = strValueOf.concat("_preferences");
            zzgsVar.b(strConcat, "Default prefs file");
            this.d = zzicVar.f31838a.getSharedPreferences(strConcat, 0);
        }
        return this.d;
    }

    public final SparseArray m() {
        Bundle bundleA = this.n.a();
        int[] intArray = bundleA.getIntArray("uriSources");
        long[] longArray = bundleA.getLongArray("uriTimestamps");
        if (intArray == null || longArray == null) {
            return new SparseArray();
        }
        if (intArray.length != longArray.length) {
            zzgu zzguVar = this.f31850a.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31769f.a("Trigger URI source and timestamp array lengths do not match");
            return new SparseArray();
        }
        SparseArray sparseArray = new SparseArray();
        for (int i2 = 0; i2 < intArray.length; i2++) {
            sparseArray.put(intArray[i2], Long.valueOf(longArray[i2]));
        }
        return sparseArray;
    }

    public final zzjl n() {
        g();
        return zzjl.c(k().getInt("consent_source", 100), k().getString("consent_settings", "G1"));
    }

    public final void o(boolean z2) {
        g();
        zzgu zzguVar = this.f31850a.f31842f;
        zzic.m(zzguVar);
        zzguVar.n.b(Boolean.valueOf(z2), "App measurement setting deferred collection");
        SharedPreferences.Editor editorEdit = k().edit();
        editorEdit.putBoolean("deferred_analytics_collection", z2);
        editorEdit.apply();
    }

    public final boolean p(long j2) {
        return j2 - this.f31814k.a() > this.p.a();
    }
}
