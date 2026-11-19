package androidx.compose.ui.platform;

import android.view.View;
import android.view.ViewGroup;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.ui.node.UiApplier;
import com.vuitton.android.R;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class Wrapper_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ViewGroup.LayoutParams f10215a = new ViewGroup.LayoutParams(-2, -2);

    /* JADX WARN: Code duplicated, block: B:23:0x006b  */
    /* JADX WARN: Code duplicated, block: B:26:0x0086  */
    /* JADX WARN: Code duplicated, block: B:29:0x0099  */
    /* JADX WARN: Code duplicated, block: B:31:0x009e  */
    public static final Composition a(AbstractComposeView abstractComposeView, ComposeViewContext composeViewContext, ComposableLambdaImpl composableLambdaImpl) {
        AndroidComposeView androidComposeView;
        WrappedComposition wrappedComposition;
        if (GlobalSnapshotManager.f10073a.compareAndSet(false, true)) {
            final BufferedChannel bufferedChannelA = ChannelKt.a(1, 6, null);
            AndroidUiDispatcher.l.getClass();
            BuildersKt.c(CoroutineScopeKt.a((CoroutineContext) AndroidUiDispatcher.m.getF71699b()), null, null, new GlobalSnapshotManager$ensureStarted$1(bufferedChannelA, null), 3);
            Snapshot.Companion companion = Snapshot.f8462e;
            Function1<Object, Unit> function1 = new Function1<Object, Unit>() { // from class: androidx.compose.ui.platform.GlobalSnapshotManager$ensureStarted$2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    if (GlobalSnapshotManager.f10074b.compareAndSet(false, true)) {
                        bufferedChannelA.b(Unit.f71739a);
                    }
                    return Unit.f71739a;
                }
            };
            companion.getClass();
            synchronized (SnapshotKt.f8483c) {
                SnapshotKt.f8487i = CollectionsKt.X(function1, SnapshotKt.f8487i);
            }
            SnapshotKt.d(SnapshotKt.f8481a);
        }
        if (abstractComposeView.getChildCount() > 0) {
            View childAt = abstractComposeView.getChildAt(0);
            androidComposeView = childAt instanceof AndroidComposeView ? (AndroidComposeView) childAt : null;
            if (androidComposeView != null) {
                androidComposeView.setComposeViewContext(composeViewContext);
            }
            if (androidComposeView == null) {
                androidComposeView = new AndroidComposeView(abstractComposeView.getContext(), composeViewContext);
                abstractComposeView.addView(androidComposeView.getView(), f10215a);
            }
            androidComposeView.setComposeViewContext(composeViewContext);
            if (abstractComposeView.getComposeViewContext() != null) {
                composeViewContext.c();
                androidComposeView.setComposeViewContextIncrementedDuringInit$ui(true);
            }
            Function1 function2 = InspectableValueKt.f10100a;
            Object tag = androidComposeView.getTag(R.id.wrapped_composition_tag);
            wrappedComposition = tag instanceof WrappedComposition ? (WrappedComposition) tag : null;
            if (wrappedComposition == null) {
                wrappedComposition = new WrappedComposition(androidComposeView, new CompositionImpl(composeViewContext.f10010b, new UiApplier(androidComposeView.getRoot())));
                androidComposeView.setTag(R.id.wrapped_composition_tag, wrappedComposition);
            }
            wrappedComposition.h(composableLambdaImpl);
            androidComposeView.setFrameEndScheduler$ui(new Wrapper_androidKt$setContent$1(composeViewContext.f10010b));
            return wrappedComposition;
        }
        abstractComposeView.removeAllViews();
        androidComposeView = null;
        if (androidComposeView == null) {
            androidComposeView = new AndroidComposeView(abstractComposeView.getContext(), composeViewContext);
            abstractComposeView.addView(androidComposeView.getView(), f10215a);
        }
        androidComposeView.setComposeViewContext(composeViewContext);
        if (abstractComposeView.getComposeViewContext() != null) {
            composeViewContext.c();
            androidComposeView.setComposeViewContextIncrementedDuringInit$ui(true);
        }
        Function1 function3 = InspectableValueKt.f10100a;
        Object tag2 = androidComposeView.getTag(R.id.wrapped_composition_tag);
        if (tag2 instanceof WrappedComposition) {
        }
        if (wrappedComposition == null) {
            wrappedComposition = new WrappedComposition(androidComposeView, new CompositionImpl(composeViewContext.f10010b, new UiApplier(androidComposeView.getRoot())));
            androidComposeView.setTag(R.id.wrapped_composition_tag, wrappedComposition);
        }
        wrappedComposition.h(composableLambdaImpl);
        androidComposeView.setFrameEndScheduler$ui(new Wrapper_androidKt$setContent$1(composeViewContext.f10010b));
        return wrappedComposition;
    }
}
