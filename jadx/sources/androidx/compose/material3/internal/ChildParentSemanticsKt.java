package androidx.compose.material3.internal;

import androidx.compose.ui.Modifier;
import defpackage.jh;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class ChildParentSemanticsKt {
    public static Modifier a(Modifier modifier) {
        return modifier.o(new ChildSemanticsNodeElement(new jh(28)));
    }
}
