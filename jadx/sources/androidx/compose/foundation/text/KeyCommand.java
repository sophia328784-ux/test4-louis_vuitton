package androidx.compose.foundation.text;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v31 androidx.compose.foundation.text.KeyCommand[], still in use, count: 1, list:
  (r0v31 androidx.compose.foundation.text.KeyCommand[]) from 0x02ba: INVOKE (r0v31 androidx.compose.foundation.text.KeyCommand[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
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
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000b\n\u0002\b6\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1j\u0002\b2j\u0002\b3j\u0002\b4j\u0002\b5j\u0002\b6j\u0002\b7¨\u00068"}, d2 = {"Landroidx/compose/foundation/text/KeyCommand;", "", "", "editsText", "Z", "a", "()Z", "LEFT_CHAR", "RIGHT_CHAR", "RIGHT_WORD", "LEFT_WORD", "NEXT_PARAGRAPH", "PREV_PARAGRAPH", "LINE_START", "LINE_END", "LINE_LEFT", "LINE_RIGHT", "UP", "DOWN", "CENTER", "PAGE_UP", "PAGE_DOWN", "HOME", "END", "COPY", "PASTE", "CUT", "DELETE_PREV_CHAR", "DELETE_NEXT_CHAR", "DELETE_PREV_WORD", "DELETE_NEXT_WORD", "DELETE_FROM_LINE_START", "DELETE_TO_LINE_END", "SELECT_ALL", "SELECT_LEFT_CHAR", "SELECT_RIGHT_CHAR", "SELECT_UP", "SELECT_DOWN", "SELECT_PAGE_UP", "SELECT_PAGE_DOWN", "SELECT_HOME", "SELECT_END", "SELECT_LEFT_WORD", "SELECT_RIGHT_WORD", "SELECT_NEXT_PARAGRAPH", "SELECT_PREV_PARAGRAPH", "SELECT_LINE_START", "SELECT_LINE_END", "SELECT_LINE_LEFT", "SELECT_LINE_RIGHT", "DESELECT", "NEW_LINE", "TAB", "UNDO", "REDO", "CHARACTER_PALETTE", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class KeyCommand {
    LEFT_CHAR(false),
    RIGHT_CHAR(false),
    RIGHT_WORD(false),
    LEFT_WORD(false),
    NEXT_PARAGRAPH(false),
    PREV_PARAGRAPH(false),
    LINE_START(false),
    LINE_END(false),
    LINE_LEFT(false),
    LINE_RIGHT(false),
    UP(false),
    DOWN(false),
    CENTER(false),
    PAGE_UP(false),
    PAGE_DOWN(false),
    HOME(false),
    END(false),
    COPY(false),
    PASTE(true),
    CUT(true),
    DELETE_PREV_CHAR(true),
    DELETE_NEXT_CHAR(true),
    DELETE_PREV_WORD(true),
    DELETE_NEXT_WORD(true),
    DELETE_FROM_LINE_START(true),
    DELETE_TO_LINE_END(true),
    SELECT_ALL(false),
    SELECT_LEFT_CHAR(false),
    SELECT_RIGHT_CHAR(false),
    SELECT_UP(false),
    SELECT_DOWN(false),
    SELECT_PAGE_UP(false),
    SELECT_PAGE_DOWN(false),
    SELECT_HOME(false),
    SELECT_END(false),
    SELECT_LEFT_WORD(false),
    SELECT_RIGHT_WORD(false),
    SELECT_NEXT_PARAGRAPH(false),
    SELECT_PREV_PARAGRAPH(false),
    SELECT_LINE_START(false),
    SELECT_LINE_END(false),
    SELECT_LINE_LEFT(false),
    SELECT_LINE_RIGHT(false),
    DESELECT(false),
    NEW_LINE(true),
    TAB(true),
    UNDO(true),
    REDO(true),
    CHARACTER_PALETTE(true);

    private static final /* synthetic */ EnumEntries $ENTRIES;
    private final boolean editsText;

    static {
        $ENTRIES = EnumEntriesKt.a(keyCommandArr);
    }

    public KeyCommand(boolean z) {
        super(str, i);
        this.editsText = z;
    }

    public static KeyCommand valueOf(String str) {
        return (KeyCommand) Enum.valueOf(KeyCommand.class, str);
    }

    public static KeyCommand[] values() {
        return (KeyCommand[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final boolean getEditsText() {
        return this.editsText;
    }
}
