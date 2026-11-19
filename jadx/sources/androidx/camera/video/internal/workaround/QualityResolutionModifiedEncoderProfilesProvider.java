package androidx.camera.video.internal.workaround;

import android.util.Size;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.core.impl.Quirks;
import androidx.camera.video.internal.compat.quirk.StretchedVideoResolutionQuirk;
import com.sightcall.uvc.Camera;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes.dex */
public class QualityResolutionModifiedEncoderProfilesProvider implements EncoderProfilesProvider {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EncoderProfilesProvider f3111c;
    public final Quirks d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap f3112e = new HashMap();

    public QualityResolutionModifiedEncoderProfilesProvider(EncoderProfilesProvider encoderProfilesProvider, Quirks quirks) {
        this.f3111c = encoderProfilesProvider;
        this.d = quirks;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public final boolean a(int i2) {
        return this.f3111c.a(i2) && c(i2) != null;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public final EncoderProfilesProxy b(int i2) {
        return c(i2);
    }

    public final EncoderProfilesProxy c(int i2) {
        Size size;
        Integer numValueOf = Integer.valueOf(i2);
        HashMap map = this.f3112e;
        if (map.containsKey(numValueOf)) {
            return (EncoderProfilesProxy) map.get(Integer.valueOf(i2));
        }
        EncoderProfilesProvider encoderProfilesProvider = this.f3111c;
        EncoderProfilesProxy encoderProfilesProxyE = null;
        if (encoderProfilesProvider.a(i2)) {
            EncoderProfilesProxy encoderProfilesProxyB = encoderProfilesProvider.b(i2);
            Objects.requireNonNull(encoderProfilesProxyB);
            Iterator it = this.d.c(StretchedVideoResolutionQuirk.class).iterator();
            while (true) {
                if (it.hasNext()) {
                    if (((StretchedVideoResolutionQuirk) it.next()) != null) {
                        if (i2 == 4) {
                            size = new Size(Camera.DEFAULT_PREVIEW_WIDTH, Camera.DEFAULT_PREVIEW_HEIGHT);
                            break;
                        }
                        if (i2 == 5) {
                            size = new Size(960, Sink.Video.MAX_DIMENSION_LOW);
                            break;
                        }
                        if (i2 == 6) {
                            size = new Size(1440, Sink.Screenshare.MAX_DIMENSION_LOW);
                            break;
                        }
                        break;
                    }
                }
                size = null;
                break;
            }
            if (size == null) {
                encoderProfilesProxyE = encoderProfilesProxyB;
            } else {
                ArrayList arrayList = new ArrayList();
                for (EncoderProfilesProxy.VideoProfileProxy videoProfileProxy : encoderProfilesProxyB.b()) {
                    arrayList.add(EncoderProfilesProxy.VideoProfileProxy.a(videoProfileProxy.e(), videoProfileProxy.i(), videoProfileProxy.c(), videoProfileProxy.f(), size.getWidth(), size.getHeight(), videoProfileProxy.j(), videoProfileProxy.b(), videoProfileProxy.d(), videoProfileProxy.g()));
                }
                if (!arrayList.isEmpty()) {
                    encoderProfilesProxyE = EncoderProfilesProxy.ImmutableEncoderProfilesProxy.e(encoderProfilesProxyB.d(), arrayList, encoderProfilesProxyB.a(), encoderProfilesProxyB.c());
                }
            }
        }
        map.put(Integer.valueOf(i2), encoderProfilesProxyE);
        return encoderProfilesProxyE;
    }
}
