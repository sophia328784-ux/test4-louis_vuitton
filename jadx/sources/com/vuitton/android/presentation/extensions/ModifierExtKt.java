package com.vuitton.android.presentation.extensions;

import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import defpackage.ba0;
import defpackage.u9;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ModifierExtKt {
    public static Modifier a(Modifier modifier, String str, Function1 function1, int i2) {
        if ((i2 & 1) != 0) {
            str = "";
        }
        if ((i2 & 4) != 0) {
            function1 = new ba0(10);
        }
        modifier.getClass();
        str.getClass();
        function1.getClass();
        return SemanticsModifierKt.a(modifier, function1);
    }

    public static final Modifier b(Modifier modifier, Function1 function1) {
        modifier.getClass();
        function1.getClass();
        return ComposedModifierKt.a(modifier, InspectableValueKt.f10100a, new u9(function1, 4));
    }
}
