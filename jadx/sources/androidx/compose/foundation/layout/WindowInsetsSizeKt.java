package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import defpackage.a61;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation-layout"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class WindowInsetsSizeKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a61 f5139a = new a61(5);

    public static final Modifier a(DTFunctionNameModifier dTFunctionNameModifier, AndroidWindowInsets androidWindowInsets) {
        return dTFunctionNameModifier.o(new DerivedHeightModifierElement(androidWindowInsets, InspectableValueKt.f10100a, f5139a));
    }
}
