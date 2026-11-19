package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.SetSelectionCommand;
import androidx.compose.ui.text.input.TextFieldValue;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;", "Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;", "Landroidx/compose/ui/text/input/TextFieldValue;", "currentValue", "Landroidx/compose/ui/text/input/OffsetMapping;", "offsetMapping", "Landroidx/compose/foundation/text/TextLayoutResultProxy;", "layoutResultProxy", "Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;", "state", "<init>", "(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/TextLayoutResultProxy;Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextFieldPreparedSelection extends BaseTextPreparedSelection<TextFieldPreparedSelection> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TextFieldValue f6452h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextLayoutResultProxy f6453i;

    public TextFieldPreparedSelection(TextFieldValue textFieldValue, OffsetMapping offsetMapping, TextLayoutResultProxy textLayoutResultProxy, TextPreparedSelectionState textPreparedSelectionState) {
        super(textFieldValue.f10840a, textFieldValue.f10841b, textLayoutResultProxy != null ? textLayoutResultProxy.f6011a : null, offsetMapping, textPreparedSelectionState, null);
        this.f6452h = textFieldValue;
        this.f6453i = textLayoutResultProxy;
    }

    public final List q(Function1 function1) {
        if (!TextRange.c(this.f6340f)) {
            return CollectionsKt.P(new CommitTextCommand("", 0), new SetSelectionCommand(TextRange.f(this.f6340f), TextRange.f(this.f6340f)));
        }
        EditCommand editCommand = (EditCommand) function1.invoke(this);
        if (editCommand != null) {
            return CollectionsKt.O(editCommand);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0013  */
    public final int r(TextLayoutResultProxy textLayoutResultProxy, int i2) {
        Rect rectL;
        LayoutCoordinates layoutCoordinates = textLayoutResultProxy.f6012b;
        TextLayoutResult textLayoutResult = textLayoutResultProxy.f6011a;
        if (layoutCoordinates == null) {
            Rect.f8809e.getClass();
            rectL = Rect.f8810f;
        } else {
            LayoutCoordinates layoutCoordinates2 = textLayoutResultProxy.f6013c;
            rectL = layoutCoordinates2 != null ? layoutCoordinates2.L(layoutCoordinates, true) : null;
            if (rectL == null) {
                Rect.f8809e.getClass();
                rectL = Rect.f8810f;
            }
        }
        long j2 = this.f6452h.f10841b;
        TextRange.Companion companion = TextRange.f10564b;
        int i3 = (int) (j2 & BodyPartID.bodyIdMax);
        OffsetMapping offsetMapping = this.d;
        Rect rectC = textLayoutResult.c(offsetMapping.b(i3));
        float f2 = rectC.f8811a;
        float fIntBitsToFloat = (Float.intBitsToFloat((int) (rectL.c() & BodyPartID.bodyIdMax)) * i2) + rectC.f8812b;
        long jFloatToRawIntBits = Float.floatToRawIntBits(f2);
        long jFloatToRawIntBits2 = ((long) Float.floatToRawIntBits(fIntBitsToFloat)) & BodyPartID.bodyIdMax;
        Offset.Companion companion2 = Offset.f8806b;
        return offsetMapping.a(textLayoutResult.f10553b.g(jFloatToRawIntBits2 | (jFloatToRawIntBits << 32)));
    }

    public /* synthetic */ TextFieldPreparedSelection(TextFieldValue textFieldValue, OffsetMapping offsetMapping, TextLayoutResultProxy textLayoutResultProxy, TextPreparedSelectionState textPreparedSelectionState, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(textFieldValue, (i2 & 2) != 0 ? OffsetMapping.Companion.f10821a : offsetMapping, textLayoutResultProxy, (i2 & 8) != 0 ? new TextPreparedSelectionState() : textPreparedSelectionState);
    }
}
