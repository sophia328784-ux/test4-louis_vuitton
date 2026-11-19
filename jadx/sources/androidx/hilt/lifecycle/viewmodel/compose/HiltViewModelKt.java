package androidx.hilt.lifecycle.viewmodel.compose;

import android.content.Context;
import android.content.ContextWrapper;
import androidx.activity.ComponentActivity;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import dagger.hilt.android.internal.lifecycle.HiltViewModelFactory;
import defpackage.a61;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"hilt-lifecycle-viewmodel-compose_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class HiltViewModelKt {
    public static final HiltViewModelFactory a(ViewModelStoreOwner viewModelStoreOwner, Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        HiltViewModelFactory hiltViewModelFactoryA = null;
        if (viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory) {
            composer.L(-1968186822);
            Context baseContext = (Context) composer.k(AndroidCompositionLocals_androidKt.f9936b);
            ViewModelProvider.Factory f13588e = ((HasDefaultViewModelProviderFactory) viewModelStoreOwner).getF13588e();
            baseContext.getClass();
            f13588e.getClass();
            while (baseContext instanceof ContextWrapper) {
                if (baseContext instanceof ComponentActivity) {
                    hiltViewModelFactoryA = HiltViewModelFactory.a((ComponentActivity) baseContext, f13588e);
                    composer.F();
                } else {
                    baseContext = ((ContextWrapper) baseContext).getBaseContext();
                    baseContext.getClass();
                }
            }
            a61.q(baseContext, "Expected an activity context for creating a HiltViewModelFactory but instead found: ");
            return null;
        }
        composer.L(-1968008324);
        composer.F();
        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        return hiltViewModelFactoryA;
    }
}
