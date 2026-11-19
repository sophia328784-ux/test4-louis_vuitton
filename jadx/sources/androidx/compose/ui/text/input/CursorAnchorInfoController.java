package androidx.compose.ui.text.input;

import android.os.Build;
import android.view.inputmethod.CursorAnchorInfo;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidMatrixConversions_androidKt;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.input.pointer.MatrixPositionCalculator;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/text/input/CursorAnchorInfoController;", "", "Landroidx/compose/ui/input/pointer/MatrixPositionCalculator;", "rootPositionCalculator", "Landroidx/compose/ui/text/input/InputMethodManager;", "inputMethodManager", "<init>", "(Landroidx/compose/ui/input/pointer/MatrixPositionCalculator;Landroidx/compose/ui/text/input/InputMethodManager;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CursorAnchorInfoController {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MatrixPositionCalculator f10761a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InputMethodManager f10762b;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f10764e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f10765f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f10766h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f10767i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public TextFieldValue f10768j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public TextLayoutResult f10769k;
    public OffsetMapping l;
    public Rect n;
    public Rect o;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f10763c = new Object();
    public Function1 m = CursorAnchorInfoController$textFieldToRootTransform$1.f10771c;
    public final CursorAnchorInfo.Builder p = new CursorAnchorInfo.Builder();
    public final float[] q = Matrix.a();
    public final android.graphics.Matrix r = new android.graphics.Matrix();

    public CursorAnchorInfoController(MatrixPositionCalculator matrixPositionCalculator, InputMethodManager inputMethodManager) {
        this.f10761a = matrixPositionCalculator;
        this.f10762b = inputMethodManager;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0154  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    public final void a() {
        ?? r2;
        InputMethodManager inputMethodManager = this.f10762b;
        if (inputMethodManager.isActive()) {
            Function1 function1 = this.m;
            float[] fArr = this.q;
            function1.invoke(new Matrix(fArr));
            this.f10761a.o(fArr);
            android.graphics.Matrix matrix = this.r;
            AndroidMatrixConversions_androidKt.a(matrix, fArr);
            TextFieldValue textFieldValue = this.f10768j;
            textFieldValue.getClass();
            long j2 = textFieldValue.f10841b;
            OffsetMapping offsetMapping = this.l;
            offsetMapping.getClass();
            TextLayoutResult textLayoutResult = this.f10769k;
            textLayoutResult.getClass();
            Rect rect = this.n;
            rect.getClass();
            Rect rect2 = this.o;
            rect2.getClass();
            boolean z = this.f10765f;
            boolean z2 = this.g;
            boolean z3 = this.f10766h;
            boolean z4 = this.f10767i;
            CursorAnchorInfo.Builder builder = this.p;
            builder.reset();
            builder.setMatrix(matrix);
            TextRange textRange = textFieldValue.f10842c;
            int iF = TextRange.f(j2);
            builder.setSelectionRange(iF, TextRange.e(j2));
            if (z && iF >= 0) {
                int iB = offsetMapping.b(iF);
                Rect rectC = textLayoutResult.c(iB);
                float fC = RangesKt.c(rectC.f8811a, Call.Parameters.DEFAULT_CAMERA_ZOOM, (int) (textLayoutResult.f10554c >> 32));
                boolean zA = CursorAnchorInfoBuilder_androidKt.a(rect, fC, rectC.f8812b);
                boolean zA2 = CursorAnchorInfoBuilder_androidKt.a(rect, fC, rectC.d);
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
                float f2 = rectC.f8812b;
                float f3 = rectC.d;
                builder.setInsertionMarkerLocation(fC, f2, f3, f3, i2);
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
                        Rect rect3 = new Rect(fArr2[i4], fArr2[i4 + 1], fArr2[i4 + 2], fArr2[i4 + 3]);
                        boolean zG = rect.g(rect3);
                        if (!CursorAnchorInfoBuilder_androidKt.a(rect, rect3.f8811a, rect3.f8812b) || !CursorAnchorInfoBuilder_androidKt.a(rect, rect3.f8813c, rect3.d)) {
                            r2 = zG;
                            r2 = (zG ? 1 : 0) | 2;
                        }
                        r2 = zG;
                        if (textLayoutResult.a(iB4) == ResolvedTextDirection.Rtl) {
                            r2 = (r2 == true ? 1 : 0) | 4;
                        }
                        builder.addCharacterBounds(i3, rect3.f8811a, rect3.f8812b, rect3.f8813c, rect3.d, r2 == true ? 1 : 0);
                        i3++;
                        iB2 = i5;
                    }
                }
            }
            int i6 = Build.VERSION.SDK_INT;
            if (i6 >= 33 && z3) {
                CursorAnchorInfoApi33Helper.a(builder, rect2);
            }
            if (i6 >= 34 && z4) {
                CursorAnchorInfoApi34Helper.a(builder, textLayoutResult, rect);
            }
            inputMethodManager.updateCursorAnchorInfo(builder.build());
            this.f10764e = false;
        }
    }
}
