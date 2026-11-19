package androidx.activity.compose;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.core.viewtree.ViewTree;
import com.vuitton.android.R;
import defpackage.fa0;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;", "", "activity-compose"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class LocalOnBackPressedDispatcherOwner {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DynamicProvidableCompositionLocal f710a = CompositionLocalKt.c(new fa0(1));

    public static OnBackPressedDispatcherOwner a(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        OnBackPressedDispatcherOwner onBackPressedDispatcherOwner = (OnBackPressedDispatcherOwner) composer.k(f710a);
        Context context = null;
        if (onBackPressedDispatcherOwner == null) {
            composer.L(1208426157);
            View view = (View) composer.k(AndroidCompositionLocals_androidKt.f9939f);
            view.getClass();
            while (true) {
                if (view == null) {
                    onBackPressedDispatcherOwner = null;
                    break;
                }
                Object tag = view.getTag(R.id.view_tree_on_back_pressed_dispatcher_owner);
                OnBackPressedDispatcherOwner onBackPressedDispatcherOwner2 = tag instanceof OnBackPressedDispatcherOwner ? (OnBackPressedDispatcherOwner) tag : null;
                if (onBackPressedDispatcherOwner2 != null) {
                    onBackPressedDispatcherOwner = onBackPressedDispatcherOwner2;
                    break;
                }
                Object objA = ViewTree.a(view);
                view = objA instanceof View ? (View) objA : null;
            }
        } else {
            composer.L(1208423708);
        }
        composer.F();
        if (onBackPressedDispatcherOwner == null) {
            composer.L(1208428160);
            for (Context baseContext = (Context) composer.k(AndroidCompositionLocals_androidKt.f9936b); baseContext instanceof ContextWrapper; baseContext = ((ContextWrapper) baseContext).getBaseContext()) {
                if (baseContext instanceof OnBackPressedDispatcherOwner) {
                    context = baseContext;
                    break;
                }
            }
            onBackPressedDispatcherOwner = (OnBackPressedDispatcherOwner) context;
        } else {
            composer.L(1208423789);
        }
        composer.F();
        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        return onBackPressedDispatcherOwner;
    }
}
