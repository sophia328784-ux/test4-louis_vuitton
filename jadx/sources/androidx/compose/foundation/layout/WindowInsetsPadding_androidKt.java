package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import defpackage.o51;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation-layout"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class WindowInsetsPadding_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final o51 f5126a = new o51(8);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final o51 f5127b = new o51(9);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final o51 f5128c = new o51(10);
    public static final o51 d = new o51(11);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final o51 f5129e = new o51(12);

    public static final Modifier a(Modifier modifier) {
        return modifier.o(new SystemInsetsPaddingModifierElement(InspectableValueKt.f10100a, d));
    }

    public static final Modifier b(Modifier modifier) {
        return modifier.o(new SystemInsetsPaddingModifierElement(InspectableValueKt.f10100a, f5129e));
    }

    public static final Modifier c(Modifier modifier) {
        return modifier.o(new SystemInsetsPaddingModifierElement(InspectableValueKt.f10100a, f5126a));
    }

    public static final Modifier d(Modifier modifier) {
        return modifier.o(new SystemInsetsPaddingModifierElement(InspectableValueKt.f10100a, f5128c));
    }

    public static final Modifier e(Modifier modifier) {
        return modifier.o(new SystemInsetsPaddingModifierElement(InspectableValueKt.f10100a, f5127b));
    }
}
