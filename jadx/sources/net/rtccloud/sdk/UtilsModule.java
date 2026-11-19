package net.rtccloud.sdk;

import net.rtccloud.sdk.util.EncodingParameters;
import net.rtccloud.sdk.util.OldLogger;

/* JADX INFO: loaded from: classes4.dex */
public class UtilsModule {
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.ENGINE);
    private final Native nativeInterface;

    public interface Native {
        public static final Native JNI = new Native() { // from class: net.rtccloud.sdk.UtilsModule.Native.1
            @Override // net.rtccloud.sdk.UtilsModule.Native
            public int checkCloudConnection() {
                return Jni.nCheckCloudConnection();
            }

            @Override // net.rtccloud.sdk.UtilsModule.Native
            public boolean setDeadPartyTimeout(int i2) {
                return Jni.nSetDeadPartyTimeout(i2);
            }

            @Override // net.rtccloud.sdk.UtilsModule.Native
            public boolean setEnableLocalIce(int i2) {
                return Jni.nSetEnableLocalIce(i2);
            }

            @Override // net.rtccloud.sdk.UtilsModule.Native
            public boolean setEnableUSAPTURN(int i2) {
                return Jni.nSetEnableUSAPTURN(i2);
            }

            @Override // net.rtccloud.sdk.UtilsModule.Native
            public boolean setEncodingParameters(EncodingParameters.Video video) {
                return Jni.nSetVideoEncodingParameters(video.vp8CpuUsage(), video.threads(), video.noiseSensitivity() ? 1 : 0);
            }

            @Override // net.rtccloud.sdk.UtilsModule.Native
            public void swapFathers() {
                Jni.nSwapFathers();
            }

            @Override // net.rtccloud.sdk.UtilsModule.Native
            public boolean setEncodingParameters(EncodingParameters.Audio audio) {
                return Jni.nSetAudioEncodingParameters(audio.opusComplexity(), audio.opusBitrate());
            }
        };

        int checkCloudConnection();

        boolean setDeadPartyTimeout(int i2);

        boolean setEnableLocalIce(int i2);

        boolean setEnableUSAPTURN(int i2);

        boolean setEncodingParameters(EncodingParameters.Audio audio);

        boolean setEncodingParameters(EncodingParameters.Video video);

        void swapFathers();
    }

    public UtilsModule(Native r1) {
        this.nativeInterface = r1;
    }

    public int checkCloudConnection() {
        log.d("checkCloudConnection()");
        return this.nativeInterface.checkCloudConnection();
    }

    public void setDeadPartyTimeout(int i2) {
        log.d("setDeadPartyTimeout(timeout=%d)", Integer.valueOf(i2));
        this.nativeInterface.setDeadPartyTimeout(i2);
    }

    public void setEnableLocalIce(boolean z) {
        log.d("setEnableLocalIce(value=%b)", Boolean.valueOf(z));
        this.nativeInterface.setEnableLocalIce(z ? 1 : 0);
    }

    public void setEnableUSAPTURN(boolean z) {
        log.d("setEnableUSAPTURN(value=%b)", Boolean.valueOf(z));
        this.nativeInterface.setEnableUSAPTURN(z ? 1 : 0);
    }

    public void setEncodingParameters(EncodingParameters.Video video) {
        log.d("setEncodingParameters(%s)", video);
        this.nativeInterface.setEncodingParameters(video);
    }

    public void swapFathers() {
        log.d("swapFathers()");
        this.nativeInterface.swapFathers();
    }

    public void setEncodingParameters(EncodingParameters.Audio audio) {
        log.d("setEncodingParameters(%s)", audio);
        this.nativeInterface.setEncodingParameters(audio);
    }
}
