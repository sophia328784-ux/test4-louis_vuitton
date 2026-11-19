package com.perfectcorp.uma.countly;

import android.content.Context;
import defpackage.md;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile m f43242a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f43243b;

    public p(Context context) {
        if (context != null) {
            this.f43243b = context;
        } else {
            md.n("must provide valid context");
            throw null;
        }
    }

    public final m a() {
        if (this.f43242a == null) {
            synchronized (this) {
                try {
                    if (this.f43242a == null) {
                        this.f43242a = new m(this.f43243b);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f43242a;
    }

    public final synchronized void b(String str) {
        m mVarA = a();
        mVarA.getClass();
        try {
            m.b(mVarA.f43240b.getWritableDatabase(), "CONNECTION_TABLE", str);
        } catch (Exception e2) {
            com.perfectcorp.uma.b.d.a("CountlyDatabase", "[addConnection] Exception: " + e2.getMessage());
        }
    }

    public final synchronized ArrayList c() {
        ArrayList arrayListA;
        arrayListA = a().a();
        if (!arrayListA.isEmpty()) {
            m mVarA = a();
            mVarA.getClass();
            try {
                mVarA.f43240b.getWritableDatabase().delete("EVENT_TABLE", null, null);
            } catch (Exception e2) {
                com.perfectcorp.uma.b.d.d("CountlyDatabase", "[removeAll] EVENT_TABLE exception: " + e2.getMessage());
            }
        }
        return arrayListA;
    }
}
