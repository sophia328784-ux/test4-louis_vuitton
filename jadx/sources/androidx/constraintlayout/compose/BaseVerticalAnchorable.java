package androidx.constraintlayout.compose;

import androidx.constraintlayout.core.parser.CLArray;
import androidx.constraintlayout.core.parser.CLNumber;
import androidx.constraintlayout.core.parser.CLObject;
import androidx.constraintlayout.core.parser.CLString;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b \u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/constraintlayout/compose/BaseVerticalAnchorable;", "Landroidx/constraintlayout/compose/VerticalAnchorable;", "Landroidx/constraintlayout/core/parser/CLObject;", "containerObject", "", "index", "<init>", "(Landroidx/constraintlayout/core/parser/CLObject;I)V", "constraintlayout-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class BaseVerticalAnchorable implements VerticalAnchorable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CLObject f11219a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f11220b;

    /* JADX WARN: Code duplicated, block: B:13:0x001a  */
    public BaseVerticalAnchorable(CLObject cLObject, int i2) {
        String str;
        this.f11219a = cLObject;
        if (i2 == -2) {
            str = "start";
        } else if (i2 == -1) {
            str = "end";
        } else if (i2 == 0) {
            str = "left";
        } else if (i2 != 1) {
            str = "start";
        } else {
            str = "right";
        }
        this.f11220b = str;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0017  */
    @Override // androidx.constraintlayout.compose.VerticalAnchorable
    public final void b(ConstraintLayoutBaseScope.VerticalAnchor verticalAnchor, float f2) {
        String str;
        int i2 = verticalAnchor.f11245b;
        if (i2 == -2) {
            str = "start";
        } else if (i2 == -1) {
            str = "end";
        } else if (i2 == 0) {
            str = "left";
        } else if (i2 != 1) {
            str = "start";
        } else {
            str = "right";
        }
        CLArray cLArray = new CLArray(new char[0]);
        cLArray.z(CLString.z(verticalAnchor.f11244a.toString()));
        cLArray.z(CLString.z(str));
        cLArray.z(new CLNumber(f2));
        cLArray.z(new CLNumber(Call.Parameters.DEFAULT_CAMERA_ZOOM));
        this.f11219a.R(this.f11220b, cLArray);
    }
}
