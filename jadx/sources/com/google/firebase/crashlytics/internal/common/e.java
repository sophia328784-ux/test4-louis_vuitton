package com.google.firebase.crashlytics.internal.common;

import java.util.function.Predicate;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class e implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        c cVar = CrashlyticsController.r;
        return ((Integer) obj).intValue() != 0;
    }
}
