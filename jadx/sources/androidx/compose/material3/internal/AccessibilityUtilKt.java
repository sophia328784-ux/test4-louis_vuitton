package androidx.compose.material3.internal;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Dp;
import defpackage.l2;
import defpackage.p;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class AccessibilityUtilKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f7485a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f7486b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Modifier f7487c;
    public static final Modifier d;

    static {
        Dp.Companion companion = Dp.f11004c;
        f7485a = 10.0f;
        f7486b = 10.0f;
        l2 l2Var = new l2(0);
        Modifier.Companion companion2 = Modifier.Companion.f8607b;
        f7487c = PaddingKt.k(SemanticsModifierKt.b(LayoutModifierKt.a(companion2, l2Var), true, new p(8)), 10.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
        d = PaddingKt.k(SemanticsModifierKt.b(LayoutModifierKt.a(companion2, new l2(1)), true, new p(9)), Call.Parameters.DEFAULT_CAMERA_ZOOM, 10.0f, 1);
    }
}
