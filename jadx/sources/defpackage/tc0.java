package defpackage;

import androidx.media3.common.util.Consumer;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSourceEventListener;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class tc0 implements Consumer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80036b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaSourceEventListener.EventDispatcher f80037c;
    public final /* synthetic */ LoadEventInfo d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MediaLoadData f80038e;

    public /* synthetic */ tc0(MediaSourceEventListener.EventDispatcher eventDispatcher, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, int i2) {
        this.f80036b = i2;
        this.f80037c = eventDispatcher;
        this.d = loadEventInfo;
        this.f80038e = mediaLoadData;
    }

    @Override // androidx.media3.common.util.Consumer
    public final void accept(Object obj) {
        int i2 = this.f80036b;
        MediaLoadData mediaLoadData = this.f80038e;
        LoadEventInfo loadEventInfo = this.d;
        MediaSourceEventListener.EventDispatcher eventDispatcher = this.f80037c;
        MediaSourceEventListener mediaSourceEventListener = (MediaSourceEventListener) obj;
        switch (i2) {
            case 0:
                mediaSourceEventListener.j0(eventDispatcher.f15520a, eventDispatcher.f15521b, loadEventInfo, mediaLoadData);
                break;
            default:
                mediaSourceEventListener.b0(eventDispatcher.f15520a, eventDispatcher.f15521b, loadEventInfo, mediaLoadData);
                break;
        }
    }
}
