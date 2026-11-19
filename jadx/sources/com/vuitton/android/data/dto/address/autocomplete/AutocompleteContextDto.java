package com.vuitton.android.data.dto.address.autocomplete;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.w9;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.vuitton.android.data.dto.address.autocomplete.AutocompleteContextDto[], still in use, count: 1, list:
  (r0v1 com.vuitton.android.data.dto.address.autocomplete.AutocompleteContextDto[]) from 0x0042: INVOKE (r0v1 com.vuitton.android.data.dto.address.autocomplete.AutocompleteContextDto[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
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
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\t\b\u0087\u0081\u0002\u0018\u0000 \u00052\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;", "", "", "value", "Ljava/lang/String;", "Companion", "REGISTER", "ADDRESS_BOOK", "ONLINE_STORE_APPOINTMENT", "TRAVEL", "FIND_IN_STORE", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final class AutocompleteContextDto {
    REGISTER("register"),
    ADDRESS_BOOK("addressBook"),
    ONLINE_STORE_APPOINTMENT("onlineStoreAppointment"),
    TRAVEL("travel"),
    FIND_IN_STORE("findInStore");

    private static final /* synthetic */ EnumEntries $ENTRIES;
    private final String value;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Object(null) { // from class: com.vuitton.android.data.dto.address.autocomplete.AutocompleteContextDto.Companion
        public final KSerializer<AutocompleteContextDto> serializer() {
            return (KSerializer) AutocompleteContextDto.$cachedSerializer$delegate.getF71699b();
        }
    };
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new w9(9));

    /* JADX WARN: Type inference failed for: r0v3, types: [com.vuitton.android.data.dto.address.autocomplete.AutocompleteContextDto$Companion] */
    static {
        $ENTRIES = EnumEntriesKt.a(new AutocompleteContextDto[]{r0, r1, r2, r3, r4});
    }

    public AutocompleteContextDto(String str) {
        super(str, i);
        this.value = str;
    }

    public static AutocompleteContextDto valueOf(String str) {
        return (AutocompleteContextDto) Enum.valueOf(AutocompleteContextDto.class, str);
    }

    public static AutocompleteContextDto[] values() {
        return (AutocompleteContextDto[]) $VALUES.clone();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.value;
    }
}
