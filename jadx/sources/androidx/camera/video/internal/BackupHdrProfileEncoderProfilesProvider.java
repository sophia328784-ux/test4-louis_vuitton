package androidx.camera.video.internal;

import android.util.Rational;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.video.internal.encoder.VideoEncoderInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class BackupHdrProfileEncoderProfilesProvider implements EncoderProfilesProvider {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EncoderProfilesProvider f2880c;
    public final VideoEncoderInfo.Finder d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap f2881e = new HashMap();

    public BackupHdrProfileEncoderProfilesProvider(EncoderProfilesProvider encoderProfilesProvider, VideoEncoderInfo.Finder finder) {
        this.f2880c = encoderProfilesProvider;
        this.d = finder;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public final boolean a(int i2) {
        return this.f2880c.a(i2) && c(i2) != null;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public final EncoderProfilesProxy b(int i2) {
        return c(i2);
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00d1  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v11, types: [androidx.camera.core.impl.EncoderProfilesProxy, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v8 */
    public final EncoderProfilesProxy c(int i2) {
        EncoderProfilesProxy.VideoProfileProxy videoProfileProxy;
        int iDoubleValue;
        EncoderProfilesProxy.VideoProfileProxy videoProfileProxy2;
        EncoderProfilesProxy.VideoProfileProxy videoProfileProxyA;
        ?? E;
        Integer numValueOf = Integer.valueOf(i2);
        HashMap map = this.f2881e;
        if (map.containsKey(numValueOf)) {
            return (EncoderProfilesProxy) map.get(Integer.valueOf(i2));
        }
        EncoderProfilesProvider encoderProfilesProvider = this.f2880c;
        if (!encoderProfilesProvider.a(i2)) {
            return null;
        }
        EncoderProfilesProxy encoderProfilesProxyB = encoderProfilesProvider.b(i2);
        if (encoderProfilesProxyB == null) {
            E = 0;
        } else {
            ArrayList arrayList = new ArrayList(encoderProfilesProxyB.b());
            Iterator it = encoderProfilesProxyB.b().iterator();
            do {
                if (!it.hasNext()) {
                    videoProfileProxy = null;
                    break;
                }
                videoProfileProxy = (EncoderProfilesProxy.VideoProfileProxy) it.next();
            } while (videoProfileProxy.g() != 0);
            if (videoProfileProxy == null) {
                videoProfileProxyA = null;
                videoProfileProxy2 = null;
            } else {
                int iE = videoProfileProxy.e();
                String strI = videoProfileProxy.i();
                int iJ = videoProfileProxy.j();
                if (1 != videoProfileProxy.g()) {
                    iE = 5;
                    strI = "video/hevc";
                    iJ = 2;
                }
                String str = strI;
                int i3 = iJ;
                int iC = videoProfileProxy.c();
                int iB = videoProfileProxy.b();
                if (10 == iB) {
                    iDoubleValue = iC;
                } else {
                    iDoubleValue = (int) (new Rational(10, iB).doubleValue() * ((double) iC));
                    if (Logger.c(3, "BackupHdrProfileEncoderProfilesProvider")) {
                        videoProfileProxy2 = null;
                        String.format("Base Bitrate(%dbps) * Bit Depth Ratio (%d / %d) = %d", Integer.valueOf(iC), 10, Integer.valueOf(iB), Integer.valueOf(iDoubleValue));
                        Logger.c(3, "BackupHdrProfileEncoderProfilesProvider");
                    }
                    videoProfileProxyA = EncoderProfilesProxy.VideoProfileProxy.a(iE, str, iDoubleValue, videoProfileProxy.f(), videoProfileProxy.l(), videoProfileProxy.h(), i3, 10, videoProfileProxy.d(), 1);
                }
                videoProfileProxy2 = null;
                videoProfileProxyA = EncoderProfilesProxy.VideoProfileProxy.a(iE, str, iDoubleValue, videoProfileProxy.f(), videoProfileProxy.l(), videoProfileProxy.h(), i3, 10, videoProfileProxy.d(), 1);
            }
            if (videoProfileProxyA == null) {
                videoProfileProxyA = videoProfileProxy2;
            } else {
                VideoEncoderInfo videoEncoderInfoFind = this.d.find(videoProfileProxyA.i());
                if (videoEncoderInfoFind == null || !videoEncoderInfoFind.e(videoProfileProxyA.l(), videoProfileProxyA.h())) {
                    videoProfileProxyA = videoProfileProxy2;
                } else {
                    int iC2 = videoProfileProxyA.c();
                    int iIntValue = ((Integer) videoEncoderInfoFind.g().clamp(Integer.valueOf(iC2))).intValue();
                    if (iIntValue != iC2) {
                        videoProfileProxyA = EncoderProfilesProxy.VideoProfileProxy.a(videoProfileProxyA.e(), videoProfileProxyA.i(), iIntValue, videoProfileProxyA.f(), videoProfileProxyA.l(), videoProfileProxyA.h(), videoProfileProxyA.j(), videoProfileProxyA.b(), videoProfileProxyA.d(), videoProfileProxyA.g());
                    }
                }
            }
            if (videoProfileProxyA != null) {
                arrayList.add(videoProfileProxyA);
            }
            if (arrayList.isEmpty()) {
                E = videoProfileProxy2;
            } else {
                E = EncoderProfilesProxy.ImmutableEncoderProfilesProxy.e(encoderProfilesProxyB.d(), arrayList, encoderProfilesProxyB.a(), encoderProfilesProxyB.c());
            }
        }
        map.put(Integer.valueOf(i2), E);
        return E;
    }
}
