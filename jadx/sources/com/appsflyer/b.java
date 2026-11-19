package com.appsflyer;

import defpackage.c61;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f22593b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f22594c;

    public /* synthetic */ b(Function1 function1, int i2) {
        this.f22593b = i2;
        this.f22594c = function1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Function1 function1;
        int i2 = this.f22593b;
        Function1 function2 = this.f22594c;
        switch (i2) {
            case 0:
            case 1:
            case 2:
            default:
                function1 = (a) function2;
                break;
            case 3:
                function1 = (c) function2;
                break;
            case 4:
                function1 = (c61) function2;
                break;
        }
        AFLogger.unregisterClient(function1);
    }
}
