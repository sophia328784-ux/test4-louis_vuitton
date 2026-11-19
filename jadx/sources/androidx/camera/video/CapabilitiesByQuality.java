package androidx.camera.video;

import androidx.camera.core.Logger;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.core.impl.utils.CompareSizesByArea;
import androidx.camera.video.internal.VideoValidatedEncoderProfilesProxy;
import androidx.core.util.Preconditions;
import defpackage.md;
import defpackage.pq0;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Objects;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public class CapabilitiesByQuality {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f2754a = new LinkedHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TreeMap f2755b = new TreeMap(new CompareSizesByArea());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final VideoValidatedEncoderProfilesProxy f2756c;
    public final VideoValidatedEncoderProfilesProxy d;

    public CapabilitiesByQuality(EncoderProfilesProvider encoderProfilesProvider, int i2) {
        int iD;
        Quality quality = Quality.f2766a;
        Iterator it = new ArrayList(Quality.f2772i).iterator();
        while (true) {
            if (!it.hasNext()) {
                if (this.f2754a.isEmpty()) {
                    Logger.a("CapabilitiesByQuality");
                    this.d = null;
                    this.f2756c = null;
                    return;
                } else {
                    ArrayDeque arrayDeque = new ArrayDeque(this.f2754a.values());
                    this.f2756c = (VideoValidatedEncoderProfilesProxy) arrayDeque.peekFirst();
                    this.d = (VideoValidatedEncoderProfilesProxy) arrayDeque.peekLast();
                    return;
                }
            }
            Quality quality2 = (Quality) it.next();
            Preconditions.f("Currently only support ConstantQuality", quality2 instanceof Quality.ConstantQuality);
            Quality.ConstantQuality constantQuality = (Quality.ConstantQuality) quality2;
            if (i2 == 1) {
                iD = constantQuality.d();
            } else {
                if (i2 != 2) {
                    constantQuality.getClass();
                    md.h(pq0.k(i2, "Unknown quality source: "));
                    throw null;
                }
                iD = constantQuality.a();
            }
            EncoderProfilesProxy encoderProfilesProxyB = encoderProfilesProvider.b(iD);
            if (encoderProfilesProxyB != null) {
                encoderProfilesProxyB.toString();
                Logger.c(3, "CapabilitiesByQuality");
                VideoValidatedEncoderProfilesProxy videoValidatedEncoderProfilesProxyE = encoderProfilesProxyB.b().isEmpty() ? null : VideoValidatedEncoderProfilesProxy.e(encoderProfilesProxyB);
                if (videoValidatedEncoderProfilesProxyE == null) {
                    Objects.toString(quality2);
                    Logger.c(5, "CapabilitiesByQuality");
                } else {
                    this.f2755b.put(videoValidatedEncoderProfilesProxyE.g().k(), quality2);
                    this.f2754a.put(quality2, videoValidatedEncoderProfilesProxyE);
                }
            }
        }
    }

    public final VideoValidatedEncoderProfilesProxy a(Quality quality) {
        Preconditions.b(Quality.f2771h.contains(quality), "Unknown quality: " + quality);
        if (quality == Quality.f2770f) {
            return this.f2756c;
        }
        return quality == Quality.f2769e ? this.d : (VideoValidatedEncoderProfilesProxy) this.f2754a.get(quality);
    }
}
