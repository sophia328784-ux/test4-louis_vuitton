package androidx.constraintlayout.compose;

import androidx.constraintlayout.core.parser.CLArray;
import androidx.constraintlayout.core.parser.CLNumber;
import androidx.constraintlayout.core.parser.CLObject;
import androidx.constraintlayout.core.parser.CLString;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b \u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/constraintlayout/compose/BaseHorizontalAnchorable;", "Landroidx/constraintlayout/compose/HorizontalAnchorable;", "Landroidx/constraintlayout/core/parser/CLObject;", "containerObject", "", "index", "<init>", "(Landroidx/constraintlayout/core/parser/CLObject;I)V", "constraintlayout-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class BaseHorizontalAnchorable implements HorizontalAnchorable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CLObject f11217a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f11218b;

    public BaseHorizontalAnchorable(CLObject cLObject, int i2) {
        this.f11217a = cLObject;
        this.f11218b = (i2 == 0 || i2 != 1) ? "top" : "bottom";
    }

    @Override // androidx.constraintlayout.compose.HorizontalAnchorable
    public final void b(ConstraintLayoutBaseScope.HorizontalAnchor horizontalAnchor, float f2) {
        int i2 = horizontalAnchor.f11242b;
        String str = (i2 == 0 || i2 != 1) ? "top" : "bottom";
        CLArray cLArray = new CLArray(new char[0]);
        cLArray.z(CLString.z(horizontalAnchor.f11241a.toString()));
        cLArray.z(CLString.z(str));
        cLArray.z(new CLNumber(f2));
        cLArray.z(new CLNumber(Call.Parameters.DEFAULT_CAMERA_ZOOM));
        this.f11217a.R(this.f11218b, cLArray);
    }
}
