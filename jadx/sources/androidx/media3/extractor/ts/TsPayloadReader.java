package androidx.media3.extractor.ts;

import android.util.SparseArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.extractor.ExtractorOutput;
import defpackage.cj;
import defpackage.md;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface TsPayloadReader {

    public static final class DvbSubtitleInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f17176a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final byte[] f17177b;

        public DvbSubtitleInfo(String str, int i2, byte[] bArr) {
            this.f17176a = str;
            this.f17177b = bArr;
        }
    }

    public static final class EsInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f17178a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f17179b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f17180c;
        public final List d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final byte[] f17181e;

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface AudioType {
        }

        public EsInfo(int i2, String str, int i3, List<DvbSubtitleInfo> list, byte[] bArr) {
            this.f17178a = i2;
            this.f17179b = str;
            this.f17180c = i3;
            this.d = list == null ? Collections.EMPTY_LIST : Collections.unmodifiableList(list);
            this.f17181e = bArr;
        }

        public final int a() {
            int i2 = this.f17180c;
            if (i2 != 2) {
                return i2 != 3 ? 0 : 512;
            }
            return 2048;
        }
    }

    public interface Factory {
        TsPayloadReader a(int i2, EsInfo esInfo);

        SparseArray b();
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    void a(int i2, ParsableByteArray parsableByteArray);

    void b(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TrackIdGenerator trackIdGenerator);

    void c();

    public static final class TrackIdGenerator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f17182a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f17183b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f17184c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f17185e;

        public TrackIdGenerator(int i2, int i3, int i4) {
            this.f17182a = i2 != Integer.MIN_VALUE ? cj.d(i2, "/") : "";
            this.f17183b = i3;
            this.f17184c = i4;
            this.d = Integer.MIN_VALUE;
            this.f17185e = "";
        }

        public final void a() {
            int i2 = this.d;
            this.d = i2 == Integer.MIN_VALUE ? this.f17183b : i2 + this.f17184c;
            this.f17185e = this.f17182a + this.d;
        }

        public final void b() {
            if (this.d != Integer.MIN_VALUE) {
                return;
            }
            md.k("generateNewId() must be called before retrieving ids.");
        }

        public TrackIdGenerator(int i2, int i3) {
            this(Integer.MIN_VALUE, i2, i3);
        }
    }
}
