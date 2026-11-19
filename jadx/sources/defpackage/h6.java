package defpackage;

import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h6 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69616b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AndroidTextContextMenuToolbarProvider f69617c;
    public final /* synthetic */ TextContextMenuDataProvider d;

    public /* synthetic */ h6(AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider, TextContextMenuDataProvider textContextMenuDataProvider, int i2) {
        this.f69616b = i2;
        this.f69617c = androidTextContextMenuToolbarProvider;
        this.d = textContextMenuDataProvider;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f69616b;
        TextContextMenuDataProvider textContextMenuDataProvider = this.d;
        AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider = this.f69617c;
        switch (i2) {
            case 0:
                g6 g6Var = androidTextContextMenuToolbarProvider.f6086f;
                w1 w1Var = new w1(textContextMenuDataProvider, 6);
                Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                androidTextContextMenuToolbarProvider.f6085e.e("dataBuilder", g6Var, new l0((Object) ref$ObjectRef, (Function0) w1Var, 8));
                Object obj = ref$ObjectRef.f71921b;
                if (obj != null) {
                    return (TextContextMenuData) obj;
                }
                Intrinsics.h("result");
                throw null;
            case 1:
                g6 g6Var2 = androidTextContextMenuToolbarProvider.g;
                h6 h6Var = new h6(androidTextContextMenuToolbarProvider, textContextMenuDataProvider, 2);
                Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
                androidTextContextMenuToolbarProvider.f6085e.e("positioner", g6Var2, new l0((Object) ref$ObjectRef2, (Function0) h6Var, 8));
                Object obj2 = ref$ObjectRef2.f71921b;
                if (obj2 != null) {
                    return (Rect) obj2;
                }
                Intrinsics.h("result");
                throw null;
            default:
                Object objMo47invoke = androidTextContextMenuToolbarProvider.f6084c.mo47invoke();
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) (((LayoutCoordinates) objMo47invoke).c() ? objMo47invoke : null);
                if (layoutCoordinates != null) {
                    return textContextMenuDataProvider.E1(layoutCoordinates).i(LayoutCoordinatesKt.e(layoutCoordinates));
                }
                Rect.f8809e.getClass();
                return Rect.f8810f;
        }
    }
}
