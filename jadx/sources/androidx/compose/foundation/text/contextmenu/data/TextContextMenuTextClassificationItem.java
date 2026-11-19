package androidx.compose.foundation.text.contextmenu.data;

import android.view.textclassifier.TextClassification;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.tr;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuTextClassificationItem;", "Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;", "", ConfigurationName.KEY, "Landroid/view/textclassifier/TextClassification;", "textClassification", "", "index", "<init>", "(Ljava/lang/Object;Landroid/view/textclassifier/TextClassification;I)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextContextMenuTextClassificationItem extends TextContextMenuComponent {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextClassification f6076b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f6077c;

    public TextContextMenuTextClassificationItem(Object obj, TextClassification textClassification, int i2) {
        super(obj);
        this.f6076b = textClassification;
        this.f6077c = i2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TextContextMenuRemoteActionItem(key=");
        sb.append(this.f6065a);
        sb.append(", textClassification=");
        sb.append(this.f6076b);
        sb.append(", index=");
        return tr.k(sb, this.f6077c, ')');
    }
}
