package androidx.compose.foundation.text.input.internal;

import android.os.Build;
import android.view.inputmethod.CursorAnchorInfo;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidMatrixConversions_androidKt;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B#\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;", "", "Lkotlin/Function1;", "Landroidx/compose/ui/graphics/Matrix;", "", "localToScreen", "Landroidx/compose/foundation/text/input/internal/InputMethodManager;", "inputMethodManager", "<init>", "(Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/input/internal/InputMethodManager;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LegacyCursorAnchorInfoController {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function1 f6214a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InputMethodManager f6215b;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f6217e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f6218f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f6219h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f6220i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public TextFieldValue f6221j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public TextLayoutResult f6222k;
    public OffsetMapping l;
    public Rect m;
    public Rect n;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f6216c = new Object();
    public final CursorAnchorInfo.Builder o = new CursorAnchorInfo.Builder();
    public final float[] p = Matrix.a();
    public final android.graphics.Matrix q = new android.graphics.Matrix();

    public LegacyCursorAnchorInfoController(Function1<? super Matrix, Unit> function1, InputMethodManager inputMethodManager) {
        this.f6214a = function1;
        this.f6215b = inputMethodManager;
    }

    /* JADX WARN: Code duplicated, block: B:53:0x017a  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    public final void a() {
        ?? r2;
        InputMethodManager inputMethodManager = this.f6215b;
        if (!inputMethodManager.isActive() || this.f6221j == null || this.l == null || this.f6222k == null || this.m == null || this.n == null) {
            return;
        }
        float[] fArr = this.p;
        Matrix.d(fArr);
        this.f6214a.invoke(new Matrix(fArr));
        Rect rect = this.n;
        rect.getClass();
        float f2 = -rect.f8811a;
        Rect rect2 = this.n;
        rect2.getClass();
        Matrix.f(f2, -rect2.f8812b, fArr);
        android.graphics.Matrix matrix = this.q;
        AndroidMatrixConversions_androidKt.a(matrix, fArr);
        TextFieldValue textFieldValue = this.f6221j;
        textFieldValue.getClass();
        long j2 = textFieldValue.f10841b;
        OffsetMapping offsetMapping = this.l;
        offsetMapping.getClass();
        TextLayoutResult textLayoutResult = this.f6222k;
        textLayoutResult.getClass();
        Rect rect3 = this.m;
        rect3.getClass();
        Rect rect4 = this.n;
        rect4.getClass();
        boolean z = this.f6218f;
        boolean z2 = this.g;
        boolean z3 = this.f6219h;
        boolean z4 = this.f6220i;
        CursorAnchorInfo.Builder builder = this.o;
        builder.reset();
        builder.setMatrix(matrix);
        TextRange textRange = textFieldValue.f10842c;
        int iF = TextRange.f(j2);
        builder.setSelectionRange(iF, TextRange.e(j2));
        if (z && iF >= 0) {
            int iB = offsetMapping.b(iF);
            Rect rectC = textLayoutResult.c(iB);
            float fC = RangesKt.c(rectC.f8811a, Call.Parameters.DEFAULT_CAMERA_ZOOM, (int) (textLayoutResult.f10554c >> 32));
            boolean zA = LegacyCursorAnchorInfoBuilder_androidKt.a(rect3, fC, rectC.f8812b);
            boolean zA2 = LegacyCursorAnchorInfoBuilder_androidKt.a(rect3, fC, rectC.d);
            int i2 = 1;
            boolean z5 = textLayoutResult.a(iB) == ResolvedTextDirection.Rtl;
            if (!zA && !zA2) {
                i2 = 0;
            }
            if (!zA || !zA2) {
                i2 |= 2;
            }
            if (z5) {
                i2 |= 4;
            }
            float f3 = rectC.f8812b;
            float f4 = rectC.d;
            builder.setInsertionMarkerLocation(fC, f3, f4, f4, i2);
        }
        if (z2) {
            int iF2 = textRange != null ? TextRange.f(textRange.f10566a) : -1;
            int iE = textRange != null ? TextRange.e(textRange.f10566a) : -1;
            if (iF2 >= 0 && iF2 < iE) {
                builder.setComposingText(iF2, textFieldValue.f10840a.f10420c.subSequence(iF2, iE));
                int iB2 = offsetMapping.b(iF2);
                int iB3 = offsetMapping.b(iE);
                float[] fArr2 = new float[(iB3 - iB2) * 4];
                textLayoutResult.f10553b.a(TextRangeKt.a(iB2, iB3), fArr2);
                int i3 = iF2;
                while (i3 < iE) {
                    int iB4 = offsetMapping.b(i3);
                    int i4 = (iB4 - iB2) * 4;
                    int i5 = iB2;
                    Rect rect5 = new Rect(fArr2[i4], fArr2[i4 + 1], fArr2[i4 + 2], fArr2[i4 + 3]);
                    boolean zG = rect3.g(rect5);
                    if (!LegacyCursorAnchorInfoBuilder_androidKt.a(rect3, rect5.f8811a, rect5.f8812b) || !LegacyCursorAnchorInfoBuilder_androidKt.a(rect3, rect5.f8813c, rect5.d)) {
                        r2 = zG;
                        r2 = (zG ? 1 : 0) | 2;
                    }
                    r2 = zG;
                    if (textLayoutResult.a(iB4) == ResolvedTextDirection.Rtl) {
                        r2 = (r2 == true ? 1 : 0) | 4;
                    }
                    builder.addCharacterBounds(i3, rect5.f8811a, rect5.f8812b, rect5.f8813c, rect5.d, r2 == true ? 1 : 0);
                    i3++;
                    iB2 = i5;
                }
            }
        }
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 33 && z3) {
            CursorAnchorInfoApi33Helper.a(builder, rect4);
        }
        if (i6 >= 34 && z4) {
            CursorAnchorInfoApi34Helper.a(builder, textLayoutResult, rect3);
        }
        inputMethodManager.updateCursorAnchorInfo(builder.build());
        this.f6217e = false;
    }
}
