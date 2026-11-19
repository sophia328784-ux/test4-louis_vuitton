package androidx.compose.foundation.contextmenu;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import defpackage.f0;
import defpackage.r;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function8;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001BÄ\u0001\b\u0000\u0012¸\u0001\u0010\u0015\u001a³\u0001\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\n\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\f\u00125\u00123\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\r¢\u0006\u0002\b\u0011¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0012\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u00100\u0013¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\u00100\u0002¢\u0006\u0002\b\u0011¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Landroidx/compose/foundation/contextmenu/ContextMenuScope;", "", "Lkotlin/Function6;", "Landroidx/compose/ui/Modifier;", "Lkotlin/ParameterName;", "name", "modifier", "", "label", "", "enabled", "Landroidx/compose/foundation/contextmenu/ContextMenuColors;", "colors", "Lkotlin/Function1;", "Landroidx/compose/ui/graphics/Color;", "iconColor", "", "Landroidx/compose/runtime/Composable;", "leadingIcon", "Lkotlin/Function0;", "onClick", "itemUi", "<init>", "(Lkotlin/jvm/functions/Function8;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ContextMenuScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function8 f4322a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SnapshotStateList f4323b = new SnapshotStateList();

    public ContextMenuScope(Function8<? super Modifier, ? super String, ? super Boolean, ? super ContextMenuColors, ? super Function3<? super Color, ? super Composer, ? super Integer, Unit>, ? super Function0<Unit>, ? super Composer, ? super Integer, Unit> function8) {
        this.f4322a = function8;
    }

    public static void b(ContextMenuScope contextMenuScope, Function2 function2, ComposableLambdaImpl composableLambdaImpl, Function0 function0, int i2) {
        if ((i2 & 8) != 0) {
            composableLambdaImpl = null;
        }
        contextMenuScope.f4323b.add(new ComposableLambdaImpl(-1789283891, true, new r(function2, contextMenuScope, composableLambdaImpl, function0)));
    }

    public final void a(ContextMenuColors contextMenuColors, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-798501095);
        int i3 = (gapComposerH.K(contextMenuColors) ? 4 : 2) | i2 | (gapComposerH.K(this) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            SnapshotStateList snapshotStateList = this.f4323b;
            int size = snapshotStateList.size();
            for (int i4 = 0; i4 < size; i4++) {
                ((Function3) snapshotStateList.get(i4)).A(contextMenuColors, gapComposerH, Integer.valueOf(i3 & 14));
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new f0(this, contextMenuColors, i2, 28);
        }
    }
}
