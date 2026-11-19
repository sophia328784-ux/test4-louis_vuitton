package androidx.media3.extractor.text;

import androidx.media3.common.util.Consumer;
import defpackage.r81;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class LegacySubtitleUtil {
    public static void a(Subtitle subtitle, int i2, Consumer consumer) {
        long jC = subtitle.c(i2);
        List listB = subtitle.b(jC);
        if (listB.isEmpty()) {
            return;
        }
        if (i2 == subtitle.d() - 1) {
            r81.b();
            return;
        }
        long jC2 = subtitle.c(i2 + 1) - subtitle.c(i2);
        if (jC2 > 0) {
            consumer.accept(new CuesWithTiming(listB, jC, jC2));
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0051  */
    public static void b(Subtitle subtitle, SubtitleParser.OutputOptions outputOptions, Consumer consumer) {
        int iA;
        boolean z;
        long j2 = outputOptions.f16685a;
        if (j2 == -9223372036854775807L) {
            iA = 0;
        } else {
            iA = subtitle.a(j2);
            if (iA == -1) {
                iA = subtitle.d();
            }
            if (iA > 0 && subtitle.c(iA - 1) == j2) {
                iA--;
            }
        }
        if (j2 == -9223372036854775807L || iA >= subtitle.d()) {
            z = false;
        } else {
            List listB = subtitle.b(j2);
            long jC = subtitle.c(iA);
            if (listB.isEmpty()) {
                z = false;
            } else {
                long j3 = outputOptions.f16685a;
                if (j3 < jC) {
                    consumer.accept(new CuesWithTiming(listB, j3, jC - j3));
                    z = true;
                } else {
                    z = false;
                }
            }
        }
        for (int i2 = iA; i2 < subtitle.d(); i2++) {
            a(subtitle, i2, consumer);
        }
        if (outputOptions.f16686b) {
            if (z) {
                iA--;
            }
            for (int i3 = 0; i3 < iA; i3++) {
                a(subtitle, i3, consumer);
            }
            if (z) {
                consumer.accept(new CuesWithTiming(subtitle.b(j2), subtitle.c(iA), j2 - subtitle.c(iA)));
            }
        }
    }
}
