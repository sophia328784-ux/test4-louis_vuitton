package androidx.compose.foundation.text.contextmenu.provider;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function5;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0011B_\u0012V\u0010\u000e\u001aR\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\b\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\n0\t¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f0\u0002¢\u0006\u0002\b\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;", "Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProvider;", "Lkotlin/Function3;", "Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;", "Lkotlin/ParameterName;", "name", "session", "Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;", "dataProvider", "Lkotlin/Function0;", "Landroidx/compose/ui/layout/LayoutCoordinates;", "anchorLayoutCoordinates", "", "Landroidx/compose/runtime/Composable;", "contextMenuBlock", "<init>", "(Lkotlin/jvm/functions/Function5;)V", "SessionImpl", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BasicTextContextMenuProvider implements TextContextMenuProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function5 f6145a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutatorMutex f6146b = new MutatorMutex();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableState f6147c = SnapshotStateKt.g(null);

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider$SessionImpl;", "Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;", "Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;", "dataProvider", "<init>", "(Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class SessionImpl implements TextContextMenuSession {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TextContextMenuDataProvider f6148a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final BufferedChannel f6149b = ChannelKt.a(0, 7, null);

        public SessionImpl(BasicTextContextMenuProvider basicTextContextMenuProvider, TextContextMenuDataProvider textContextMenuDataProvider) {
            this.f6148a = textContextMenuDataProvider;
        }

        @Override // androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession
        public final void close() {
            this.f6149b.b(Unit.f71739a);
        }
    }

    public BasicTextContextMenuProvider(Function5<? super TextContextMenuSession, ? super TextContextMenuDataProvider, ? super Function0<? extends LayoutCoordinates>, ? super Composer, ? super Integer, Unit> function5) {
        this.f6145a = function5;
    }

    @Override // androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider
    public final Object a(TextContextMenuDataProvider textContextMenuDataProvider, SuspendLambda suspendLambda) {
        Object objB = this.f6146b.b(MutatePriority.Default, new BasicTextContextMenuProvider$showTextContextMenu$2(this, new SessionImpl(this, textContextMenuDataProvider), null), suspendLambda);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : Unit.f71739a;
    }

    public final void b(final Function0 function0, Composer composer, final int i2) {
        final Function0 function1;
        GapComposer gapComposerH = composer.h(723898654);
        int i3 = (gapComposerH.K(this) ? 32 : 16) | i2;
        final int i4 = 0;
        final int i5 = 1;
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            SessionImpl sessionImpl = (SessionImpl) ((SnapshotMutableStateImpl) this.f6147c).getF10755b();
            if (sessionImpl == null) {
                RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2(this, function0, i2, i4) { // from class: tc

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ int f80034b;

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final /* synthetic */ BasicTextContextMenuProvider f80035c;
                        public final /* synthetic */ Function0 d;

                        {
                            this.f80034b = i4;
                            this.f80035c = this;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            int i6 = this.f80034b;
                            Composer composer2 = (Composer) obj;
                            ((Integer) obj2).getClass();
                            switch (i6) {
                                case 0:
                                    this.f80035c.b(this.d, composer2, RecomposeScopeImplKt.a(7));
                                    break;
                                default:
                                    this.f80035c.b(this.d, composer2, RecomposeScopeImplKt.a(7));
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    return;
                }
                return;
            }
            function1 = function0;
            this.f6145a.D(sessionImpl, sessionImpl.f6148a, function1, gapComposerH, Integer.valueOf(KyberEngine.KyberPolyBytes));
        } else {
            function1 = function0;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB1 = gapComposerH.b0();
        if (recomposeScopeImplB1 != null) {
            recomposeScopeImplB1.d = new Function2(this, function1, i2, i5) { // from class: tc

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ int f80034b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ BasicTextContextMenuProvider f80035c;
                public final /* synthetic */ Function0 d;

                {
                    this.f80034b = i5;
                    this.f80035c = this;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    int i6 = this.f80034b;
                    Composer composer2 = (Composer) obj;
                    ((Integer) obj2).getClass();
                    switch (i6) {
                        case 0:
                            this.f80035c.b(this.d, composer2, RecomposeScopeImplKt.a(7));
                            break;
                        default:
                            this.f80035c.b(this.d, composer2, RecomposeScopeImplKt.a(7));
                            break;
                    }
                    return Unit.f71739a;
                }
            };
        }
    }
}
