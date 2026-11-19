package androidx.compose.foundation.text;

import android.R;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuKeys;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 androidx.compose.foundation.text.TextContextMenuItems[], still in use, count: 1, list:
  (r0v1 androidx.compose.foundation.text.TextContextMenuItems[]) from 0x0081: INVOKE (r0v1 androidx.compose.foundation.text.TextContextMenuItems[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\r\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\t\u001a\u0004\b\u000e\u0010\u000bj\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013¨\u0006\u0014"}, d2 = {"Landroidx/compose/foundation/text/TextContextMenuItems;", "", "", ConfigurationName.KEY, "Ljava/lang/Object;", NBSSpanMetricUnit.Bit, "()Ljava/lang/Object;", "Landroidx/compose/foundation/text/ContextMenuStrings;", "stringId", "I", "c", "()I", "Landroidx/compose/foundation/text/ContextMenuIcons;", "drawableId", "a", "Cut", "Copy", "Paste", "SelectAll", "Autofill", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextContextMenuItems {
    Cut(TextContextMenuKeys.f6071a, R.string.cut, R.attr.actionModeCutDrawable),
    Copy(TextContextMenuKeys.f6072b, R.string.copy, R.attr.actionModeCopyDrawable),
    Paste(TextContextMenuKeys.f6073c, R.string.paste, R.attr.actionModePasteDrawable),
    SelectAll(TextContextMenuKeys.d, R.string.selectAll, R.attr.actionModeSelectAllDrawable),
    Autofill(TextContextMenuKeys.f6074e, R.string.autofill, 0);

    private static final /* synthetic */ EnumEntries $ENTRIES;
    private final int drawableId;
    private final Object key;
    private final int stringId;

    static {
        ContextMenuStrings.Companion companion = ContextMenuStrings.f5860a;
        companion.getClass();
        ContextMenuIcons.Companion companion2 = ContextMenuIcons.f5859a;
        companion2.getClass();
        companion.getClass();
        companion2.getClass();
        companion.getClass();
        companion2.getClass();
        companion.getClass();
        companion2.getClass();
        companion.getClass();
        companion2.getClass();
        $ENTRIES = EnumEntriesKt.a(textContextMenuItemsArr);
    }

    public TextContextMenuItems(Object obj, int i2, int i3) {
        super(str, i);
        this.key = obj;
        this.stringId = i2;
        this.drawableId = i3;
    }

    public static TextContextMenuItems valueOf(String str) {
        return (TextContextMenuItems) Enum.valueOf(TextContextMenuItems.class, str);
    }

    public static TextContextMenuItems[] values() {
        return (TextContextMenuItems[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final int getDrawableId() {
        return this.drawableId;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final Object getKey() {
        return this.key;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final int getStringId() {
        return this.stringId;
    }
}
