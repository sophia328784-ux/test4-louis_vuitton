package com.google.accompanist.drawablepainter;

import android.graphics.drawable.Drawable;
import androidx.compose.ui.geometry.Size;
import defpackage.rt;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"drawablepainter_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class DrawablePainterKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Lazy f27768a = LazyKt.a(LazyThreadSafetyMode.NONE, new rt(9));

    public static final long a(Drawable drawable) {
        if (drawable.getIntrinsicWidth() < 0 || drawable.getIntrinsicHeight() < 0) {
            Size.f8820b.getClass();
            return Size.f8821c;
        }
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(drawable.getIntrinsicWidth())) << 32) | (((long) Float.floatToRawIntBits(drawable.getIntrinsicHeight())) & BodyPartID.bodyIdMax);
        Size.Companion companion = Size.f8820b;
        return jFloatToRawIntBits;
    }
}
