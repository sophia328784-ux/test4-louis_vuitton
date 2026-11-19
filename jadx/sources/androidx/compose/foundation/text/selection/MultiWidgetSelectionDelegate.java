package androidx.compose.foundation.text.selection;

import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.TextLayoutResult;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004\u0012\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;", "Landroidx/compose/foundation/text/selection/Selectable;", "", "selectableId", "Lkotlin/Function0;", "Landroidx/compose/ui/layout/LayoutCoordinates;", "coordinatesCallback", "Landroidx/compose/ui/text/TextLayoutResult;", "layoutResultCallback", "<init>", "(JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MultiWidgetSelectionDelegate implements Selectable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function0 f6351a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function0 f6352b;
    public TextLayoutResult d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MultiWidgetSelectionDelegate f6353c = this;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6354e = -1;

    public MultiWidgetSelectionDelegate(long j2, Function0<? extends LayoutCoordinates> function0, Function0<TextLayoutResult> function1) {
        this.f6351a = function0;
        this.f6352b = function1;
    }

    @Override // androidx.compose.foundation.text.selection.Selectable
    public final int a() {
        int i2;
        TextLayoutResult textLayoutResult = (TextLayoutResult) this.f6352b.mo47invoke();
        int i3 = 0;
        if (textLayoutResult == null) {
            return 0;
        }
        synchronized (this.f6353c) {
            try {
                if (this.d != textLayoutResult) {
                    if (textLayoutResult.d()) {
                        MultiParagraph multiParagraph = textLayoutResult.f10553b;
                        if (multiParagraph.f10463c) {
                            i3 = textLayoutResult.f10553b.f10465f - 1;
                        } else {
                            int iE = multiParagraph.e((int) (textLayoutResult.f10554c & BodyPartID.bodyIdMax));
                            int i4 = textLayoutResult.f10553b.f10465f - 1;
                            if (iE > i4) {
                                iE = i4;
                            }
                            while (iE >= 0 && textLayoutResult.f10553b.f(iE) >= ((int) (textLayoutResult.f10554c & BodyPartID.bodyIdMax))) {
                                iE--;
                            }
                            if (iE >= 0) {
                                i3 = iE;
                            }
                        }
                    } else {
                        i3 = textLayoutResult.f10553b.f10465f - 1;
                    }
                    this.f6354e = textLayoutResult.f10553b.c(i3, true);
                    this.d = textLayoutResult;
                }
                i2 = this.f6354e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return i2;
    }
}
