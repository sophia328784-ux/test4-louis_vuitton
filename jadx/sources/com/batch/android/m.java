package com.batch.android;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class m implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f23687b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f23688c;
    public final /* synthetic */ Object d;

    public /* synthetic */ m(String str, int i2, Object obj) {
        this.f23687b = i2;
        this.d = obj;
        this.f23688c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f23687b) {
            case 0:
                ((BatchInboxFetcher.OnNewNotificationsFetchedListener) this.d).onFetchFailure(this.f23688c);
                break;
            default:
                ((BatchInboxFetcher.OnNextPageFetchedListener) this.d).onFetchFailure(this.f23688c);
                break;
        }
    }
}
