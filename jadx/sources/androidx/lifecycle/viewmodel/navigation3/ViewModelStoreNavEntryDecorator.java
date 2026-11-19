package androidx.lifecycle.viewmodel.navigation3;

import android.os.Bundle;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.ViewModelStoreProvider;
import androidx.navigation3.runtime.NavEntryDecorator;
import defpackage.p11;
import defpackage.xe0;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0007\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007B\u001f\b\u0017\u0012\u0006\u0010\b\u001a\u00020\t\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0004\b\u0006\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/lifecycle/viewmodel/navigation3/ViewModelStoreNavEntryDecorator;", "T", "", "Landroidx/navigation3/runtime/NavEntryDecorator;", "viewModelStoreProvider", "Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;", "<init>", "(Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;)V", "viewModelStore", "Landroidx/lifecycle/ViewModelStore;", "removeViewModelStoreOnPop", "Lkotlin/Function0;", "", "(Landroidx/lifecycle/ViewModelStore;Lkotlin/jvm/functions/Function0;)V", "lifecycle-viewmodel-navigation3"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ViewModelStoreNavEntryDecorator<T> extends NavEntryDecorator<T> {
    public ViewModelStoreNavEntryDecorator(ViewModelStoreProvider viewModelStoreProvider) {
        super(new p11(viewModelStoreProvider, 15), new ComposableLambdaImpl(-1481256515, true, new xe0(viewModelStoreProvider, 21)));
    }

    @Deprecated
    public ViewModelStoreNavEntryDecorator(ViewModelStore viewModelStore, Function0<Boolean> function0) {
        this(new ViewModelStoreProvider(viewModelStore, "androidx.lifecycle.viewmodel.navigation3.ViewModelStoreNavEntryDecorator", (Bundle) null, (CreationExtras) null, (ViewModelProvider.Factory) null, 28, (DefaultConstructorMarker) null));
    }
}
