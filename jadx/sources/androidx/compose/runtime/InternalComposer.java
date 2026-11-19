package androidx.compose.runtime;

import androidx.compose.runtime.tooling.ComposeStackTrace;
import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b!\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/runtime/InternalComposer;", "Landroidx/compose/runtime/Composer;", "<init>", "()V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class InternalComposer implements Composer {
    public abstract void M();

    public abstract CompositionErrorContextImpl N();

    /* JADX INFO: renamed from: O */
    public abstract boolean getC();

    public abstract List P();

    public abstract ComposeStackTrace Q(Object obj);

    public abstract void R();
}
