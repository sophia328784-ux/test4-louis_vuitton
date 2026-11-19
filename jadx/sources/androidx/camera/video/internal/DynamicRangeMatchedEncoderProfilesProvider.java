package androidx.camera.video.internal;

import androidx.camera.core.DynamicRange;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.video.internal.utils.DynamicRangeUtil;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class DynamicRangeMatchedEncoderProfilesProvider implements EncoderProfilesProvider {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EncoderProfilesProvider f2882c;
    public final DynamicRange d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap f2883e = new HashMap();

    public DynamicRangeMatchedEncoderProfilesProvider(EncoderProfilesProvider encoderProfilesProvider, DynamicRange dynamicRange) {
        this.f2882c = encoderProfilesProvider;
        this.d = dynamicRange;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public final boolean a(int i2) {
        return this.f2882c.a(i2) && c(i2) != null;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public final EncoderProfilesProxy b(int i2) {
        return c(i2);
    }

    public final EncoderProfilesProxy c(int i2) {
        Integer numValueOf = Integer.valueOf(i2);
        HashMap map = this.f2883e;
        if (map.containsKey(numValueOf)) {
            return (EncoderProfilesProxy) map.get(Integer.valueOf(i2));
        }
        EncoderProfilesProvider encoderProfilesProvider = this.f2882c;
        EncoderProfilesProxy.ImmutableEncoderProfilesProxy immutableEncoderProfilesProxyE = null;
        if (encoderProfilesProvider.a(i2)) {
            EncoderProfilesProxy encoderProfilesProxyB = encoderProfilesProvider.b(i2);
            if (encoderProfilesProxyB != null) {
                ArrayList arrayList = new ArrayList();
                for (EncoderProfilesProxy.VideoProfileProxy videoProfileProxy : encoderProfilesProxyB.b()) {
                    if (DynamicRangeUtil.a(videoProfileProxy, this.d)) {
                        arrayList.add(videoProfileProxy);
                    }
                }
                if (!arrayList.isEmpty()) {
                    immutableEncoderProfilesProxyE = EncoderProfilesProxy.ImmutableEncoderProfilesProxy.e(encoderProfilesProxyB.d(), arrayList, encoderProfilesProxyB.a(), encoderProfilesProxyB.c());
                }
            }
            map.put(Integer.valueOf(i2), immutableEncoderProfilesProxyE);
        }
        return immutableEncoderProfilesProxyE;
    }
}
