package androidx.compose.material3;

import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/material3/DefaultTooltipCaretShape;", "Landroidx/compose/ui/graphics/Shape;", "Landroidx/compose/ui/unit/DpSize;", "caretSize", "<init>", "(JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DefaultTooltipCaretShape implements Shape {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f6897a;

    /* JADX WARN: Illegal instructions before constructor call */
    public DefaultTooltipCaretShape(long j2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 1) != 0) {
            float f2 = TooltipDefaults.f7400b;
            j2 = TooltipDefaults.f7399a;
        }
        this(j2, null);
    }

    @Override // androidx.compose.ui.graphics.Shape
    public final Outline a(long j2, LayoutDirection layoutDirection, Density density) {
        AndroidPath androidPathA = AndroidPath_androidKt.a();
        long j3 = this.f6897a;
        float fU1 = density.u1(DpSize.b(j3));
        float fU2 = density.u1(DpSize.a(j3));
        androidPathA.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        androidPathA.c(fU1 / 2.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        androidPathA.c(Call.Parameters.DEFAULT_CAMERA_ZOOM, fU2);
        androidPathA.c((-fU1) / 2.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        androidPathA.close();
        return new Outline.Generic(androidPathA);
    }

    public DefaultTooltipCaretShape(long j2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f6897a = j2;
    }
}
