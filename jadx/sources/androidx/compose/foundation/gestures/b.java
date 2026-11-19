package androidx.compose.foundation.gestures;

import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelResult;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4835b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Channel f4836c;

    public /* synthetic */ b(Channel channel, int i2) {
        this.f4835b = i2;
        this.f4836c = channel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f4835b;
        Channel channel = this.f4836c;
        switch (i2) {
            case 0:
                return (MouseWheelScrollingLogic.MouseWheelScrollDelta) ChannelResult.a(channel.f());
            default:
                return (TrackpadScrollingLogic.TrackpadScrollDelta) ChannelResult.a(channel.f());
        }
    }
}
