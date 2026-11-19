package androidx.camera.video.internal.config;

import android.util.Range;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.Timebase;
import androidx.camera.video.AudioSpec;
import androidx.camera.video.internal.audio.AudioSettings;
import androidx.camera.video.internal.encoder.AudioEncoderConfig;
import androidx.core.util.Supplier;

/* JADX INFO: loaded from: classes.dex */
public final class AudioEncoderConfigDefaultResolver implements Supplier<AudioEncoderConfig> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2962a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2963b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AudioSpec f2964c;
    public final AudioSettings d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Timebase f2965e;

    public AudioEncoderConfigDefaultResolver(String str, int i2, Timebase timebase, AudioSpec audioSpec, AudioSettings audioSettings) {
        this.f2962a = str;
        this.f2963b = i2;
        this.f2965e = timebase;
        this.f2964c = audioSpec;
        this.d = audioSettings;
    }

    @Override // androidx.core.util.Supplier
    public final Object get() {
        Range rangeB = this.f2964c.b();
        Logger.c(3, "AudioEncCfgDefaultRslvr");
        AudioSettings audioSettings = this.d;
        int iC = AudioConfigUtil.c(156000, audioSettings.d(), 2, audioSettings.e(), 48000, rangeB);
        AudioEncoderConfig.Builder builderD = AudioEncoderConfig.d();
        builderD.g(this.f2962a);
        builderD.h(this.f2963b);
        builderD.f(this.f2965e);
        builderD.d(audioSettings.d());
        builderD.c(audioSettings.c());
        builderD.e(audioSettings.e());
        builderD.b(iC);
        return builderD.a();
    }
}
