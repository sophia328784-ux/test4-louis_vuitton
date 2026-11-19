package com.vuitton.android.presentation.screen.storemode.models;

import com.vuitton.android.R;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r1v2 com.vuitton.android.presentation.screen.storemode.models.StoreModeContentUiModel[], still in use, count: 1, list:
  (r1v2 com.vuitton.android.presentation.screen.storemode.models.StoreModeContentUiModel[]) from 0x0020: INVOKE (r1v2 com.vuitton.android.presentation.screen.storemode.models.StoreModeContentUiModel[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
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
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;", "", "", "label", "I", "c", "()I", "Companion", "STORE", "ONLINE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class StoreModeContentUiModel {
    STORE(R.string.store_mode_toggle_in_store),
    ONLINE(R.string.store_mode_toggle_online);

    private static final /* synthetic */ EnumEntries $ENTRIES;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    private static final StoreModeContentUiModel initialValue;
    private final int label;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f65051a;

        static {
            int[] iArr = new int[StoreModeContentUiModel.values().length];
            try {
                iArr[StoreModeContentUiModel.STORE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[StoreModeContentUiModel.ONLINE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f65051a = iArr;
        }
    }

    static {
        StoreModeContentUiModel storeModeContentUiModel = STORE;
        $ENTRIES = EnumEntriesKt.a(storeModeContentUiModelArr);
        INSTANCE = new Companion(null);
        initialValue = storeModeContentUiModel;
    }

    public StoreModeContentUiModel(int i2) {
        super(str, i);
        this.label = i2;
    }

    public static EnumEntries b() {
        return $ENTRIES;
    }

    public static StoreModeContentUiModel valueOf(String str) {
        return (StoreModeContentUiModel) Enum.valueOf(StoreModeContentUiModel.class, str);
    }

    public static StoreModeContentUiModel[] values() {
        return (StoreModeContentUiModel[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final int getLabel() {
        return this.label;
    }
}
