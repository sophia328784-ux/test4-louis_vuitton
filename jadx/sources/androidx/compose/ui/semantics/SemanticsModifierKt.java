package androidx.compose.ui.semantics;

import androidx.compose.ui.Modifier;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SemanticsModifierKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicInteger f10317a = new AtomicInteger(0);

    public static final Modifier a(Modifier modifier, Function1 function1) {
        return modifier.o(new ClearAndSetSemanticsElement(function1));
    }

    public static final Modifier b(Modifier modifier, boolean z, Function1 function1) {
        return modifier.o(new AppendedSemanticsElement(z, function1));
    }
}
