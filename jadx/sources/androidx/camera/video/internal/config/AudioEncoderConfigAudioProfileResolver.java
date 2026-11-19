package androidx.camera.video.internal.config;

import android.util.Range;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.core.impl.Timebase;
import androidx.camera.video.AudioSpec;
import androidx.camera.video.internal.audio.AudioSettings;
import androidx.camera.video.internal.encoder.AudioEncoderConfig;
import androidx.core.util.Supplier;

/* JADX INFO: loaded from: classes.dex */
public final class AudioEncoderConfigAudioProfileResolver implements Supplier<AudioEncoderConfig> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2957a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Timebase f2958b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2959c;
    public final AudioSpec d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AudioSettings f2960e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final EncoderProfilesProxy.AudioProfileProxy f2961f;

    public AudioEncoderConfigAudioProfileResolver(String str, int i2, Timebase timebase, AudioSpec audioSpec, AudioSettings audioSettings, EncoderProfilesProxy.AudioProfileProxy audioProfileProxy) {
        this.f2957a = str;
        this.f2959c = i2;
        this.f2958b = timebase;
        this.d = audioSpec;
        this.f2960e = audioSettings;
        this.f2961f = audioProfileProxy;
    }

    @Override // androidx.core.util.Supplier
    public final Object get() {
        Logger.c(3, "AudioEncAdPrflRslvr");
        Range rangeB = this.d.b();
        EncoderProfilesProxy.AudioProfileProxy audioProfileProxy = this.f2961f;
        int iB = audioProfileProxy.b();
        AudioSettings audioSettings = this.f2960e;
        int iC = AudioConfigUtil.c(iB, audioSettings.d(), audioProfileProxy.c(), audioSettings.e(), audioProfileProxy.g(), rangeB);
        AudioEncoderConfig.Builder builderD = AudioEncoderConfig.d();
        builderD.g(this.f2957a);
        builderD.h(this.f2959c);
        builderD.f(this.f2958b);
        builderD.d(audioSettings.d());
        builderD.c(audioSettings.c());
        builderD.e(audioSettings.e());
        builderD.b(iC);
        return builderD.a();
    }
}
