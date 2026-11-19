package defpackage;

import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.LinearGradient;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class l10 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75917b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LinearGradient f75918c;

    public /* synthetic */ l10(LinearGradient linearGradient, int i2) {
        this.f75917b = i2;
        this.f75918c = linearGradient;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f75917b) {
            case 0:
                ContentDrawScope contentDrawScope = (ContentDrawScope) obj;
                contentDrawScope.getClass();
                contentDrawScope.R1();
                BlendMode.f8847a.getClass();
                DrawScope.q1(contentDrawScope, this.f75918c, 0L, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, BlendMode.g, 62);
                break;
            case 1:
                ContentDrawScope contentDrawScope2 = (ContentDrawScope) obj;
                contentDrawScope2.getClass();
                contentDrawScope2.R1();
                BlendMode.f8847a.getClass();
                DrawScope.q1(contentDrawScope2, this.f75918c, 0L, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, BlendMode.g, 62);
                break;
            default:
                ContentDrawScope contentDrawScope3 = (ContentDrawScope) obj;
                contentDrawScope3.getClass();
                contentDrawScope3.R1();
                BlendMode.f8847a.getClass();
                DrawScope.q1(contentDrawScope3, this.f75918c, 0L, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, BlendMode.g, 62);
                break;
        }
        return Unit.f71739a;
    }
}
