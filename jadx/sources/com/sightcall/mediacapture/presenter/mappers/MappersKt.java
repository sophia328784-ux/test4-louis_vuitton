package com.sightcall.mediacapture.presenter.mappers;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.sightcall.mediacapture.presenter.item.MediaCaptureError;
import defpackage.o60;
import defpackage.v40;
import java.text.SimpleDateFormat;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.text.StringsKt;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0003H\u0000\u001a\f\u0010\u0004\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\f\u0010\u0005\u001a\u00020\u0006*\u00020\u0007H\u0000¨\u0006\b"}, d2 = {"toTime", "", "", "", "toHumanReadableDuration", "toMediaCaptureError", "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;", "Lcom/sightcall/mediacapture/repo/MediaCaptureError;", "lib_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class MappersKt {
    public static final String toHumanReadableDuration(int i2) {
        long jG = DurationKt.g(i2, DurationUnit.SECONDS);
        Duration.Companion companion = Duration.INSTANCE;
        long jK = Duration.k(jG, DurationUnit.HOURS);
        int iF = Duration.f(jG);
        int iH = Duration.h(jG);
        String strI = jK > 0 ? o60.i(jK, " ", NBSSpanMetricUnit.Hour) : "";
        if (iF > 0) {
            strI = ((Object) strI) + " " + iF + "min";
        }
        if (iH > 0) {
            strI = ((Object) strI) + " " + iH + NBSSpanMetricUnit.Second;
        }
        return StringsKt.d0(strI).toString();
    }

    public static final MediaCaptureError toMediaCaptureError(com.sightcall.mediacapture.repo.MediaCaptureError mediaCaptureError) {
        mediaCaptureError.getClass();
        if (mediaCaptureError instanceof com.sightcall.mediacapture.repo.MediaCaptureError.MediaCaptureException) {
            return MediaCaptureError.MediaCaptureException.INSTANCE;
        }
        if (mediaCaptureError instanceof com.sightcall.mediacapture.repo.MediaCaptureError.ResizerLibError) {
            return MediaCaptureError.ResizerLibError.INSTANCE;
        }
        if (mediaCaptureError instanceof com.sightcall.mediacapture.repo.MediaCaptureError.VideoCaptureError) {
            return MediaCaptureError.VideoCaptureError.INSTANCE;
        }
        v40.g();
        return null;
    }

    public static final String toTime(long j2) {
        String str = new SimpleDateFormat("mm:ss", Locale.US).format(Long.valueOf(j2));
        str.getClass();
        return str;
    }

    public static final String toTime(int i2) {
        return toTime(i2);
    }
}
