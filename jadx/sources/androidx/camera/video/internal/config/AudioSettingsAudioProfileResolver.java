package androidx.camera.video.internal.config;

import android.util.Rational;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.video.AudioSpec;
import androidx.camera.video.internal.audio.AudioSettings;
import androidx.core.util.Supplier;

/* JADX INFO: loaded from: classes.dex */
public final class AudioSettingsAudioProfileResolver implements Supplier<AudioSettings> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AudioSpec f2966a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EncoderProfilesProxy.AudioProfileProxy f2967b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Rational f2968c;

    public AudioSettingsAudioProfileResolver(AudioSpec audioSpec, EncoderProfilesProxy.AudioProfileProxy audioProfileProxy, Rational rational) {
        this.f2966a = audioSpec;
        this.f2967b = audioProfileProxy;
        this.f2968c = rational;
    }

    @Override // androidx.core.util.Supplier
    public final Object get() {
        AudioSpec audioSpec = this.f2966a;
        int iE = audioSpec.e();
        if (iE == -1) {
            Logger.c(3, "AudioConfigUtil");
            iE = 5;
        } else {
            Logger.c(3, "AudioConfigUtil");
        }
        int iF = audioSpec.f();
        if (iF == -1) {
            Logger.c(3, "AudioConfigUtil");
            iF = 2;
        } else {
            Logger.c(3, "AudioConfigUtil");
        }
        int iC = audioSpec.c();
        EncoderProfilesProxy.AudioProfileProxy audioProfileProxy = this.f2967b;
        int iC2 = audioProfileProxy.c();
        if (iC == -1) {
            Logger.c(3, "AudioSrcAdPrflRslvr");
            iC = iC2;
        } else {
            Logger.c(3, "AudioSrcAdPrflRslvr");
        }
        CaptureEncodeRates captureEncodeRatesB = AudioConfigUtil.b(audioSpec.d(), audioProfileProxy.g(), iC, iF, this.f2968c);
        Logger.c(3, "AudioSrcAdPrflRslvr");
        AudioSettings.Builder builderA = AudioSettings.a();
        builderA.c(iE);
        builderA.b(iF);
        builderA.e(iC);
        builderA.d(captureEncodeRatesB.f2983a);
        builderA.f(captureEncodeRatesB.f2984b);
        return builderA.a();
    }
}
