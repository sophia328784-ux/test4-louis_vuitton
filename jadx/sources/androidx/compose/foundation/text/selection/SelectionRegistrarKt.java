package androidx.compose.foundation.text.selection;

import androidx.collection.LongObjectMap;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import defpackage.it0;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SelectionRegistrarKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DynamicProvidableCompositionLocal f6442a = CompositionLocalKt.c(new it0(26));

    public static final boolean a(SelectionRegistrar selectionRegistrar, long j2) {
        LongObjectMap longObjectMapE;
        if (selectionRegistrar == null || (longObjectMapE = selectionRegistrar.e()) == null) {
            return false;
        }
        return longObjectMapE.a(j2);
    }
}
