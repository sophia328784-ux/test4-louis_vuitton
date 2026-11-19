package com.batch.android.h;

import android.content.Context;
import com.batch.android.e.a0;
import com.batch.android.n.l;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class e extends a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f23448f = a0.q.concat("system.param.");
    private String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Context f23449e;

    public e(Context context, d dVar, a.InterfaceC0055a interfaceC0055a) {
        super(dVar, interfaceC0055a);
        this.f23449e = context;
    }

    private String e() {
        return f23448f.concat(this.f23435a.f23446b);
    }

    public String d() {
        return this.d;
    }

    public boolean f() {
        this.d = l.a(this.f23449e).a(e(), (String) null);
        String str = this.f23436b.get();
        boolean zEquals = Objects.equals(str, this.d);
        boolean z = !zEquals;
        this.d = str;
        if (!zEquals) {
            l.a(this.f23449e).c(e(), this.d);
        }
        return z;
    }

    public e(Context context, d dVar, a.InterfaceC0055a interfaceC0055a, boolean z) {
        super(dVar, interfaceC0055a, z);
        this.f23449e = context;
    }
}
