package androidx.compose.ui.platform;

import android.os.Looper;
import android.view.View;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionServices;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import com.vuitton.android.R;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0001¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/platform/WrappedComposition;", "Landroidx/compose/runtime/Composition;", "Landroidx/lifecycle/LifecycleEventObserver;", "Landroidx/compose/runtime/CompositionServices;", "Landroidx/compose/ui/platform/AndroidComposeView;", "owner", "original", "<init>", "(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/runtime/Composition;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class WrappedComposition implements Composition, LifecycleEventObserver, CompositionServices {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AndroidComposeView f10204b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Composition f10205c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Lifecycle f10206e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Function2 f10207f;

    public WrappedComposition(AndroidComposeView androidComposeView, Composition composition) {
        this.f10204b = androidComposeView;
        this.f10205c = composition;
        ComposableSingletons$Wrapper_androidKt.f10005a.getClass();
        this.f10207f = ComposableSingletons$Wrapper_androidKt.f10006b;
    }

    @Override // androidx.compose.runtime.Composition
    public final void dispose() {
        if (!this.d) {
            this.d = true;
            this.f10204b.getView().setTag(R.id.wrapped_composition_tag, null);
            Lifecycle lifecycle = this.f10206e;
            if (lifecycle != null) {
                lifecycle.d(this);
            }
            this.f10206e = null;
        }
        this.f10205c.dispose();
    }

    @Override // androidx.compose.runtime.Composition
    public final void h(final Function2 function2) {
        this.f10204b.setOnReadyForComposition(new Function1<ComposeViewContext, Unit>() { // from class: androidx.compose.ui.platform.WrappedComposition$setContent$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                final ComposeViewContext composeViewContext = (ComposeViewContext) obj;
                final WrappedComposition wrappedComposition = this.f10208c;
                if (!wrappedComposition.d) {
                    LifecycleOwner lifecycleOwner = composeViewContext.f10011c;
                    View view = composeViewContext.f10009a;
                    final Lifecycle d = lifecycleOwner.getD();
                    final Function2 function3 = function2;
                    wrappedComposition.f10207f = function3;
                    if (wrappedComposition.f10206e == null) {
                        if (Intrinsics.c(Looper.myLooper(), view.getHandler().getLooper())) {
                            wrappedComposition.f10206e = d;
                            d.a(wrappedComposition);
                        } else {
                            view.post(new Runnable() { // from class: androidx.compose.ui.platform.b
                                @Override // java.lang.Runnable
                                public final void run() {
                                    WrappedComposition wrappedComposition2 = wrappedComposition;
                                    if (wrappedComposition2.d) {
                                        return;
                                    }
                                    Lifecycle lifecycle = d;
                                    wrappedComposition2.f10206e = lifecycle;
                                    lifecycle.a(wrappedComposition2);
                                }
                            });
                        }
                    } else if (d.getF13454i().a(Lifecycle.State.CREATED)) {
                        wrappedComposition.f10205c.h(new ComposableLambdaImpl(-1723985096, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.platform.WrappedComposition$setContent$1.2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj2, Object obj3) {
                                Composer composer = (Composer) obj2;
                                int iIntValue = ((Number) obj3).intValue();
                                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                                    WrappedComposition wrappedComposition2 = wrappedComposition;
                                    AndroidComposeView androidComposeView = wrappedComposition2.f10204b;
                                    boolean zY = composer.y(wrappedComposition2);
                                    Object objX = composer.x();
                                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                    if (zY || objX == composer$Companion$Empty$1) {
                                        objX = new WrappedComposition$setContent$1$2$1$1(wrappedComposition2, null);
                                        composer.q(objX);
                                    }
                                    EffectsKt.e(composer, androidComposeView, (Function2) objX);
                                    boolean zY2 = composer.y(wrappedComposition2);
                                    Object objX2 = composer.x();
                                    if (zY2 || objX2 == composer$Companion$Empty$1) {
                                        objX2 = new WrappedComposition$setContent$1$2$2$1(wrappedComposition2, null);
                                        composer.q(objX2);
                                    }
                                    EffectsKt.e(composer, androidComposeView, (Function2) objX2);
                                    composeViewContext.a(androidComposeView, function3, composer, 0);
                                } else {
                                    composer.D();
                                }
                                return Unit.f71739a;
                            }
                        }));
                    }
                }
                return Unit.f71739a;
            }
        });
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_DESTROY) {
            dispose();
        } else {
            if (event != Lifecycle.Event.ON_CREATE || this.d) {
                return;
            }
            h(this.f10207f);
        }
    }
}
