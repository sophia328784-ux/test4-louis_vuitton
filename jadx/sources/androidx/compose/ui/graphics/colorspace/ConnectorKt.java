package androidx.compose.ui.graphics.colorspace;

import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-graphics"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ConnectorKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final MutableIntObjectMap f8970a;

    static {
        Rgb rgb = ColorSpaces.f8958e;
        int i2 = rgb.f8954c;
        RenderIntent.Companion companion = RenderIntent.f8977a;
        companion.getClass();
        Connector.f8964e.getClass();
        companion.getClass();
        Connector$Companion$identity$1 connector$Companion$identity$1 = new Connector$Companion$identity$1(rgb, rgb, RenderIntent.f8978b, null);
        int i3 = rgb.f8954c;
        Oklab oklab = ColorSpaces.x;
        int i4 = (oklab.f8954c << 6) | i3;
        Connector connector = new Connector(rgb, oklab, 0, null);
        int i5 = (i3 << 6) | oklab.f8954c;
        Connector connector2 = new Connector(oklab, rgb, 0, null);
        MutableIntObjectMap mutableIntObjectMap = IntObjectMapKt.f3262a;
        MutableIntObjectMap mutableIntObjectMap2 = new MutableIntObjectMap(0, 1, null);
        mutableIntObjectMap2.i(i2 | (i2 << 6), connector$Companion$identity$1);
        mutableIntObjectMap2.i(i4, connector);
        mutableIntObjectMap2.i(i5, connector2);
        f8970a = mutableIntObjectMap2;
    }
}
