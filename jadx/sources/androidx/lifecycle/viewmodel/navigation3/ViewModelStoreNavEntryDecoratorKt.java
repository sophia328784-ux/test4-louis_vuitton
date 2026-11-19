package androidx.lifecycle.viewmodel.navigation3;

import android.os.Bundle;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.core.os.BundleKt;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.ViewModelStoreOwnerDefaults;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.ViewModelStoreProvider;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import defpackage.md;
import defpackage.rp0;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {}, d2 = {}, k = 4, mv = {2, 1, 0}, xi = 48)
public abstract class ViewModelStoreNavEntryDecoratorKt {
    public static final ViewModelStoreNavEntryDecorator a(Composer composer) {
        ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer);
        if (viewModelStoreOwnerA == null) {
            md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
            return null;
        }
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        MapsKt.c();
        Bundle bundleA = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
        CreationExtras creationExtrasA = ViewModelStoreOwnerDefaults.a(viewModelStoreOwnerA);
        ViewModelProvider.Factory factoryB = ViewModelStoreOwnerDefaults.b(viewModelStoreOwnerA);
        Object objValueOf = Long.valueOf(composer.getT());
        boolean zK = composer.K(viewModelStoreOwnerA) | composer.K(objValueOf);
        Object objX = composer.x();
        Object obj = Composer.Companion.f7939a;
        if (zK || objX == obj) {
            Object viewModelStoreProvider = new ViewModelStoreProvider(viewModelStoreOwnerA, objValueOf, bundleA, creationExtrasA, factoryB);
            composer.q(viewModelStoreProvider);
            objX = viewModelStoreProvider;
        }
        ViewModelStoreProvider viewModelStoreProvider2 = (ViewModelStoreProvider) objX;
        Object d = ((LifecycleOwner) composer.k(LocalLifecycleOwnerKt.f13562a)).getD();
        boolean zY = composer.y(viewModelStoreProvider2) | composer.y(d);
        Object objX2 = composer.x();
        if (zY || objX2 == obj) {
            objX2 = new rp0(viewModelStoreProvider2, d, 8);
            composer.q(objX2);
        }
        EffectsKt.b(viewModelStoreProvider2, d, (Function1) objX2, composer);
        boolean zK2 = composer.K(viewModelStoreProvider2);
        Object objX3 = composer.x();
        if (zK2 || objX3 == obj) {
            objX3 = new ViewModelStoreNavEntryDecorator(viewModelStoreProvider2);
            composer.q(objX3);
        }
        return (ViewModelStoreNavEntryDecorator) objX3;
    }
}
