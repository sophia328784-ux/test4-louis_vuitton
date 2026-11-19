package com.perfectcorp.perfectlib.makeupcam.camera;

import com.perfectcorp.perfectlib.core.BaseVenus;
import com.perfectcorp.perfectlib.jniproxy.UIMakeupJNI;

/* JADX INFO: loaded from: classes3.dex */
public interface Decoder {

    public static final class ApngDecoder extends VenusDecoder {
        public final boolean a(int i2) {
            BaseVenus baseVenus = this.f40603a;
            return UIMakeupJNI.CUIMakeupLive_StopDecodeApng(baseVenus.f40398a, baseVenus, i2);
        }
    }

    public static abstract class VenusDecoder implements Decoder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final BaseVenus f40603a;

        public VenusDecoder(BaseVenus baseVenus) {
            this.f40603a = baseVenus;
        }
    }
}
