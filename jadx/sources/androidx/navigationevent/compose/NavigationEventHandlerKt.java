package androidx.navigationevent.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.navigationevent.NavigationEventDispatcher;
import androidx.navigationevent.NavigationEventDispatcherOwner;
import androidx.navigationevent.NavigationEventHandler;
import androidx.navigationevent.NavigationEventInfo;
import androidx.navigationevent.NavigationEventProcessor;
import com.google.ar.core.ImageMetadata;
import defpackage.ct0;
import defpackage.dd0;
import defpackage.i4;
import defpackage.md;
import defpackage.tb0;
import defpackage.zv;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"navigationevent-compose"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class NavigationEventHandlerKt {
    public static final void a(NavigationEventState navigationEventState, boolean z, Function0 function0, Function0 function1, Composer composer, int i2) {
        Function0 function2;
        GapComposer gapComposerH = composer.h(1220469155);
        int i3 = (gapComposerH.K(navigationEventState) ? 4 : 2) | i2 | (gapComposerH.b(z) ? 32 : 16) | KyberEngine.KyberPolyBytes | (gapComposerH.y(function1) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new dd0(22);
                gapComposerH.q(objX);
            }
            Function0 function3 = (Function0) objX;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new dd0(23);
                gapComposerH.q(objX2);
            }
            Function0 function4 = (Function0) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new dd0(24);
                gapComposerH.q(objX3);
            }
            int i4 = (i3 & 14) | 3504;
            int i5 = i3 << 9;
            b(navigationEventState, false, function4, (Function0) objX3, z, function3, function1, gapComposerH, i4 | (57344 & i5) | ImageMetadata.EDGE_MODE | (i5 & 3670016));
            function2 = function3;
        } else {
            gapComposerH.D();
            function2 = function0;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i4(navigationEventState, z, function2, function1, i2, 15);
        }
    }

    public static final void b(final NavigationEventState navigationEventState, final boolean z, Function0 function0, Function0 function1, boolean z2, Function0 function2, Function0 function3, Composer composer, int i2) {
        int i3;
        final Function0 function4;
        Function0 function5;
        boolean z3;
        Function0 function6;
        Function0 function7;
        GapComposer gapComposerH = composer.h(898330592);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(navigationEventState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.b(z) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            function4 = function0;
            i3 |= gapComposerH.y(function4) ? 256 : 128;
        } else {
            function4 = function0;
        }
        if ((i2 & 3072) == 0) {
            function5 = function1;
            i3 |= gapComposerH.y(function5) ? 2048 : 1024;
        } else {
            function5 = function1;
        }
        if ((i2 & 24576) == 0) {
            z3 = z2;
            i3 |= gapComposerH.b(z3) ? 16384 : 8192;
        } else {
            z3 = z2;
        }
        if ((196608 & i2) == 0) {
            function6 = function2;
            i3 |= gapComposerH.y(function6) ? 131072 : 65536;
        } else {
            function6 = function2;
        }
        if ((1572864 & i2) == 0) {
            function7 = function3;
            i3 |= gapComposerH.y(function7) ? 1048576 : 524288;
        } else {
            function7 = function3;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 599187) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            NavigationEventDispatcherOwner navigationEventDispatcherOwner = (NavigationEventDispatcherOwner) gapComposerH.k(LocalNavigationEventDispatcherOwner.f18496a);
            if (navigationEventDispatcherOwner == null) {
                md.k("No NavigationEventDispatcher was provided via LocalNavigationEventDispatcherOwner");
                return;
            }
            final NavigationEventDispatcher navigationEventDispatcher = navigationEventDispatcherOwner.getNavigationEventDispatcher();
            int i4 = i3 & 14;
            boolean z4 = i4 == 4;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z4 || objX == composer$Companion$Empty$1) {
                objX = new ComposeNavigationEventHandler((NavigationEventInfo) ((SnapshotMutableStateImpl) navigationEventState.f18502c).getF10755b(), new tb0(navigationEventState, 14));
                gapComposerH.q(objX);
            }
            final ComposeNavigationEventHandler composeNavigationEventHandler = (ComposeNavigationEventHandler) objX;
            boolean zY = ((i3 & 3670016) == 1048576) | gapComposerH.y(composeNavigationEventHandler) | ((i3 & 112) == 32) | ((i3 & 896) == 256) | ((i3 & 7168) == 2048) | ((57344 & i3) == 16384) | ((458752 & i3) == 131072) | (i4 == 4);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                final Function0 function8 = function5;
                final boolean z5 = z3;
                final Function0 function9 = function6;
                final Function0 function10 = function7;
                Function0 function11 = new Function0() { // from class: androidx.navigationevent.compose.a
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        NavigationEventProcessor navigationEventProcessor;
                        NavigationEventProcessor navigationEventProcessor2;
                        ComposeNavigationEventHandler composeNavigationEventHandler2 = composeNavigationEventHandler;
                        boolean z6 = composeNavigationEventHandler2.f18469f;
                        boolean z7 = z;
                        if (z6 != z7) {
                            composeNavigationEventHandler2.f18469f = z7;
                            NavigationEventDispatcher navigationEventDispatcher2 = composeNavigationEventHandler2.g;
                            if (navigationEventDispatcher2 != null && (navigationEventProcessor2 = navigationEventDispatcher2.f18462e) != null) {
                                navigationEventProcessor2.b();
                            }
                        }
                        composeNavigationEventHandler2.f18493i = function4;
                        composeNavigationEventHandler2.f18494j = function8;
                        composeNavigationEventHandler2.i(z5);
                        composeNavigationEventHandler2.f18495k = function9;
                        composeNavigationEventHandler2.l = function10;
                        NavigationEventState navigationEventState2 = navigationEventState;
                        NavigationEventInfo navigationEventInfo = (NavigationEventInfo) ((SnapshotMutableStateImpl) navigationEventState2.f18502c).getF10755b();
                        List list = (List) ((SnapshotMutableStateImpl) navigationEventState2.f18501b).getF10755b();
                        List list2 = (List) ((SnapshotMutableStateImpl) navigationEventState2.d).getF10755b();
                        navigationEventInfo.getClass();
                        list.getClass();
                        list2.getClass();
                        composeNavigationEventHandler2.f18465a = navigationEventInfo;
                        composeNavigationEventHandler2.f18466b = list;
                        composeNavigationEventHandler2.f18467c = list2;
                        NavigationEventDispatcher navigationEventDispatcher3 = composeNavigationEventHandler2.g;
                        if (navigationEventDispatcher3 != null && (navigationEventProcessor = navigationEventDispatcher3.f18462e) != null) {
                            navigationEventProcessor.d(composeNavigationEventHandler2);
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(function11);
                objX2 = function11;
            }
            EffectsKt.i((Function0) objX2, gapComposerH);
            boolean zY2 = (i4 == 4) | gapComposerH.y(composeNavigationEventHandler) | gapComposerH.y(navigationEventDispatcher);
            Object objX3 = gapComposerH.x();
            if (zY2 || objX3 == composer$Companion$Empty$1) {
                objX3 = new Function1() { // from class: androidx.navigationevent.compose.b
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        final NavigationEventState navigationEventState2 = navigationEventState;
                        NavigationEventHandler navigationEventHandler = navigationEventState2.f18503e;
                        final ComposeNavigationEventHandler composeNavigationEventHandler2 = composeNavigationEventHandler;
                        if (navigationEventHandler != null) {
                            ct0.h(navigationEventState2, "' is already registered with a NavigationEventHandler '", composeNavigationEventHandler2, "'.", "NavigationEventState '");
                            return null;
                        }
                        navigationEventState2.f18503e = composeNavigationEventHandler2;
                        NavigationEventDispatcher.a(navigationEventDispatcher, composeNavigationEventHandler2);
                        return new DisposableEffectResult() { // from class: androidx.navigationevent.compose.NavigationEventHandlerKt$NavigationEventHandler$lambda$7$0$$inlined$onDispose$1
                            @Override // androidx.compose.runtime.DisposableEffectResult
                            public final void dispose() {
                                composeNavigationEventHandler2.h();
                                navigationEventState2.f18503e = null;
                            }
                        };
                    }
                };
                gapComposerH.q(objX3);
            }
            EffectsKt.c(navigationEventState, (Function1) objX3, gapComposerH);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zv(navigationEventState, z, function0, function1, z2, function2, function3, i2);
        }
    }
}
