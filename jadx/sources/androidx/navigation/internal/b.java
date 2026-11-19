package androidx.navigation.internal;

import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Function1 {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        CreationExtras creationExtras = (CreationExtras) obj;
        creationExtras.getClass();
        return new NavBackStackEntryImpl.SavedStateViewModel(SavedStateHandleSupport.a(creationExtras));
    }
}
