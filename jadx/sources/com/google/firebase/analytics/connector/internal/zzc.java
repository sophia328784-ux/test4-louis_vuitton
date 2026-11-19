package com.google.firebase.analytics.connector.internal;

import com.appsflyer.sdk_base.referrer.Payload;
import com.google.android.gms.measurement.internal.zzjo;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.ObjectArrays;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ImmutableSet f34367a = ImmutableSet.x("_in", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", "campaign_details", "_ug", "_iapx", "_exp_set", "_exp_clear", "_exp_activate", "_exp_timeout", "_exp_expire");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ImmutableList f34368b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ImmutableList f34369c;
    public static final ImmutableList d;

    static {
        Object[] objArr = {"_e", "_f", "_iap", "_s", "_au", "_ui", "_cd"};
        ObjectArrays.a(7, objArr);
        f34368b = ImmutableList.q(7, objArr);
        Object[] objArr2 = {"auto", Payload.TYPE_APP, "am"};
        ObjectArrays.a(3, objArr2);
        f34369c = ImmutableList.q(3, objArr2);
        d = ImmutableList.D("_r", "_dbg");
        ImmutableList.Builder builder = new ImmutableList.Builder();
        builder.i(zzjo.f31863a);
        builder.i(zzjo.f31864b);
        builder.j();
        ImmutableList.D("^_ltv_[A-Z]{3}$", "^_cc[1-5]{1}$");
    }
}
