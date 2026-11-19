package androidx.compose.ui.graphics.colorspace;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.az;
import defpackage.d21;
import defpackage.md;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0006\n\u0002\b\n\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/ui/graphics/colorspace/TransferParameters;", "", "", "gamma", "a", NBSSpanMetricUnit.Bit, "c", NBSSpanMetricUnit.Day, "e", "f", "<init>", "(DDDDDDD)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class TransferParameters {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final double f8988a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final double f8989b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final double f8990c;
    public final double d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final double f8991e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final double f8992f;
    public final double g;

    public TransferParameters(double d, double d2, double d3, double d4, double d5, double d6, double d7) {
        this.f8988a = d;
        this.f8989b = d2;
        this.f8990c = d3;
        this.d = d4;
        this.f8991e = d5;
        this.f8992f = d6;
        this.g = d7;
        if (Double.isNaN(d2) || Double.isNaN(d3) || Double.isNaN(d4) || Double.isNaN(d5) || Double.isNaN(d6) || Double.isNaN(d7) || Double.isNaN(d)) {
            md.n("Parameters cannot be NaN");
            throw null;
        }
        if (d == -2.0d || d == -3.0d) {
            return;
        }
        if (d5 < 0.0d || d5 > 1.0d) {
            az.p("Parameter d must be in the range [0..1], was ", d5);
            throw null;
        }
        if (d5 == 0.0d && (d2 == 0.0d || d == 0.0d)) {
            md.n("Parameter a or g is zero, the transfer function is constant");
            throw null;
        }
        if (d5 >= 1.0d && d4 == 0.0d) {
            md.n("Parameter c is zero, the transfer function is constant");
            throw null;
        }
        if ((d2 == 0.0d || d == 0.0d) && d4 == 0.0d) {
            md.n("Parameter a or g is zero, and c is zero, the transfer function is constant");
            throw null;
        }
        if (d4 < 0.0d) {
            md.n("The transfer function must be increasing");
            throw null;
        }
        if (d2 < 0.0d || d < 0.0d) {
            md.n("The transfer function must be positive or increasing");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TransferParameters)) {
            return false;
        }
        TransferParameters transferParameters = (TransferParameters) obj;
        return Double.compare(this.f8988a, transferParameters.f8988a) == 0 && Double.compare(this.f8989b, transferParameters.f8989b) == 0 && Double.compare(this.f8990c, transferParameters.f8990c) == 0 && Double.compare(this.d, transferParameters.d) == 0 && Double.compare(this.f8991e, transferParameters.f8991e) == 0 && Double.compare(this.f8992f, transferParameters.f8992f) == 0 && Double.compare(this.g, transferParameters.g) == 0;
    }

    public final int hashCode() {
        return Double.hashCode(this.g) + d21.a(this.f8992f, d21.a(this.f8991e, d21.a(this.d, d21.a(this.f8990c, d21.a(this.f8989b, Double.hashCode(this.f8988a) * 31, 31), 31), 31), 31), 31);
    }

    public final String toString() {
        return "TransferParameters(gamma=" + this.f8988a + ", a=" + this.f8989b + ", b=" + this.f8990c + ", c=" + this.d + ", d=" + this.f8991e + ", e=" + this.f8992f + ", f=" + this.g + ')';
    }

    public /* synthetic */ TransferParameters(double d, double d2, double d3, double d4, double d5, double d6, double d7, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(d, d2, d3, d4, d5, (i2 & 32) != 0 ? 0.0d : d6, (i2 & 64) != 0 ? 0.0d : d7);
    }
}
