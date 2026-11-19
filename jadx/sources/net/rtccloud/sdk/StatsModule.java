package net.rtccloud.sdk;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
public class StatsModule {
    private final Native nativeInterface;
    private final Rtcc rtcc;

    public interface Native {
        public static final Native JNI = new Native() { // from class: net.rtccloud.sdk.StatsModule.Native.1
            @Override // net.rtccloud.sdk.StatsModule.Native
            public Call.Stats callStats(Call call) {
                return call.stats();
            }

            @Override // net.rtccloud.sdk.StatsModule.Native
            public ByteBuffer dump() {
                return Jni.nDumpStats();
            }

            @Override // net.rtccloud.sdk.StatsModule.Native
            public int networkLatency() {
                return (int) (Jni.nGetNetworkLatency() / 1000);
            }

            @Override // net.rtccloud.sdk.StatsModule.Native
            public String realTimePlatformName() {
                return Jni.nGetRealtimePlatformName();
            }
        };

        Call.Stats callStats(Call call);

        ByteBuffer dump();

        int networkLatency();

        String realTimePlatformName();
    }

    public StatsModule(Rtcc rtcc, Native r2) {
        this.rtcc = rtcc;
        this.nativeInterface = r2;
    }

    public ByteBuffer dump() {
        return this.nativeInterface.dump();
    }

    public int networkLatency() {
        return this.nativeInterface.networkLatency();
    }

    public String realTimePlatformName() {
        return this.nativeInterface.realTimePlatformName();
    }

    public Rtcc rtcc() {
        return this.rtcc;
    }

    public Call.Stats stats(Call call) {
        return this.nativeInterface.callStats(call);
    }
}
