package defpackage;

import androidx.compose.foundation.MagnifierNode;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class jb0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71354b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MagnifierNode f71355c;

    public /* synthetic */ jb0(MagnifierNode magnifierNode, int i2) {
        this.f71354b = i2;
        this.f71355c = magnifierNode;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        long jE;
        int i2 = this.f71354b;
        MagnifierNode magnifierNode = this.f71355c;
        switch (i2) {
            case 0:
                magnifierNode.j2();
                return Unit.f71739a;
            case 1:
                return new Offset(magnifierNode.E);
            default:
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) ((SnapshotMutableStateImpl) magnifierNode.C).getF10755b();
                if (layoutCoordinates != null) {
                    jE = LayoutCoordinatesKt.e(layoutCoordinates);
                } else {
                    Offset.f8806b.getClass();
                    jE = Offset.d;
                }
                return new Offset(jE);
        }
    }
}
