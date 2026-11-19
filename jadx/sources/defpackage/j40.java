package defpackage;

import androidx.compose.ui.layout.Placeable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j40 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71289b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f71290c;
    public final /* synthetic */ Placeable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f71291e;

    public /* synthetic */ j40(int i2, int i3, Placeable placeable) {
        this.f71289b = 1;
        this.f71290c = i2;
        this.d = placeable;
        this.f71291e = i3;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f71289b;
        int i3 = this.f71291e;
        int i4 = this.f71290c;
        Placeable placeable = this.d;
        Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
        switch (i2) {
            case 0:
                placementScope.j(placeable, i4, i3, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                break;
            case 1:
                placementScope.j(placeable, MathKt.c((i4 - placeable.f9548b) / 2.0f), MathKt.c((i3 - placeable.f9549c) / 2.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM);
                break;
            default:
                placementScope.j(placeable, i4, i3, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ j40(Placeable placeable, int i2, int i3, int i4) {
        this.f71289b = i4;
        this.d = placeable;
        this.f71290c = i2;
        this.f71291e = i3;
    }
}
