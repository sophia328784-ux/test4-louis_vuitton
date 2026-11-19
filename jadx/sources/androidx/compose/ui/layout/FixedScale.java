package androidx.compose.ui.layout;

import defpackage.a;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/layout/FixedScale;", "Landroidx/compose/ui/layout/ContentScale;", "", "value", "<init>", "(F)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class FixedScale implements ContentScale {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f9457b;

    public FixedScale(float f2) {
        this.f9457b = f2;
    }

    @Override // androidx.compose.ui.layout.ContentScale
    public final long a(long j2, long j3) {
        float f2 = this.f9457b;
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(f2)) << 32) | (((long) Float.floatToRawIntBits(f2)) & BodyPartID.bodyIdMax);
        int i2 = ScaleFactor.f9565a;
        return jFloatToRawIntBits;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FixedScale) && Float.compare(this.f9457b, ((FixedScale) obj).f9457b) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.f9457b);
    }

    public final String toString() {
        return a.m(new StringBuilder("FixedScale(value="), this.f9457b, ')');
    }
}
