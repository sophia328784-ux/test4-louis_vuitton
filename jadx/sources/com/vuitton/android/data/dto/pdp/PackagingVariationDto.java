package com.vuitton.android.data.dto.pdp;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.ii0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.vuitton.android.data.dto.pdp.PackagingVariationDto[], still in use, count: 1, list:
  (r0v1 com.vuitton.android.data.dto.pdp.PackagingVariationDto[]) from 0x000d: INVOKE (r0v1 com.vuitton.android.data.dto.pdp.PackagingVariationDto[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
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
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0087\u0081\u0002\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto;", "", "", "value", "Ljava/lang/String;", NBSSpanMetricUnit.Bit, "()Ljava/lang/String;", "Companion", "BABY", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final class PackagingVariationDto {
    BABY;

    private static final /* synthetic */ EnumEntries $ENTRIES;
    private final String value;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Object(null) { // from class: com.vuitton.android.data.dto.pdp.PackagingVariationDto.Companion
        public final KSerializer<PackagingVariationDto> serializer() {
            return (KSerializer) PackagingVariationDto.$cachedSerializer$delegate.getF71699b();
        }
    };
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new ii0(25));

    /* JADX WARN: Type inference failed for: r0v3, types: [com.vuitton.android.data.dto.pdp.PackagingVariationDto$Companion] */
    static {
        $ENTRIES = EnumEntriesKt.a(new PackagingVariationDto[]{r0});
    }

    public PackagingVariationDto() {
        super("BABY", 0);
        this.value = "NEW-BORN";
    }

    public static PackagingVariationDto valueOf(String str) {
        return (PackagingVariationDto) Enum.valueOf(PackagingVariationDto.class, str);
    }

    public static PackagingVariationDto[] values() {
        return (PackagingVariationDto[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getValue() {
        return this.value;
    }
}
