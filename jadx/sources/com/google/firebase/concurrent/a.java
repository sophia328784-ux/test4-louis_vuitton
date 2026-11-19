package com.google.firebase.concurrent;

import android.os.Process;
import android.os.StrictMode;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f34447b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f34448c;
    public final /* synthetic */ Object d;

    public /* synthetic */ a(Object obj, Object obj2, int i2) {
        this.f34447b = i2;
        this.f34448c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f34447b;
        Object obj = this.d;
        Object obj2 = this.f34448c;
        switch (i2) {
            case 0:
                CustomThreadFactory customThreadFactory = (CustomThreadFactory) obj2;
                Runnable runnable = (Runnable) obj;
                Process.setThreadPriority(customThreadFactory.d);
                StrictMode.ThreadPolicy threadPolicy = customThreadFactory.f34434e;
                if (threadPolicy != null) {
                    StrictMode.setThreadPolicy(threadPolicy);
                }
                runnable.run();
                break;
            default:
                DelegatingScheduledFuture.AnonymousClass1 anonymousClass1 = (DelegatingScheduledFuture.AnonymousClass1) obj;
                try {
                    anonymousClass1.a(((Callable) obj2).call());
                } catch (Exception e2) {
                    anonymousClass1.b(e2);
                }
                break;
        }
    }
}
