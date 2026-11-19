package androidx.compose.foundation.contextmenu;

import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntRectKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0001\u0018\u00002\u00020\u0001BQ\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012:\b\u0002\u0010\f\u001a4\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0005¢\u0006\u0004\b\r\u0010\u000eBM\b\u0016\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012:\b\u0002\u0010\f\u001a4\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0005¢\u0006\u0004\b\r\u0010\u0010¨\u0006\u0011"}, d2 = {"Landroidx/compose/foundation/contextmenu/ContextMenuPopupPositionProvider;", "Landroidx/compose/ui/window/PopupPositionProvider;", "Lkotlin/Function0;", "Landroidx/compose/ui/unit/IntOffset;", "anchorPositionBlock", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "position", "Landroidx/compose/ui/unit/IntRect;", "menuBounds", "", "onPositionCalculated", "<init>", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V", "anchorPosition", "(JLkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ContextMenuPopupPositionProvider implements PopupPositionProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function0 f4320a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function2 f4321b;

    public /* synthetic */ ContextMenuPopupPositionProvider(long j2, Function2 function2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(j2, (i2 & 2) != 0 ? null : function2, null);
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    public final long a(IntRect intRect, long j2, LayoutDirection layoutDirection, long j3) {
        long j4 = ((IntOffset) this.f4320a.mo47invoke()).f11014a;
        long jA = (((long) ContextMenuPopupPositionProviderKt.a(intRect.f11017a + ((int) (j4 >> 32)), (int) (j3 >> 32), (int) (j2 >> 32), layoutDirection == LayoutDirection.Ltr)) << 32) | (BodyPartID.bodyIdMax & ((long) ContextMenuPopupPositionProviderKt.a(intRect.f11018b + ((int) (j4 & BodyPartID.bodyIdMax)), (int) (j3 & BodyPartID.bodyIdMax), (int) (j2 & BodyPartID.bodyIdMax), true)));
        Function2 function2 = this.f4321b;
        if (function2 != null) {
            function2.invoke(new IntOffset(j4), IntRectKt.a(jA, j3));
        }
        return jA;
    }

    public /* synthetic */ ContextMenuPopupPositionProvider(Function0 function0, Function2 function2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(function0, (i2 & 2) != 0 ? null : function2);
    }

    public ContextMenuPopupPositionProvider(Function0<IntOffset> function0, Function2<? super IntOffset, ? super IntRect, Unit> function2) {
        this.f4320a = function0;
        this.f4321b = function2;
    }

    public ContextMenuPopupPositionProvider(final long j2, Function2 function2, DefaultConstructorMarker defaultConstructorMarker) {
        this(new Function0() { // from class: fq
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return new IntOffset(j2);
            }
        }, function2);
    }
}
