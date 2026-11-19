package androidx.camera.video.internal.workaround;

import android.os.Build;
import android.util.Range;
import android.util.Size;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.internal.utils.SizeUtil;
import androidx.camera.video.VideoSpec;
import androidx.camera.video.internal.compat.quirk.ExtraSupportedQualityQuirk;
import androidx.camera.video.internal.config.VideoConfigUtil;
import androidx.camera.video.internal.encoder.VideoEncoderInfo;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class QualityAddedEncoderProfilesProvider implements EncoderProfilesProvider {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EncoderProfilesProvider f3110c;
    public final HashMap d;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.util.HashMap] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    public QualityAddedEncoderProfilesProvider(EncoderProfilesProvider encoderProfilesProvider, Quirks quirks, CameraInfoInternal cameraInfoInternal, VideoEncoderInfo.Finder finder) {
        this.f3110c = encoderProfilesProvider;
        ArrayList arrayListC = quirks.c(ExtraSupportedQualityQuirk.class);
        if (arrayListC.isEmpty()) {
            return;
        }
        ?? map = 0;
        map = 0;
        map = 0;
        Preconditions.f(null, arrayListC.size() == 1);
        ((ExtraSupportedQualityQuirk) arrayListC.get(0)).getClass();
        if (!"motorola".equalsIgnoreCase(Build.BRAND) || !"moto c".equalsIgnoreCase(Build.MODEL)) {
            map = Collections.EMPTY_MAP;
        } else if ("1".equals(cameraInfoInternal.b()) && !encoderProfilesProvider.a(4)) {
            EncoderProfilesProxy encoderProfilesProxyB = encoderProfilesProvider.b(1);
            EncoderProfilesProxy.VideoProfileProxy videoProfileProxy = (encoderProfilesProxyB == null || encoderProfilesProxyB.b().isEmpty()) ? null : (EncoderProfilesProxy.VideoProfileProxy) encoderProfilesProxyB.b().get(0);
            if (videoProfileProxy != null) {
                VideoEncoderInfo videoEncoderInfoFind = finder.find(videoProfileProxy.i());
                Range rangeG = videoEncoderInfoFind != null ? videoEncoderInfoFind.g() : VideoSpec.f2855a;
                Size size = SizeUtil.d;
                EncoderProfilesProxy.ImmutableEncoderProfilesProxy immutableEncoderProfilesProxyE = EncoderProfilesProxy.ImmutableEncoderProfilesProxy.e(encoderProfilesProxyB.d(), Collections.singletonList(EncoderProfilesProxy.VideoProfileProxy.a(videoProfileProxy.e(), videoProfileProxy.i(), VideoConfigUtil.d(videoProfileProxy.c(), videoProfileProxy.b(), videoProfileProxy.b(), videoProfileProxy.f(), videoProfileProxy.f(), size.getWidth(), videoProfileProxy.l(), size.getHeight(), videoProfileProxy.h(), rangeG), videoProfileProxy.f(), size.getWidth(), size.getHeight(), videoProfileProxy.j(), videoProfileProxy.b(), videoProfileProxy.d(), videoProfileProxy.g())), encoderProfilesProxyB.a(), encoderProfilesProxyB.c());
                map = new HashMap();
                map.put(4, immutableEncoderProfilesProxyE);
                Size sizeK = videoProfileProxy.k();
                if (size.getHeight() * size.getWidth() > sizeK.getHeight() * sizeK.getWidth()) {
                    map.put(1, immutableEncoderProfilesProxyE);
                }
            }
        }
        if (map != 0) {
            this.d = new HashMap((Map) map);
        }
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public final boolean a(int i2) {
        return c(i2) != null;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public final EncoderProfilesProxy b(int i2) {
        return c(i2);
    }

    public final EncoderProfilesProxy c(int i2) {
        HashMap map = this.d;
        return (map == null || !map.containsKey(Integer.valueOf(i2))) ? this.f3110c.b(i2) : (EncoderProfilesProxy) map.get(Integer.valueOf(i2));
    }
}
