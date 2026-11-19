package com.batch.android.f0;

import com.batch.android.h0.e;
import com.batch.android.json.JSONObject;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public abstract class c implements Serializable {
    private static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f23286b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f23287c;
    public JSONObject d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public a f23288e = a.UNKNOWN;

    /* JADX INFO: loaded from: classes2.dex */
    public enum a {
        UNKNOWN,
        LANDING,
        LOCAL,
        INBOX_LANDING
    }

    public c(String str) {
        this.f23286b = str;
    }

    public boolean a() {
        if (this instanceof com.batch.android.h0.b) {
            return true;
        }
        return (this instanceof com.batch.android.g0.a) && ((com.batch.android.g0.a) this).o();
    }

    public boolean b() {
        return this instanceof com.batch.android.g0.a;
    }

    public boolean c() {
        return this instanceof e;
    }
}
