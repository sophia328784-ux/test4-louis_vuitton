package androidx.camera.video.internal.config;

import android.util.Range;
import android.util.Rational;
import androidx.camera.core.Logger;
import androidx.camera.video.AudioSpec;
import androidx.camera.video.internal.audio.AudioSettings;
import androidx.core.util.Supplier;

/* JADX INFO: loaded from: classes.dex */
public final class AudioSettingsDefaultResolver implements Supplier<AudioSettings> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AudioSpec f2969a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Rational f2970b;

    public AudioSettingsDefaultResolver(AudioSpec audioSpec, Rational rational) {
        this.f2969a = audioSpec;
        this.f2970b = rational;
    }

    @Override // androidx.core.util.Supplier
    public final Object get() {
        AudioSpec audioSpec = this.f2969a;
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
        if (iC == -1) {
            Logger.c(3, "DefAudioResolver");
            iC = 1;
        } else {
            Logger.c(3, "DefAudioResolver");
        }
        Range rangeD = audioSpec.d();
        CaptureEncodeRates captureEncodeRatesB = AudioConfigUtil.b(rangeD, AudioSpec.f2709b.equals(rangeD) ? 44100 : ((Integer) rangeD.getUpper()).intValue(), iC, iE, this.f2970b);
        Logger.c(3, "DefAudioResolver");
        AudioSettings.Builder builderA = AudioSettings.a();
        builderA.c(iE);
        builderA.b(iF);
        builderA.e(iC);
        builderA.d(captureEncodeRatesB.f2983a);
        builderA.f(captureEncodeRatesB.f2984b);
        return builderA.a();
    }
}
