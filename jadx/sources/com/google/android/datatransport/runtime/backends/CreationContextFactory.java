package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import com.google.android.datatransport.runtime.time.Clock;

/* JADX INFO: loaded from: classes2.dex */
class CreationContextFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f27999a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Clock f28000b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Clock f28001c;

    public CreationContextFactory(Context context, Clock clock, Clock clock2) {
        this.f27999a = context;
        this.f28000b = clock;
        this.f28001c = clock2;
    }
}
