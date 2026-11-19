package androidx.compose.ui.layout;

import androidx.collection.MutableIntObjectMap;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class WindowInsetsRulers_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final MutableIntObjectMap f9600a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final WindowInsetsRulers[] f9601b;

    static {
        MutableIntObjectMap mutableIntObjectMap = new MutableIntObjectMap(8);
        WindowInsetsRulers.f9589a.getClass();
        WindowInsetsRulers windowInsetsRulers = WindowInsetsRulers.Companion.g;
        mutableIntObjectMap.i(1, windowInsetsRulers);
        WindowInsetsRulers windowInsetsRulers2 = WindowInsetsRulers.Companion.f9594f;
        mutableIntObjectMap.i(2, windowInsetsRulers2);
        WindowInsetsRulers windowInsetsRulers3 = WindowInsetsRulers.Companion.f9591b;
        mutableIntObjectMap.i(4, windowInsetsRulers3);
        WindowInsetsRulers windowInsetsRulers4 = WindowInsetsRulers.Companion.d;
        mutableIntObjectMap.i(8, windowInsetsRulers4);
        WindowInsetsRulers windowInsetsRulers5 = WindowInsetsRulers.Companion.f9595h;
        mutableIntObjectMap.i(16, windowInsetsRulers5);
        WindowInsetsRulers windowInsetsRulers6 = WindowInsetsRulers.Companion.f9593e;
        mutableIntObjectMap.i(32, windowInsetsRulers6);
        WindowInsetsRulers windowInsetsRulers7 = WindowInsetsRulers.Companion.f9596i;
        mutableIntObjectMap.i(64, windowInsetsRulers7);
        WindowInsetsRulers windowInsetsRulers8 = WindowInsetsRulers.Companion.f9592c;
        mutableIntObjectMap.i(128, windowInsetsRulers8);
        f9600a = mutableIntObjectMap;
        f9601b = new WindowInsetsRulers[]{windowInsetsRulers, windowInsetsRulers2, windowInsetsRulers3, windowInsetsRulers7, windowInsetsRulers5, windowInsetsRulers6, windowInsetsRulers4, WindowInsetsRulers.Companion.f9597j, windowInsetsRulers8};
    }

    public static final void a(RulerScope rulerScope, RectRulers rectRulers, long j2, int i2, int i3) {
        if (ValueInsets.a(j2, -1L)) {
            return;
        }
        rulerScope.F0(rectRulers.getF9462b(), (int) ((j2 >>> 48) & 65535));
        rulerScope.F0(rectRulers.getF9463c(), (int) ((j2 >>> 32) & 65535));
        rulerScope.F0(rectRulers.getD(), i2 - ((int) ((j2 >>> 16) & 65535)));
        rulerScope.F0(rectRulers.getF9464e(), i3 - ((int) (j2 & 65535)));
    }
}
