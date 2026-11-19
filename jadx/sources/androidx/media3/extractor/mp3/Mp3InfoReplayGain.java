package androidx.media3.extractor.mp3;

import androidx.media3.common.Metadata;
import defpackage.a;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class Mp3InfoReplayGain implements Metadata.Entry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f16476a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GainField f16477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GainField f16478c;

    public static final class GainField {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f16479a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f16480b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f16481c;

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface Name {
        }

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface Originator {
        }

        public GainField(int i2, int i3, float f2) {
            this.f16479a = i2;
            this.f16480b = i3;
            this.f16481c = f2;
        }

        public static GainField a(int i2) {
            int i3 = (i2 >> 13) & 7;
            if (i3 == 0) {
                return null;
            }
            return new GainField(i3, (i2 >> 10) & 7, ((i2 & 511) * ((i2 & 512) != 0 ? -1 : 1)) / 10.0f);
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof GainField)) {
                return false;
            }
            GainField gainField = (GainField) obj;
            return this.f16479a == gainField.f16479a && this.f16480b == gainField.f16480b && Float.compare(this.f16481c, gainField.f16481c) == 0;
        }

        public final int hashCode() {
            return Float.hashCode(this.f16481c) + (((this.f16479a * 31) + this.f16480b) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("GainField{name=");
            sb.append(this.f16479a);
            sb.append(", originator=");
            sb.append(this.f16480b);
            sb.append(", gain=");
            return a.m(sb, this.f16481c, '}');
        }
    }

    public Mp3InfoReplayGain(float f2, GainField gainField, GainField gainField2) {
        this.f16476a = f2;
        this.f16477b = gainField;
        this.f16478c = gainField2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Mp3InfoReplayGain)) {
            return false;
        }
        Mp3InfoReplayGain mp3InfoReplayGain = (Mp3InfoReplayGain) obj;
        return Float.compare(this.f16476a, mp3InfoReplayGain.f16476a) == 0 && Objects.equals(this.f16477b, mp3InfoReplayGain.f16477b) && Objects.equals(this.f16478c, mp3InfoReplayGain.f16478c);
    }

    public final int hashCode() {
        int iHashCode = Float.hashCode(this.f16476a) * 31;
        GainField gainField = this.f16477b;
        int iHashCode2 = (iHashCode + (gainField != null ? gainField.hashCode() : 0)) * 31;
        GainField gainField2 = this.f16478c;
        return iHashCode2 + (gainField2 != null ? gainField2.hashCode() : 0);
    }

    public final String toString() {
        return "ReplayGain Xing/Info: peak=" + this.f16476a + ", field 1=" + this.f16477b + ", field 2=" + this.f16478c;
    }
}
