package defpackage;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.foundation.text.selection.SelectionMagnifierKt;
import androidx.compose.material3.internal.TextFieldImplKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.navigation.NavBackStackEntry;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class lg0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76026b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ State f76027c;

    public /* synthetic */ lg0(State state, int i2) {
        this.f76026b = i2;
        this.f76027c = state;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f76026b;
        State state = this.f76027c;
        switch (i2) {
            case 0:
                List list = (List) state.getF10755b();
                ArrayList arrayList = new ArrayList();
                for (Object obj : list) {
                    if (Intrinsics.c(((NavBackStackEntry) obj).f18113c.f18151b, "composable")) {
                        arrayList.add(obj);
                    }
                }
                return arrayList;
            case 1:
                AnimationVector2D animationVector2D = SelectionMagnifierKt.f6432a;
                return new Offset(((Offset) state.getF10755b()).f8808a);
            case 2:
                AnimationVector2D animationVector2D2 = SelectionMagnifierKt.f6432a;
                return new Offset(((Offset) state.getF10755b()).f8808a);
            case 3:
                float f2 = TextFieldImplKt.f7647a;
                return Boolean.valueOf(((Number) state.getF10755b()).floatValue() > Call.Parameters.DEFAULT_CAMERA_ZOOM);
            default:
                float f3 = TextFieldImplKt.f7647a;
                return Boolean.valueOf(((Number) state.getF10755b()).floatValue() > Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
    }
}
