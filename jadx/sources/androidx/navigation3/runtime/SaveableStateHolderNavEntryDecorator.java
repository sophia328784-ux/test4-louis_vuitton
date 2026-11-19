package androidx.navigation3.runtime;

import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import defpackage.xe0;
import defpackage.xo0;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/navigation3/runtime/SaveableStateHolderNavEntryDecorator;", "T", "", "Landroidx/navigation3/runtime/NavEntryDecorator;", "saveableStateHolder", "Landroidx/compose/runtime/saveable/SaveableStateHolder;", "<init>", "(Landroidx/compose/runtime/saveable/SaveableStateHolder;)V", "navigation3-runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SaveableStateHolderNavEntryDecorator<T> extends NavEntryDecorator<T> {
    public SaveableStateHolderNavEntryDecorator(SaveableStateHolder saveableStateHolder) {
        super(new xo0(saveableStateHolder, 11), new ComposableLambdaImpl(-1320822745, true, new xe0(saveableStateHolder, 13)));
    }
}
