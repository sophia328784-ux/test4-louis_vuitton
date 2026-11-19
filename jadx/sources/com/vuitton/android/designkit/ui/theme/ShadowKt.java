package com.vuitton.android.designkit.ui.theme;

import android.graphics.Color;
import android.graphics.Paint;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.Dp;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.ShadowKt;
import defpackage.a;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ShadowKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f48432a;

    static {
        Dp.Companion companion = Dp.f11004c;
        f48432a = 10.0f;
    }

    public static final Modifier a(Modifier modifier, final long j2, final float f2, final float f3, final float f4, final float f5, Composer composer, int i2) {
        if (modifier != null) {
            modifier = a.e(modifier, "drawColoredShadow-BsmKPOM");
        }
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        boolean z = ((((i2 & 896) ^ KyberEngine.KyberPolyBytes) > 256 && composer.c(f2)) || (i2 & KyberEngine.KyberPolyBytes) == 256) | ((((458752 & i2) ^ ImageMetadata.EDGE_MODE) > 131072 && composer.c(f5)) || (i2 & ImageMetadata.EDGE_MODE) == 131072) | ((((i2 & 7168) ^ 3072) > 2048 && composer.c(f3)) || (i2 & 3072) == 2048);
        Object objX = composer.x();
        if (z || objX == Composer.Companion.f7939a) {
            Function1 function1 = new Function1() { // from class: bw0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    DrawScope drawScope = (DrawScope) obj;
                    float f6 = ShadowKt.f48432a;
                    drawScope.getClass();
                    long j3 = j2;
                    int argb = Color.toArgb(androidx.compose.ui.graphics.Color.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, j3));
                    int argb2 = Color.toArgb(androidx.compose.ui.graphics.Color.b(f2, j3));
                    Canvas canvasA = drawScope.getF8996c().a();
                    AndroidPaint androidPaint = new AndroidPaint();
                    Paint paint = androidPaint.f8835a;
                    paint.setColor(argb);
                    paint.setShadowLayer(drawScope.u1(f4), Call.Parameters.DEFAULT_CAMERA_ZOOM, f5, argb2);
                    float fIntBitsToFloat = Float.intBitsToFloat((int) (drawScope.b() >> 32));
                    float fIntBitsToFloat2 = Float.intBitsToFloat((int) (drawScope.b() & BodyPartID.bodyIdMax));
                    float fIntBitsToFloat3 = Float.intBitsToFloat((int) (drawScope.b() >> 32)) + drawScope.u1(-4.0f);
                    float f7 = fIntBitsToFloat3 < fIntBitsToFloat ? fIntBitsToFloat : fIntBitsToFloat3;
                    float f8 = f3;
                    canvasA.v(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f7, fIntBitsToFloat2, drawScope.u1(f8), drawScope.u1(f8), androidPaint);
                    return Unit.f71739a;
                }
            };
            composer.q(function1);
            objX = function1;
        }
        return DrawModifierKt.b(modifier, (Function1) objX);
    }

    public static final Modifier b(Modifier modifier, float f2, Composer composer, int i2, int i3) {
        if (modifier != null) {
            modifier = a.e(modifier, "shadowBottom-6a0pyJM");
        }
        Modifier modifier2 = modifier;
        modifier2.getClass();
        if ((i3 & 2) != 0) {
            f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        long j2 = ColorPrimitive.f48332a;
        Dp.Companion companion = Dp.f11004c;
        return a(modifier2, j2, 0.04f, f2, f48432a, 24.0f, composer, (i2 & 14) | 1794096);
    }

    public static final Modifier c(Modifier modifier, Composer composer, int i2, int i3) {
        if (modifier != null) {
            modifier = a.e(modifier, "shadowTop-6a0pyJM");
        }
        Modifier modifier2 = modifier;
        modifier2.getClass();
        float f2 = (i3 & 2) != 0 ? Call.Parameters.DEFAULT_CAMERA_ZOOM : 8.0f;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        long j2 = ColorPrimitive.f48332a;
        Dp.Companion companion = Dp.f11004c;
        return a(modifier2, j2, 0.06f, f2, f48432a, -16.0f, composer, (i2 & 14) | 1597488 | ((i2 << 3) & 7168));
    }
}
