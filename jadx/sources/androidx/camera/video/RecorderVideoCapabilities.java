package androidx.camera.video;

import android.util.Size;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.internal.utils.SizeUtil;
import androidx.camera.video.internal.BackupHdrProfileEncoderProfilesProvider;
import androidx.camera.video.internal.DynamicRangeMatchedEncoderProfilesProvider;
import androidx.camera.video.internal.VideoValidatedEncoderProfilesProxy;
import androidx.camera.video.internal.compat.quirk.DeviceQuirks;
import androidx.camera.video.internal.encoder.VideoEncoderInfoImpl;
import androidx.camera.video.internal.workaround.DefaultEncoderProfilesProvider;
import androidx.camera.video.internal.workaround.QualityAddedEncoderProfilesProvider;
import androidx.camera.video.internal.workaround.QualityResolutionModifiedEncoderProfilesProvider;
import androidx.camera.video.internal.workaround.QualityValidatedEncoderProfilesProvider;
import androidx.core.util.Preconditions;
import defpackage.md;
import defpackage.n51;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public class RecorderVideoCapabilities implements VideoCapabilities {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EncoderProfilesProvider f2819b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2820c;
    public final HashMap d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap f2821e;

    public RecorderVideoCapabilities(CameraInfoInternal cameraInfoInternal, int i2) {
        n51 n51Var = VideoEncoderInfoImpl.f3078c;
        this.d = new HashMap();
        this.f2821e = new HashMap();
        int i3 = i2 == 2 ? 2 : 1;
        this.f2820c = i3;
        EncoderProfilesProvider encoderProfilesProviderU = cameraInfoInternal.u();
        if (i3 != 2) {
            if (new ArrayList(new CapabilitiesByQuality(encoderProfilesProviderU, i3).f2754a.keySet()).isEmpty()) {
                Logger.c(5, "RecorderVideoCapabilities");
                encoderProfilesProviderU = new DefaultEncoderProfilesProvider(cameraInfoInternal, Arrays.asList(Quality.f2768c, Quality.f2767b, Quality.f2766a), n51Var);
            }
            Quirks quirks = DeviceQuirks.f2947a;
            EncoderProfilesProvider qualityResolutionModifiedEncoderProfilesProvider = new QualityResolutionModifiedEncoderProfilesProvider(new QualityAddedEncoderProfilesProvider(encoderProfilesProviderU, quirks, cameraInfoInternal, n51Var), quirks);
            for (DynamicRange dynamicRange : cameraInfoInternal.a()) {
                Integer numValueOf = Integer.valueOf(dynamicRange.f1918a);
                int i4 = dynamicRange.f1919b;
                if (numValueOf.equals(3) && i4 == 10) {
                    qualityResolutionModifiedEncoderProfilesProvider = new BackupHdrProfileEncoderProfilesProvider(qualityResolutionModifiedEncoderProfilesProvider, n51Var);
                    break;
                }
            }
            encoderProfilesProviderU = new QualityValidatedEncoderProfilesProvider(qualityResolutionModifiedEncoderProfilesProvider, cameraInfoInternal, quirks);
        } else if (!cameraInfoInternal.q()) {
            encoderProfilesProviderU = EncoderProfilesProvider.f2297a;
        }
        this.f2819b = encoderProfilesProviderU;
        for (DynamicRange dynamicRange2 : cameraInfoInternal.a()) {
            CapabilitiesByQuality capabilitiesByQuality = new CapabilitiesByQuality(new DynamicRangeMatchedEncoderProfilesProvider(this.f2819b, dynamicRange2), this.f2820c);
            if (!new ArrayList(capabilitiesByQuality.f2754a.keySet()).isEmpty()) {
                this.d.put(dynamicRange2, capabilitiesByQuality);
            }
        }
        cameraInfoInternal.n();
    }

    @Override // androidx.camera.video.VideoCapabilities
    public final Set a() {
        return this.d.keySet();
    }

    @Override // androidx.camera.video.VideoCapabilities
    public final VideoValidatedEncoderProfilesProxy b(Size size, DynamicRange dynamicRange) {
        Object value;
        CapabilitiesByQuality capabilitiesByQualityE = e(dynamicRange);
        if (capabilitiesByQualityE == null) {
            return null;
        }
        TreeMap treeMap = capabilitiesByQualityE.f2755b;
        Size size2 = SizeUtil.f2515a;
        Map.Entry entryCeilingEntry = treeMap.ceilingEntry(size);
        if (entryCeilingEntry != null) {
            value = entryCeilingEntry.getValue();
        } else {
            Map.Entry entryFloorEntry = treeMap.floorEntry(size);
            value = entryFloorEntry != null ? entryFloorEntry.getValue() : null;
        }
        Quality quality = (Quality) value;
        if (quality == null) {
            quality = Quality.g;
        }
        Objects.toString(quality);
        Objects.toString(size);
        Logger.c(3, "CapabilitiesByQuality");
        if (quality == Quality.g) {
            return null;
        }
        VideoValidatedEncoderProfilesProxy videoValidatedEncoderProfilesProxyA = capabilitiesByQualityE.a(quality);
        if (videoValidatedEncoderProfilesProxyA != null) {
            return videoValidatedEncoderProfilesProxyA;
        }
        md.h("Camera advertised available quality but did not produce EncoderProfiles for advertised quality.");
        return null;
    }

    @Override // androidx.camera.video.VideoCapabilities
    public final ArrayList c(DynamicRange dynamicRange) {
        CapabilitiesByQuality capabilitiesByQualityE = e(dynamicRange);
        return capabilitiesByQualityE == null ? new ArrayList() : new ArrayList(capabilitiesByQualityE.f2754a.keySet());
    }

    @Override // androidx.camera.video.VideoCapabilities
    public final VideoValidatedEncoderProfilesProxy d(Quality quality, DynamicRange dynamicRange) {
        CapabilitiesByQuality capabilitiesByQualityE = e(dynamicRange);
        if (capabilitiesByQualityE == null) {
            return null;
        }
        return capabilitiesByQualityE.a(quality);
    }

    public final CapabilitiesByQuality e(DynamicRange dynamicRange) {
        Object next;
        boolean zContains;
        boolean zB = dynamicRange.b();
        HashMap map = this.d;
        if (zB) {
            return (CapabilitiesByQuality) map.get(dynamicRange);
        }
        HashMap map2 = this.f2821e;
        if (map2.containsKey(dynamicRange)) {
            return (CapabilitiesByQuality) map2.get(dynamicRange);
        }
        Set setKeySet = map.keySet();
        setKeySet.getClass();
        if (dynamicRange.b()) {
            zContains = setKeySet.contains(dynamicRange);
        } else {
            Iterator it = setKeySet.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                DynamicRange dynamicRange2 = (DynamicRange) next;
                Preconditions.f("Fully specified range is not actually fully specified.", dynamicRange2.b());
                int i2 = dynamicRange.f1919b;
                if (i2 == 0 || i2 == dynamicRange2.f1919b) {
                    Preconditions.f("Fully specified range is not actually fully specified.", dynamicRange2.b());
                    int i3 = dynamicRange.f1918a;
                    if (i3 != 0) {
                        int i4 = dynamicRange2.f1918a;
                        if ((i3 == 2 && i4 != 1) || i3 == i4) {
                            break;
                        }
                    } else {
                        break;
                    }
                }
            }
            zContains = next != null;
        }
        CapabilitiesByQuality capabilitiesByQuality = zContains ? new CapabilitiesByQuality(new DynamicRangeMatchedEncoderProfilesProvider(this.f2819b, dynamicRange), this.f2820c) : null;
        map2.put(dynamicRange, capabilitiesByQuality);
        return capabilitiesByQuality;
    }
}
