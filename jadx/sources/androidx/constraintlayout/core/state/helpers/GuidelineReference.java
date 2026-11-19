package androidx.constraintlayout.core.state.helpers;

import androidx.constraintlayout.core.state.Reference;
import androidx.constraintlayout.core.state.State;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.Guideline;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class GuidelineReference implements Facade, Reference {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final State f11464a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11465b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Guideline f11466c;
    public int d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11467e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f11468f = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    public String g;

    public GuidelineReference(State state) {
        this.f11464a = state;
    }

    @Override // androidx.constraintlayout.core.state.Reference
    public final void a(ConstraintWidget constraintWidget) {
        if (constraintWidget instanceof Guideline) {
            this.f11466c = (Guideline) constraintWidget;
        } else {
            this.f11466c = null;
        }
    }

    @Override // androidx.constraintlayout.core.state.helpers.Facade, androidx.constraintlayout.core.state.Reference
    public final void apply() {
        this.f11466c.a0(this.f11465b);
        int i2 = this.d;
        if (i2 != -1) {
            Guideline guideline = this.f11466c;
            if (i2 <= -1) {
                guideline.getClass();
                return;
            }
            guideline.w0 = -1.0f;
            guideline.x0 = i2;
            guideline.y0 = -1;
            return;
        }
        int i3 = this.f11467e;
        Guideline guideline2 = this.f11466c;
        if (i3 != -1) {
            if (i3 <= -1) {
                guideline2.getClass();
                return;
            }
            guideline2.w0 = -1.0f;
            guideline2.x0 = -1;
            guideline2.y0 = i3;
            return;
        }
        float f2 = this.f11468f;
        if (f2 <= -1.0f) {
            guideline2.getClass();
            return;
        }
        guideline2.w0 = f2;
        guideline2.x0 = -1;
        guideline2.y0 = -1;
    }

    @Override // androidx.constraintlayout.core.state.Reference
    public final ConstraintWidget b() {
        if (this.f11466c == null) {
            this.f11466c = new Guideline();
        }
        return this.f11466c;
    }

    @Override // androidx.constraintlayout.core.state.Reference
    public final Facade c() {
        return null;
    }

    @Override // androidx.constraintlayout.core.state.Reference
    public final Object getKey() {
        return this.g;
    }
}
