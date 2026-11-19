package com.vuitton.android.designkit.ui.theme;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.LinearGradient;
import defpackage.l00;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class GradientKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LinearGradient f48342a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final LinearGradient f48343b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final LinearGradient f48344c;
    public static final LinearGradient d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final LinearGradient f48345e;

    static {
        Brush.Companion companion = Brush.f8862a;
        Float fValueOf = Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        Pair pair = new Pair(fValueOf, new Color(androidx.compose.ui.graphics.ColorKt.b(0)));
        Float fValueOf2 = Float.valueOf(0.5f);
        Pair pair2 = new Pair(fValueOf2, new Color(androidx.compose.ui.graphics.ColorKt.b(0)));
        Float fValueOf3 = Float.valueOf(1.0f);
        Pair[] pairArr = (Pair[]) CollectionsKt.P(pair, pair2, new Pair(fValueOf3, new Color(androidx.compose.ui.graphics.ColorKt.b(1291845632)))).toArray(new Pair[0]);
        f48342a = Brush.Companion.c(companion, (Pair[]) Arrays.copyOf(pairArr, pairArr.length));
        Pair[] pairArr2 = (Pair[]) CollectionsKt.P(new Pair(fValueOf, new Color(androidx.compose.ui.graphics.ColorKt.b(0))), new Pair(fValueOf2, new Color(androidx.compose.ui.graphics.ColorKt.b(0))), new Pair(fValueOf3, new Color(androidx.compose.ui.graphics.ColorKt.c(2147483648L)))).toArray(new Pair[0]);
        f48343b = Brush.Companion.c(companion, (Pair[]) Arrays.copyOf(pairArr2, pairArr2.length));
        Pair[] pairArr3 = (Pair[]) CollectionsKt.P(new Pair(fValueOf, new Color(androidx.compose.ui.graphics.ColorKt.b(0))), new Pair(fValueOf2, new Color(androidx.compose.ui.graphics.ColorKt.b(0))), new Pair(fValueOf3, new Color(androidx.compose.ui.graphics.ColorKt.c(3003121664L)))).toArray(new Pair[0]);
        f48344c = Brush.Companion.c(companion, (Pair[]) Arrays.copyOf(pairArr3, pairArr3.length));
        Pair[] pairArr4 = (Pair[]) CollectionsKt.P(new Pair(fValueOf, new Color(androidx.compose.ui.graphics.ColorKt.b(0))), new Pair(fValueOf3, new Color(androidx.compose.ui.graphics.ColorKt.c(3422552064L)))).toArray(new Pair[0]);
        d = Brush.Companion.c(companion, (Pair[]) Arrays.copyOf(pairArr4, pairArr4.length));
        Pair[] pairArr5 = (Pair[]) CollectionsKt.P(new Pair(fValueOf, new Color(androidx.compose.ui.graphics.ColorKt.c(2348810240L))), new Pair(Float.valueOf(0.24f), new Color(androidx.compose.ui.graphics.ColorKt.b(469762048))), new Pair(fValueOf3, new Color(androidx.compose.ui.graphics.ColorKt.c(3422552064L)))).toArray(new Pair[0]);
        f48345e = Brush.Companion.c(companion, (Pair[]) Arrays.copyOf(pairArr5, pairArr5.length));
    }

    public static final Modifier a(Modifier modifier, Brush brush) {
        modifier.getClass();
        brush.getClass();
        return modifier.o(DrawModifierKt.d(Modifier.Companion.f8607b, new l00(brush, 2)));
    }

    public static final Modifier b(Modifier modifier) {
        modifier.getClass();
        return a(modifier, d);
    }

    public static final Modifier c(Modifier modifier) {
        modifier.getClass();
        return a(modifier, f48343b);
    }
}
