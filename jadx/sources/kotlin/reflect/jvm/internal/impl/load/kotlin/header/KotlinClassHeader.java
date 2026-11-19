package kotlin.reflect.jvm.internal.impl.load.kotlin.header;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.MetadataVersion;

/* JADX INFO: loaded from: classes4.dex */
public final class KotlinClassHeader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Kind f73275a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MetadataVersion f73276b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String[] f73277c;
    public final String[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String[] f73278e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f73279f;
    public final int g;

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader$Kind[], still in use, count: 1, list:
      (r0v1 kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader$Kind[]) from 0x0042: INVOKE (r0v1 kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader$Kind[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
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
    public static final class Kind {
        UNKNOWN(0),
        CLASS(1),
        FILE_FACADE(2),
        SYNTHETIC_CLASS(3),
        MULTIFILE_CLASS(4),
        MULTIFILE_CLASS_PART(5);

        private static final /* synthetic */ EnumEntries $ENTRIES;
        public static final Companion Companion = new Companion(null);
        private static final Map<Integer, Kind> entryById;
        private final int id;

        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        static {
            $ENTRIES = EnumEntriesKt.a(new Kind[]{r0, r1, r2, r3, r4, r5});
            Kind[] kindArrValues = values();
            int iG = MapsKt.g(kindArrValues.length);
            LinkedHashMap linkedHashMap = new LinkedHashMap(iG < 16 ? 16 : iG);
            for (Kind kind : kindArrValues) {
                linkedHashMap.put(Integer.valueOf(kind.id), kind);
            }
            entryById = linkedHashMap;
        }

        public Kind(int i2) {
            super(str, i);
            this.id = i2;
        }

        public static Kind valueOf(String str) {
            return (Kind) Enum.valueOf(Kind.class, str);
        }

        public static Kind[] values() {
            return (Kind[]) $VALUES.clone();
        }
    }

    public KotlinClassHeader(Kind kind, MetadataVersion metadataVersion, String[] strArr, String[] strArr2, String[] strArr3, String str, int i2, String str2, byte[] bArr) {
        kind.getClass();
        metadataVersion.getClass();
        this.f73275a = kind;
        this.f73276b = metadataVersion;
        this.f73277c = strArr;
        this.d = strArr2;
        this.f73278e = strArr3;
        this.f73279f = str;
        this.g = i2;
    }

    public final String toString() {
        return this.f73275a + " version=" + this.f73276b;
    }
}
