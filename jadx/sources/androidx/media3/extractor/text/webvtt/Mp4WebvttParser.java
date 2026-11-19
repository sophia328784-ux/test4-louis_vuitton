package androidx.media3.extractor.text.webvtt;

import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.text.CuesWithTiming;
import androidx.media3.extractor.text.SubtitleParser;
import com.google.common.base.Preconditions;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class Mp4WebvttParser implements SubtitleParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f16893a = new ParsableByteArray();

    @Override // androidx.media3.extractor.text.SubtitleParser
    public final void a(byte[] bArr, int i2, int i3, SubtitleParser.OutputOptions outputOptions, Consumer consumer) {
        Cue cueA;
        ParsableByteArray parsableByteArray = this.f16893a;
        parsableByteArray.L(i3 + i2, bArr);
        parsableByteArray.N(i2);
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray.a() > 0) {
            Preconditions.h(parsableByteArray.a() >= 8, "Incomplete Mp4Webvtt Top Level box header found.");
            int iM = parsableByteArray.m();
            if (parsableByteArray.m() == 1987343459) {
                int i4 = iM - 8;
                CharSequence charSequenceF = null;
                Cue.Builder builderA = null;
                while (i4 > 0) {
                    Preconditions.h(i4 >= 8, "Incomplete vtt cue box header found.");
                    int iM2 = parsableByteArray.m();
                    int iM3 = parsableByteArray.m();
                    int i5 = iM2 - 8;
                    byte[] bArr2 = parsableByteArray.f14194a;
                    int i6 = parsableByteArray.f14195b;
                    String str = Util.f14242a;
                    String str2 = new String(bArr2, i6, i5, StandardCharsets.UTF_8);
                    parsableByteArray.O(i5);
                    i4 = (i4 - 8) - i5;
                    if (iM3 == 1937011815) {
                        Pattern pattern = WebvttCueParser.f16909a;
                        WebvttCueParser.WebvttCueInfoBuilder webvttCueInfoBuilder = new WebvttCueParser.WebvttCueInfoBuilder();
                        WebvttCueParser.e(str2, webvttCueInfoBuilder);
                        builderA = webvttCueInfoBuilder.a();
                    } else if (iM3 == 1885436268) {
                        charSequenceF = WebvttCueParser.f(null, str2.trim(), Collections.EMPTY_LIST);
                    }
                }
                if (charSequenceF == null) {
                    charSequenceF = "";
                }
                if (builderA != null) {
                    builderA.f14102a = charSequenceF;
                    builderA.f14103b = null;
                    cueA = builderA.a();
                } else {
                    Pattern pattern2 = WebvttCueParser.f16909a;
                    WebvttCueParser.WebvttCueInfoBuilder webvttCueInfoBuilder2 = new WebvttCueParser.WebvttCueInfoBuilder();
                    webvttCueInfoBuilder2.f16922c = charSequenceF;
                    cueA = webvttCueInfoBuilder2.a().a();
                }
                arrayList.add(cueA);
            } else {
                parsableByteArray.O(iM - 8);
            }
        }
        consumer.accept(new CuesWithTiming(arrayList, -9223372036854775807L, -9223372036854775807L));
    }

    @Override // androidx.media3.extractor.text.SubtitleParser
    public final int c() {
        return 2;
    }
}
