package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import com.google.android.datatransport.runtime.time.Clock;
import defpackage.n00;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_CreationContext extends CreationContext {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f27996a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Clock f27997b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Clock f27998c;
    public final String d;

    public AutoValue_CreationContext(Context context, Clock clock, Clock clock2, String str) {
        if (context == null) {
            r81.d("Null applicationContext");
            throw null;
        }
        this.f27996a = context;
        if (clock == null) {
            r81.d("Null wallClock");
            throw null;
        }
        this.f27997b = clock;
        if (clock2 == null) {
            r81.d("Null monotonicClock");
            throw null;
        }
        this.f27998c = clock2;
        if (str != null) {
            this.d = str;
        } else {
            r81.d("Null backendName");
            throw null;
        }
    }

    @Override // com.google.android.datatransport.runtime.backends.CreationContext
    public final Context a() {
        return this.f27996a;
    }

    @Override // com.google.android.datatransport.runtime.backends.CreationContext
    public final String b() {
        return this.d;
    }

    @Override // com.google.android.datatransport.runtime.backends.CreationContext
    public final Clock c() {
        return this.f27998c;
    }

    @Override // com.google.android.datatransport.runtime.backends.CreationContext
    public final Clock d() {
        return this.f27997b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CreationContext)) {
            return false;
        }
        CreationContext creationContext = (CreationContext) obj;
        return this.f27996a.equals(creationContext.a()) && this.f27997b.equals(creationContext.d()) && this.f27998c.equals(creationContext.c()) && this.d.equals(creationContext.b());
    }

    public final int hashCode() {
        return this.d.hashCode() ^ ((((((this.f27996a.hashCode() ^ 1000003) * 1000003) ^ this.f27997b.hashCode()) * 1000003) ^ this.f27998c.hashCode()) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CreationContext{applicationContext=");
        sb.append(this.f27996a);
        sb.append(", wallClock=");
        sb.append(this.f27997b);
        sb.append(", monotonicClock=");
        sb.append(this.f27998c);
        sb.append(", backendName=");
        return n00.r(this.d, "}", sb);
    }
}
