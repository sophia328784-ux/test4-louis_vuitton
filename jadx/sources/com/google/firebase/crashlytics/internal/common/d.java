package com.google.firebase.crashlytics.internal.common;

import java.io.File;
import java.util.function.Function;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class d implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        c cVar = CrashlyticsController.r;
        String name = ((File) obj).getName();
        name.getClass();
        if (name.equals("trigger-type-anomaly")) {
            return 8;
        }
        return !name.equals("trigger-type-oom") ? 0 : 7;
    }
}
