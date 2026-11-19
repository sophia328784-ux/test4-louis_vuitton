package com.google.firebase.crashlytics.internal.common;

import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class c implements FilenameFilter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f34580a;

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        switch (this.f34580a) {
            case 0:
                c cVar = CrashlyticsController.r;
                return str.startsWith(".ae");
            default:
                c cVar2 = CrashlyticsController.r;
                Object[] objArr = {"trigger-type-anomaly", "trigger-type-oom"};
                ArrayList arrayList = new ArrayList(2);
                for (int i2 = 0; i2 < 2; i2++) {
                    Object obj = objArr[i2];
                    Objects.requireNonNull(obj);
                    arrayList.add(obj);
                }
                return Collections.unmodifiableList(arrayList).contains(str);
        }
    }
}
