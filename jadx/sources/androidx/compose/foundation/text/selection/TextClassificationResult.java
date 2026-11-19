package androidx.compose.foundation.text.selection;

import android.view.textclassifier.TextClassification;
import androidx.compose.ui.text.TextRange;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/text/selection/TextClassificationResult;", "", "", "text", "Landroidx/compose/ui/text/TextRange;", "selection", "Landroid/view/textclassifier/TextClassification;", "textClassification", "<init>", "(Ljava/lang/CharSequence;JLandroid/view/textclassifier/TextClassification;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final /* data */ class TextClassificationResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CharSequence f6448a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f6449b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextClassification f6450c;

    public TextClassificationResult(CharSequence charSequence, long j2, TextClassification textClassification, DefaultConstructorMarker defaultConstructorMarker) {
        this.f6448a = charSequence;
        this.f6449b = j2;
        this.f6450c = textClassification;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextClassificationResult)) {
            return false;
        }
        TextClassificationResult textClassificationResult = (TextClassificationResult) obj;
        return Intrinsics.c(this.f6448a, textClassificationResult.f6448a) && TextRange.b(this.f6449b, textClassificationResult.f6449b) && Intrinsics.c(this.f6450c, textClassificationResult.f6450c);
    }

    public final int hashCode() {
        int iHashCode = this.f6448a.hashCode() * 31;
        TextRange.Companion companion = TextRange.f10564b;
        return this.f6450c.hashCode() + fc.a(iHashCode, 31, this.f6449b);
    }

    public final String toString() {
        return "TextClassificationResult(text=" + ((Object) this.f6448a) + ", selection=" + ((Object) TextRange.h(this.f6449b)) + ", textClassification=" + this.f6450c + ')';
    }
}
