package com.google.firebase.concurrent;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class e implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f34460b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DelegatingScheduledExecutorService f34461c;
    public final /* synthetic */ Runnable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ DelegatingScheduledFuture.AnonymousClass1 f34462e;

    public /* synthetic */ e(DelegatingScheduledExecutorService delegatingScheduledExecutorService, Runnable runnable, DelegatingScheduledFuture.AnonymousClass1 anonymousClass1, int i2) {
        this.f34460b = i2;
        this.f34461c = delegatingScheduledExecutorService;
        this.d = runnable;
        this.f34462e = anonymousClass1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f34460b;
        final DelegatingScheduledFuture.AnonymousClass1 anonymousClass1 = this.f34462e;
        final Runnable runnable = this.d;
        DelegatingScheduledExecutorService delegatingScheduledExecutorService = this.f34461c;
        switch (i2) {
            case 0:
                final int i3 = 0;
                delegatingScheduledExecutorService.f34435b.execute(new Runnable() { // from class: com.google.firebase.concurrent.c
                    @Override // java.lang.Runnable
                    public final void run() throws Exception {
                        int i4 = i3;
                        DelegatingScheduledFuture.AnonymousClass1 anonymousClass2 = anonymousClass1;
                        Runnable runnable2 = runnable;
                        switch (i4) {
                            case 0:
                                try {
                                    runnable2.run();
                                    return;
                                } catch (Exception e2) {
                                    anonymousClass2.b(e2);
                                    throw e2;
                                }
                            case 1:
                                try {
                                    runnable2.run();
                                    return;
                                } catch (Exception e3) {
                                    anonymousClass2.b(e3);
                                    return;
                                }
                            default:
                                try {
                                    runnable2.run();
                                    anonymousClass2.a(null);
                                    return;
                                } catch (Exception e4) {
                                    anonymousClass2.b(e4);
                                    return;
                                }
                        }
                    }
                });
                break;
            case 1:
                final int i4 = 2;
                delegatingScheduledExecutorService.f34435b.execute(new Runnable() { // from class: com.google.firebase.concurrent.c
                    @Override // java.lang.Runnable
                    public final void run() throws Exception {
                        int i5 = i4;
                        DelegatingScheduledFuture.AnonymousClass1 anonymousClass2 = anonymousClass1;
                        Runnable runnable2 = runnable;
                        switch (i5) {
                            case 0:
                                try {
                                    runnable2.run();
                                    return;
                                } catch (Exception e2) {
                                    anonymousClass2.b(e2);
                                    throw e2;
                                }
                            case 1:
                                try {
                                    runnable2.run();
                                    return;
                                } catch (Exception e3) {
                                    anonymousClass2.b(e3);
                                    return;
                                }
                            default:
                                try {
                                    runnable2.run();
                                    anonymousClass2.a(null);
                                    return;
                                } catch (Exception e4) {
                                    anonymousClass2.b(e4);
                                    return;
                                }
                        }
                    }
                });
                break;
            default:
                final int i5 = 1;
                delegatingScheduledExecutorService.f34435b.execute(new Runnable() { // from class: com.google.firebase.concurrent.c
                    @Override // java.lang.Runnable
                    public final void run() throws Exception {
                        int i6 = i5;
                        DelegatingScheduledFuture.AnonymousClass1 anonymousClass2 = anonymousClass1;
                        Runnable runnable2 = runnable;
                        switch (i6) {
                            case 0:
                                try {
                                    runnable2.run();
                                    return;
                                } catch (Exception e2) {
                                    anonymousClass2.b(e2);
                                    throw e2;
                                }
                            case 1:
                                try {
                                    runnable2.run();
                                    return;
                                } catch (Exception e3) {
                                    anonymousClass2.b(e3);
                                    return;
                                }
                            default:
                                try {
                                    runnable2.run();
                                    anonymousClass2.a(null);
                                    return;
                                } catch (Exception e4) {
                                    anonymousClass2.b(e4);
                                    return;
                                }
                        }
                    }
                });
                break;
        }
    }
}
