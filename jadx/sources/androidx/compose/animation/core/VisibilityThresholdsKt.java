package androidx.compose.animation.core;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpOffset;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"animation-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class VisibilityThresholdsKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Rect f4089a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Map f4090b;

    static {
        Float fValueOf = Float.valueOf(1.0f);
        f4089a = new Rect(1.0f, 1.0f, 1.0f, 1.0f);
        Pair pair = new Pair(VectorConvertersKt.f4037b, fValueOf);
        IntSize.Companion companion = IntSize.f11020b;
        Pair pair2 = new Pair(VectorConvertersKt.f4041h, fValueOf);
        IntOffset.Companion companion2 = IntOffset.f11012b;
        Pair pair3 = new Pair(VectorConvertersKt.g, fValueOf);
        Pair pair4 = new Pair(VectorConvertersKt.f4036a, Float.valueOf(0.01f));
        Pair pair5 = new Pair(VectorConvertersKt.f4042i, fValueOf);
        Size.Companion companion3 = Size.f8820b;
        Pair pair6 = new Pair(VectorConvertersKt.f4039e, fValueOf);
        Offset.Companion companion4 = Offset.f8806b;
        Pair pair7 = new Pair(VectorConvertersKt.f4040f, fValueOf);
        Dp.Companion companion5 = Dp.f11004c;
        TwoWayConverter twoWayConverter = VectorConvertersKt.f4038c;
        Float fValueOf2 = Float.valueOf(0.4f);
        Pair pair8 = new Pair(twoWayConverter, fValueOf2);
        int i2 = DpOffset.f11007b;
        f4090b = MapsKt.i(pair, pair2, pair3, pair4, pair5, pair6, pair7, pair8, new Pair(VectorConvertersKt.d, fValueOf2));
    }
}
