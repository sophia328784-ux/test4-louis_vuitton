package androidx.activity;

import androidx.lifecycle.LifecycleOwner;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {ActionFloatingViewItem.f37018a}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class OnBackPressedDispatcherKt {
    public static void a(OnBackPressedDispatcher onBackPressedDispatcher, LifecycleOwner lifecycleOwner, final Function1 function1, int i2) {
        if ((i2 & 1) != 0) {
            lifecycleOwner = null;
        }
        onBackPressedDispatcher.getClass();
        OnBackPressedCallback onBackPressedCallback = new OnBackPressedCallback() { // from class: androidx.activity.OnBackPressedDispatcherKt$addCallback$callback$1
            {
                super(true);
            }

            @Override // androidx.activity.OnBackPressedCallback
            public final void b() {
                function1.invoke(this);
            }
        };
        if (lifecycleOwner != null) {
            onBackPressedDispatcher.b(onBackPressedCallback, lifecycleOwner);
        } else {
            onBackPressedDispatcher.a(onBackPressedCallback);
        }
    }
}
