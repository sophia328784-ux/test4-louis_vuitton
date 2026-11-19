package androidx.compose.foundation.text;

import androidx.compose.ui.text.input.TextFieldValue;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/compose/foundation/text/UndoManager;", "", "", "maxStoredCharacters", "<init>", "(I)V", "Entry", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class UndoManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f6029a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Entry f6030b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Entry f6031c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Long f6032e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f6033f;

    public /* synthetic */ UndoManager(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 100000 : i2);
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0060  */
    public final void a(TextFieldValue textFieldValue) {
        Entry entry;
        TextFieldValue textFieldValue2;
        this.f6033f = false;
        Entry entry2 = this.f6030b;
        if (Intrinsics.c(textFieldValue, entry2 != null ? entry2.f6035b : null)) {
            return;
        }
        String str = textFieldValue.f10840a.f10420c;
        Entry entry3 = this.f6030b;
        boolean zC = Intrinsics.c(str, (entry3 == null || (textFieldValue2 = entry3.f6035b) == null) ? null : textFieldValue2.f10840a.f10420c);
        Entry entry4 = this.f6030b;
        if (zC) {
            if (entry4 != null) {
                entry4.f6035b = textFieldValue;
                return;
            }
            return;
        }
        this.f6030b = new Entry(entry4, textFieldValue);
        this.f6031c = null;
        int length = textFieldValue.f10840a.f10420c.length() + this.d;
        this.d = length;
        if (length > this.f6029a) {
            Entry entry5 = this.f6030b;
            if ((entry5 != null ? entry5.f6034a : null) == null) {
                return;
            }
            while (true) {
                if (entry5 == null) {
                    entry = null;
                } else {
                    Entry entry6 = entry5.f6034a;
                    if (entry6 != null) {
                        entry = entry6.f6034a;
                    } else {
                        entry = null;
                    }
                }
                if (entry == null) {
                    break;
                } else {
                    entry5 = entry5.f6034a;
                }
            }
            if (entry5 != null) {
                entry5.f6034a = null;
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/foundation/text/UndoManager$Entry;", "", "next", "Landroidx/compose/ui/text/input/TextFieldValue;", "value", "<init>", "(Landroidx/compose/foundation/text/UndoManager$Entry;Landroidx/compose/ui/text/input/TextFieldValue;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Entry {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Entry f6034a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextFieldValue f6035b;

        public /* synthetic */ Entry(Entry entry, TextFieldValue textFieldValue, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : entry, textFieldValue);
        }

        public Entry(Entry entry, TextFieldValue textFieldValue) {
            this.f6034a = entry;
            this.f6035b = textFieldValue;
        }
    }

    public UndoManager(int i2) {
        this.f6029a = i2;
    }

    public UndoManager() {
        this(0, 1, null);
    }
}
