package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.AnnotatedStringKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import defpackage.ck;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/text/input/EditProcessor;", "", "<init>", "()V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class EditProcessor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public TextFieldValue f10776a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public EditingBuffer f10777b;

    public EditProcessor() {
        AnnotatedString annotatedString = AnnotatedStringKt.f10431a;
        TextRange.f10564b.getClass();
        this.f10776a = new TextFieldValue(annotatedString, TextRange.f10565c, (TextRange) null, (DefaultConstructorMarker) null);
        TextFieldValue textFieldValue = this.f10776a;
        this.f10777b = new EditingBuffer(textFieldValue.f10840a, textFieldValue.f10841b, (DefaultConstructorMarker) null);
    }

    public final TextFieldValue a(List list) {
        EditCommand editCommand = null;
        try {
            int size = list.size();
            int i2 = 0;
            EditCommand editCommand2 = null;
            while (i2 < size) {
                try {
                    EditCommand editCommand3 = (EditCommand) list.get(i2);
                    try {
                        editCommand3.a(this.f10777b);
                        i2++;
                        editCommand2 = editCommand3;
                    } catch (Exception e2) {
                        e = e2;
                        editCommand = editCommand3;
                        StringBuilder sb = new StringBuilder();
                        StringBuilder sb2 = new StringBuilder("Error while applying EditCommand batch to buffer (length=");
                        sb2.append(this.f10777b.f10778a.a());
                        sb2.append(", composition=");
                        sb2.append(this.f10777b.c());
                        sb2.append(", selection=");
                        EditingBuffer editingBuffer = this.f10777b;
                        sb2.append((Object) TextRange.h(TextRangeKt.a(editingBuffer.f10779b, editingBuffer.f10780c)));
                        sb2.append("):");
                        sb.append(sb2.toString());
                        sb.append('\n');
                        CollectionsKt.J(list, sb, "\n", null, null, new ck(editCommand, this), 60);
                        throw new RuntimeException(sb.toString(), e);
                    }
                } catch (Exception e3) {
                    e = e3;
                    editCommand = editCommand2;
                }
            }
            EditingBuffer editingBuffer2 = this.f10777b;
            editingBuffer2.getClass();
            AnnotatedString annotatedString = new AnnotatedString(editingBuffer2.f10778a.toString(), null, 2, null);
            EditingBuffer editingBuffer3 = this.f10777b;
            long jA = TextRangeKt.a(editingBuffer3.f10779b, editingBuffer3.f10780c);
            TextRange textRange = TextRange.g(this.f10776a.f10841b) ? null : new TextRange(jA);
            TextFieldValue textFieldValue = new TextFieldValue(annotatedString, textRange != null ? textRange.f10566a : TextRangeKt.a(TextRange.e(jA), TextRange.f(jA)), this.f10777b.c(), (DefaultConstructorMarker) null);
            this.f10776a = textFieldValue;
            return textFieldValue;
        } catch (Exception e4) {
            e = e4;
        }
    }
}
