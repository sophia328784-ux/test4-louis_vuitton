package androidx.core.view;

import defpackage.fc;
import defpackage.tr;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class DisplayShapeCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImplBase f12166a;

    public interface Impl {
    }

    public static class ImplBase implements Impl {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f12167a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f12168b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f12169c;

        public ImplBase(String str, int i2, int i3) {
            this.f12167a = str;
            this.f12168b = i2;
            this.f12169c = i3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ImplBase)) {
                return false;
            }
            ImplBase implBase = (ImplBase) obj;
            return this.f12167a.equals(implBase.f12167a) && this.f12168b == implBase.f12168b && this.f12169c == implBase.f12169c;
        }

        public final int hashCode() {
            Integer numValueOf = Integer.valueOf(this.f12168b);
            Integer numValueOf2 = Integer.valueOf(this.f12169c);
            Float fValueOf = Float.valueOf(1.0f);
            return Objects.hash(this.f12167a, numValueOf, numValueOf2, fValueOf, 0, 0, 0, fValueOf);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("DisplayShapeCompat{ spec=");
            sb.append(Integer.valueOf(this.f12167a.hashCode()));
            sb.append(" displayWidth=");
            sb.append(this.f12168b);
            sb.append(" displayHeight=");
            return defpackage.a.i(this.f12169c, " physicalPixelDisplaySizeRatio=1.0 rotation=0 offsetX=0 offsetY=0 scale=1.0}", sb);
        }
    }

    static {
        new DisplayShapeCompat("", 0, 0);
    }

    public DisplayShapeCompat(String str, int i2, int i3) {
        this.f12166a = new ImplBase(str, i2, i3);
    }

    public static DisplayShapeCompat a(boolean z, int i2, int i3, int i4, int i5, int i6, int i7) {
        String string;
        if (z) {
            int i8 = i2 / 2;
            int i9 = i3 / 2;
            StringBuilder sbP = fc.p(i9, i8, "M0,", " A", ",");
            fc.x(i9, i2, " 0 1,1 ", ",", sbP);
            fc.x(i9, i8, " A", ",", sbP);
            sbP.append(i9);
            sbP.append(" 0 1,1 0,");
            sbP.append(i9);
            sbP.append(" Z");
            string = sbP.toString();
        } else {
            StringBuilder sb = new StringBuilder("M ");
            int iMin = Math.min(i2 / 2, i3 / 2);
            int iMin2 = Math.min(iMin, i4);
            int iMin3 = Math.min(iMin, i5);
            int iMin4 = Math.min(iMin, i6);
            int iMin5 = Math.min(iMin, i7);
            sb.append(iMin2);
            sb.append(",0 L ");
            sb.append(i2 - iMin3);
            sb.append(",0");
            if (iMin3 > 0) {
                tr.w(iMin3, iMin3, " A ", ",", sb);
                tr.w(i2, iMin3, " 0 0,1 ", ",", sb);
            }
            sb.append(" L ");
            sb.append(i2);
            sb.append(",");
            sb.append(i3 - iMin4);
            if (iMin4 > 0) {
                tr.w(iMin4, iMin4, " A ", ",", sb);
                sb.append(" 0 0,1 ");
                sb.append(i2 - iMin4);
                sb.append(",");
                sb.append(i3);
            }
            tr.w(iMin5, i3, " L ", ",", sb);
            if (iMin5 > 0) {
                tr.w(iMin5, iMin5, " A ", ",", sb);
                sb.append(" 0 0,1 0,");
                sb.append(i3 - iMin5);
            }
            if (iMin2 > 0) {
                tr.w(iMin2, iMin2, " L 0,", " A ", sb);
                tr.w(iMin2, iMin2, ",", " 0 0,1 ", sb);
                sb.append(",0");
            }
            sb.append(" Z");
            string = sb.toString();
        }
        return new DisplayShapeCompat(string, i2, i3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DisplayShapeCompat) {
            return this.f12166a.equals(((DisplayShapeCompat) obj).f12166a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f12166a.hashCode();
    }

    public final String toString() {
        return this.f12166a.toString();
    }
}
