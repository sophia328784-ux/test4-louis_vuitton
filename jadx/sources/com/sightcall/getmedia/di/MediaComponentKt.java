package com.sightcall.getmedia.di;

import com.sightcall.core.InitSightcallKt;
import java.lang.ref.WeakReference;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\b\u0010\u0006\u001a\u00020\u0002H\u0002\"\u0014\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u000e¢\u0006\u0002\n\u0000\"\u0011\u0010\u0003\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"mediaComponentReference", "Ljava/lang/ref/WeakReference;", "Lcom/sightcall/getmedia/di/MediaComponent;", "mediaComponent", "getMediaComponent", "()Lcom/sightcall/getmedia/di/MediaComponent;", "newMediaComponentInstance", "GetMedia_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class MediaComponentKt {
    private static WeakReference<MediaComponent> mediaComponentReference = new WeakReference<>(null);

    public static final MediaComponent getMediaComponent() {
        MediaComponent mediaComponent = mediaComponentReference.get();
        if (mediaComponent != null) {
            return mediaComponent;
        }
        MediaComponent mediaComponentNewMediaComponentInstance = newMediaComponentInstance();
        mediaComponentReference = new WeakReference<>(mediaComponentNewMediaComponentInstance);
        return mediaComponentNewMediaComponentInstance;
    }

    private static final MediaComponent newMediaComponentInstance() {
        MediaComponent mediaComponentBuild = DaggerMediaComponent.builder().sightCallComponent(InitSightcallKt.getSightCallComponent()).build();
        mediaComponentBuild.getClass();
        return mediaComponentBuild;
    }
}
