package androidx.constraintlayout.compose;

import com.batch.android.s.b;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/constraintlayout/compose/ConstrainedLayoutReference;", "Landroidx/constraintlayout/compose/LayoutReference;", "", b.a.f24015b, "<init>", "(Ljava/lang/Object;)V", "constraintlayout-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ConstrainedLayoutReference extends LayoutReference {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f11234b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConstraintLayoutBaseScope.VerticalAnchor f11235c;
    public final ConstraintLayoutBaseScope.HorizontalAnchor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ConstraintLayoutBaseScope.VerticalAnchor f11236e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ConstraintLayoutBaseScope.HorizontalAnchor f11237f;

    public ConstrainedLayoutReference(Object obj) {
        super(obj);
        this.f11234b = obj;
        this.f11235c = new ConstraintLayoutBaseScope.VerticalAnchor(obj, -2, this);
        new ConstraintLayoutBaseScope.VerticalAnchor(obj, 0, this);
        this.d = new ConstraintLayoutBaseScope.HorizontalAnchor(obj, 0, this);
        this.f11236e = new ConstraintLayoutBaseScope.VerticalAnchor(obj, -1, this);
        new ConstraintLayoutBaseScope.VerticalAnchor(obj, 1, this);
        this.f11237f = new ConstraintLayoutBaseScope.HorizontalAnchor(obj, 1, this);
        new ConstraintLayoutBaseScope.BaselineAnchor(obj, this);
    }

    @Override // androidx.constraintlayout.compose.LayoutReference
    /* JADX INFO: renamed from: a, reason: from getter */
    public final Object getF11234b() {
        return this.f11234b;
    }
}
