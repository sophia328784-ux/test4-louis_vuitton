package androidx.compose.ui.viewinterop;

import android.view.View;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.LayoutNode;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*(\b\u0002\u0010\u0003\"\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020\u00020\u00002\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020\u00020\u0000*<\b\u0002\u0010\u0005\"\u0010\u0012\u0006\u0012\u0004\u0018\u0001`\u0004\u0012\u0004\u0012\u00020\u00020\u00002$\u0012\u001a\u0012\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0000j\u0004\u0018\u0001`\u0004\u0012\u0004\u0012\u00020\u00020\u0000¨\u0006\u0006"}, d2 = {"Lkotlin/Function1;", "Landroidx/compose/ui/geometry/Rect;", "", "BringIntoViewRequester", "Landroidx/compose/ui/viewinterop/BringIntoViewRequester;", "OnRequesterReady", "ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class AndroidViewHolder_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AndroidViewHolder_androidKt$NoOpScrollConnection$1 f11070a = new AndroidViewHolder_androidKt$NoOpScrollConnection$1();

    public static final void a(View view, LayoutNode layoutNode) {
        long jE = LayoutCoordinatesKt.e(layoutNode.H.f9772c);
        int iRound = Math.round(Float.intBitsToFloat((int) (jE >> 32)));
        int iRound2 = Math.round(Float.intBitsToFloat((int) (jE & BodyPartID.bodyIdMax)));
        view.layout(iRound, iRound2, view.getMeasuredWidth() + iRound, view.getMeasuredHeight() + iRound2);
    }

    public static final int b(int i2) {
        if (i2 == 0) {
            NestedScrollSource.f9260a.getClass();
            return NestedScrollSource.f9261b;
        }
        NestedScrollSource.f9260a.getClass();
        return NestedScrollSource.f9262c;
    }
}
