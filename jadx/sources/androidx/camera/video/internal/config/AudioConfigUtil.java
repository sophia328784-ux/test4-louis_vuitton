package androidx.camera.video.internal.config;

import android.media.AudioFormat;
import android.media.AudioRecord;
import android.util.Range;
import android.util.Rational;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.video.AudioSpec;
import androidx.camera.video.MediaSpec;
import androidx.camera.video.internal.VideoValidatedEncoderProfilesProxy;
import androidx.camera.video.internal.audio.AudioSettings;
import defpackage.fc;
import defpackage.md;
import defpackage.r81;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Locale;
import java.util.Objects;
import kotlin.math.MathKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class AudioConfigUtil {
    public static AudioMimeInfo a(MediaSpec mediaSpec, VideoValidatedEncoderProfilesProxy videoValidatedEncoderProfilesProxy) {
        EncoderProfilesProxy.AudioProfileProxy audioProfileProxyF;
        String str = mediaSpec.a() != 1 ? "audio/mp4a-latm" : "audio/vorbis";
        int i2 = (mediaSpec.a() != 1 ? "audio/mp4a-latm" : "audio/vorbis").equals("audio/mp4a-latm") ? 2 : -1;
        if (videoValidatedEncoderProfilesProxy == null || videoValidatedEncoderProfilesProxy.f() == null) {
            audioProfileProxyF = null;
        } else {
            audioProfileProxyF = videoValidatedEncoderProfilesProxy.f();
            String strE = audioProfileProxyF.e();
            int iF = audioProfileProxyF.f();
            if (Objects.equals(strE, "audio/none")) {
                Logger.c(3, "AudioConfigUtil");
            } else if (mediaSpec.a() == -1) {
                Logger.c(3, "AudioConfigUtil");
                str = strE;
                i2 = iF;
            } else if (str.equals(strE) && i2 == iF) {
                Logger.c(3, "AudioConfigUtil");
                str = strE;
            } else {
                Logger.c(3, "AudioConfigUtil");
            }
            audioProfileProxyF = null;
        }
        AutoValue_AudioMimeInfo.Builder builder = new AutoValue_AudioMimeInfo.Builder();
        if (str == null) {
            r81.d("Null mimeType");
            return null;
        }
        builder.f2974a = str;
        builder.f2975b = -1;
        builder.f2975b = Integer.valueOf(i2);
        if (audioProfileProxyF != null) {
            builder.f2976c = audioProfileProxyF;
        }
        String str2 = builder.f2974a == null ? " mimeType" : "";
        if (str2.isEmpty()) {
            return new AutoValue_AudioMimeInfo(builder.f2974a, builder.f2975b.intValue(), builder.f2976c);
        }
        md.k("Missing required properties:".concat(str2));
        return null;
    }

    public static CaptureEncodeRates b(Range range, int i2, int i3, int i4, Rational rational) {
        int iD;
        int iC;
        if (rational != null) {
            Range rangeCreate = AudioSpec.f2709b;
            if (!range.equals(rangeCreate)) {
                rangeCreate = Range.create(Integer.valueOf(CaptureEncodeRatesKt.b(rational, ((Integer) range.getLower()).intValue())), Integer.valueOf(CaptureEncodeRatesKt.b(rational, ((Integer) range.getUpper()).intValue())));
            }
            iD = d(rangeCreate, i3, i4, CaptureEncodeRatesKt.b(rational, i2));
            if (CaptureEncodeRatesKt.a(rational)) {
                rational.toString();
                Logger.c(5, "CaptureEncodeRates");
            } else {
                iC = MathKt.c(iD / rational.floatValue());
            }
            Locale locale = Locale.ENGLISH;
            StringBuilder sbP = fc.p(iD, iC, "Resolved capture/encode sample rate ", "Hz/", "Hz, [target sample rate range: ");
            sbP.append(range);
            sbP.append(", target sample rate: ");
            sbP.append(i2);
            sbP.append(", channel count: ");
            fc.x(i3, i4, ", source format: ", ", capture to encode sample rate ratio: ", sbP);
            sbP.append(rational);
            sbP.append("]");
            Logger.c(3, "AudioConfigUtil");
            return new CaptureEncodeRates(iD, iC);
        }
        iD = d(range, i3, i4, i2);
        iC = iD;
        Locale locale2 = Locale.ENGLISH;
        StringBuilder sbP2 = fc.p(iD, iC, "Resolved capture/encode sample rate ", "Hz/", "Hz, [target sample rate range: ");
        sbP2.append(range);
        sbP2.append(", target sample rate: ");
        sbP2.append(i2);
        sbP2.append(", channel count: ");
        fc.x(i3, i4, ", source format: ", ", capture to encode sample rate ratio: ", sbP2);
        sbP2.append(rational);
        sbP2.append("]");
        Logger.c(3, "AudioConfigUtil");
        return new CaptureEncodeRates(iD, iC);
    }

    public static int c(int i2, int i3, int i4, int i5, int i6, Range range) {
        Rational rational = new Rational(i3, i4);
        Rational rational2 = new Rational(i5, i6);
        double dDoubleValue = rational.doubleValue();
        int iDoubleValue = (int) (rational2.doubleValue() * dDoubleValue * ((double) i2));
        if (Logger.c(3, "AudioConfigUtil")) {
            String.format("Base Bitrate(%dbps) * Channel Count Ratio(%d / %d) * Sample Rate Ratio(%d / %d) = %d", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(iDoubleValue));
        }
        if (!AudioSpec.f2708a.equals(range)) {
            Integer num = (Integer) range.clamp(Integer.valueOf(iDoubleValue));
            iDoubleValue = num.intValue();
            if (Logger.c(3, "AudioConfigUtil")) {
                String.format("\nClamped to range %s -> %dbps", range, num);
            }
        }
        Logger.c(3, "AudioConfigUtil");
        return iDoubleValue;
    }

    public static int d(Range range, int i2, int i3, final int i4) {
        ArrayList arrayList = null;
        int i5 = 0;
        int iIntValue = i4;
        while (true) {
            if (range.contains(Integer.valueOf(iIntValue))) {
                if (iIntValue > 0 && i2 > 0) {
                    if (AudioRecord.getMinBufferSize(iIntValue, i2 == 1 ? 16 : 12, i3) > 0) {
                        try {
                            new AudioFormat.Builder().setSampleRate(iIntValue).setChannelMask(i2 == 1 ? 16 : 12).setEncoding(i3).build();
                            return iIntValue;
                        } catch (IllegalArgumentException unused) {
                        }
                    }
                }
                Logger.c(3, "AudioConfigUtil");
            } else {
                range.toString();
                Logger.c(3, "AudioConfigUtil");
            }
            if (arrayList == null) {
                Logger.c(3, "AudioConfigUtil");
                arrayList = new ArrayList(AudioSettings.f2885a);
                Collections.sort(arrayList, new Comparator() { // from class: z9
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        Integer num = (Integer) obj;
                        Integer num2 = (Integer) obj2;
                        int iIntValue2 = num.intValue();
                        int i6 = i4;
                        int iAbs = Math.abs(iIntValue2 - i6) - Math.abs(num2.intValue() - i6);
                        return (int) (iAbs == 0 ? Math.signum(num.intValue() - num2.intValue()) : Math.signum(iAbs));
                    }
                });
            }
            if (i5 >= arrayList.size()) {
                Logger.c(3, "AudioConfigUtil");
                return 44100;
            }
            iIntValue = ((Integer) arrayList.get(i5)).intValue();
            i5++;
        }
    }
}
