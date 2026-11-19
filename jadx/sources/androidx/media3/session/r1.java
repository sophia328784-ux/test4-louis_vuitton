package androidx.media3.session;

import androidx.media3.common.AudioAttributes;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.Consumer;
import com.google.common.collect.ImmutableList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r1 implements MediaSessionStub.SessionTask, Consumer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17900b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f17901c;
    public final /* synthetic */ Object d;

    public /* synthetic */ r1(Object obj, boolean z, int i2) {
        this.f17900b = i2;
        this.d = obj;
        this.f17901c = z;
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        AudioAttributes audioAttributes = (AudioAttributes) this.d;
        int i2 = MediaSessionStub.p;
        ((PlayerWrapper) obj).p0(audioAttributes, this.f17901c);
    }

    @Override // androidx.media3.session.MediaSessionStub.SessionTask
    public Object c(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i2) {
        int i3 = this.f17900b;
        boolean z = this.f17901c;
        Object obj = this.d;
        switch (i3) {
            case 0:
                int i4 = MediaSessionStub.p;
                return mediaSessionImpl.t(controllerInfo, ImmutableList.A((MediaItem) obj), z ? -1 : mediaSessionImpl.u.v(), z ? -9223372036854775807L : mediaSessionImpl.u.getCurrentPosition());
            default:
                List list = (List) obj;
                int i5 = MediaSessionStub.p;
                return mediaSessionImpl.t(controllerInfo, list, z ? -1 : mediaSessionImpl.u.v(), z ? -9223372036854775807L : mediaSessionImpl.u.getCurrentPosition());
        }
    }
}
