package com.sightcall.universal.media;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f43327b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f43328c;
    public final /* synthetic */ Object d;

    public /* synthetic */ a(Object obj, Object obj2, int i2) {
        this.f43327b = i2;
        this.f43328c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f43327b;
        Object obj = this.d;
        Object obj2 = this.f43328c;
        switch (i2) {
            case 0:
                ((GroupClient.GroupCallback) obj2).lambda$replayRequest$0((GroupClient.GroupCallback) obj);
                break;
            default:
                ((UploaderClient.UploaderCallback) obj2).lambda$replayRequest$0((UploaderClient.UploaderCallback) obj);
                break;
        }
    }
}
