package com.google.android.gms.common.internal;

import java.util.Collections;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class zae {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Set f29223a;

    public zae(Set set) {
        Preconditions.h(set);
        this.f29223a = Collections.unmodifiableSet(set);
    }
}
