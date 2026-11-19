package androidx.constraintlayout.core.parser;

import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class CLNumber extends CLElement {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f11412f;

    public CLNumber(char[] cArr) {
        super(cArr);
        this.f11412f = Float.NaN;
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CLNumber) {
            float fI = i();
            float fI2 = ((CLNumber) obj).i();
            if ((Float.isNaN(fI) && Float.isNaN(fI2)) || fI == fI2) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public final int hashCode() {
        int iHashCode = super.hashCode() * 31;
        float f2 = this.f11412f;
        return iHashCode + (f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM ? Float.floatToIntBits(f2) : 0);
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public final float i() {
        char[] cArr;
        if (Float.isNaN(this.f11412f) && (cArr = this.f11409b) != null && cArr.length >= 1) {
            this.f11412f = Float.parseFloat(h());
        }
        return this.f11412f;
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public final int u() {
        char[] cArr;
        if (Float.isNaN(this.f11412f) && (cArr = this.f11409b) != null && cArr.length >= 1) {
            this.f11412f = Integer.parseInt(h());
        }
        return (int) this.f11412f;
    }

    public CLNumber(float f2) {
        super(null);
        this.f11412f = f2;
    }
}
