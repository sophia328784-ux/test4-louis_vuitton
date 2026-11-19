package androidx.media3.exoplayer.audio;

import android.media.AudioDeviceInfo;
import android.media.AudioRouting;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15034b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AudioTrackAudioOutput.OnRoutingChangedListenerApi24 f15035c;
    public final /* synthetic */ Object d;

    public /* synthetic */ b(AudioTrackAudioOutput.OnRoutingChangedListenerApi24 onRoutingChangedListenerApi24, Object obj, int i2) {
        this.f15034b = i2;
        this.f15035c = onRoutingChangedListenerApi24;
        this.d = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f15034b;
        Object obj = this.d;
        AudioTrackAudioOutput.OnRoutingChangedListenerApi24 onRoutingChangedListenerApi24 = this.f15035c;
        switch (i2) {
            case 0:
                AudioDeviceInfo routedDevice = ((AudioRouting) obj).getRoutedDevice();
                if (routedDevice != null) {
                    onRoutingChangedListenerApi24.f14955c.post(new b(onRoutingChangedListenerApi24, routedDevice, 1));
                }
                break;
            default:
                AudioDeviceInfo audioDeviceInfo = (AudioDeviceInfo) obj;
                if (onRoutingChangedListenerApi24.d != null) {
                    onRoutingChangedListenerApi24.f14954b.b(audioDeviceInfo);
                    break;
                }
                break;
        }
    }
}
