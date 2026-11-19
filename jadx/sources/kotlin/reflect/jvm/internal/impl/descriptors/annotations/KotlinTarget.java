package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.AbstractList;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v5 kotlin.reflect.jvm.internal.impl.descriptors.annotations.KotlinTarget[], still in use, count: 1, list:
  (r0v5 kotlin.reflect.jvm.internal.impl.descriptors.annotations.KotlinTarget[]) from 0x02b7: INVOKE (r0v6 kotlin.enums.EnumEntries) = (r0v5 kotlin.reflect.jvm.internal.impl.descriptors.annotations.KotlinTarget[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m)]
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
public final class KotlinTarget {
    CLASS("class", true),
    ANNOTATION_CLASS("annotation class", true),
    TYPE_PARAMETER("type parameter", false),
    PROPERTY("property", true),
    FIELD("field", true),
    LOCAL_VARIABLE("local variable", true),
    VALUE_PARAMETER("value parameter", true),
    CONSTRUCTOR("constructor", true),
    FUNCTION("function", true),
    PROPERTY_GETTER("getter", true),
    PROPERTY_SETTER("setter", true),
    TYPE("type usage", false),
    EXPRESSION("expression", false),
    FILE("file", false),
    TYPEALIAS("typealias", false),
    TYPE_PROJECTION("type projection", false),
    STAR_PROJECTION("star projection", false),
    PROPERTY_PARAMETER("property constructor parameter", false),
    CLASS_ONLY("class", false),
    OBJECT("object", false),
    STANDALONE_OBJECT("standalone object", false),
    COMPANION_OBJECT("companion object", false),
    INTERFACE("interface", false),
    ENUM_CLASS("enum class", false),
    ENUM_ENTRY("enum entry", false),
    LOCAL_CLASS("local class", false),
    LOCAL_FUNCTION("local function", false),
    MEMBER_FUNCTION("member function", false),
    TOP_LEVEL_FUNCTION("top level function", false),
    MEMBER_PROPERTY("member property", false),
    MEMBER_PROPERTY_WITH_BACKING_FIELD("member property with backing field", false),
    MEMBER_PROPERTY_WITH_DELEGATE("member property with delegate", false),
    MEMBER_PROPERTY_WITHOUT_FIELD_OR_DELEGATE("member property without backing field or delegate", false),
    TOP_LEVEL_PROPERTY("top level property", false),
    TOP_LEVEL_PROPERTY_WITH_BACKING_FIELD("top level property with backing field", false),
    TOP_LEVEL_PROPERTY_WITH_DELEGATE("top level property with delegate", false),
    TOP_LEVEL_PROPERTY_WITHOUT_FIELD_OR_DELEGATE("top level property without backing field or delegate", false),
    BACKING_FIELD("backing field", true),
    INITIALIZER("initializer", false),
    DESTRUCTURING_DECLARATION("destructuring declaration", false),
    LAMBDA_EXPRESSION("lambda expression", false),
    ANONYMOUS_FUNCTION("anonymous function", false),
    OBJECT_LITERAL("object literal", false);

    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final Set<KotlinTarget> ALL_TARGET_SET;
    private static final List<KotlinTarget> ANNOTATION_CLASS_LIST;
    private static final List<KotlinTarget> CLASS_LIST;
    private static final List<KotlinTarget> COMPANION_OBJECT_LIST;
    public static final Companion Companion;
    private static final Set<KotlinTarget> DEFAULT_TARGET_SET;
    private static final List<KotlinTarget> ENUM_ENTRY_LIST;
    private static final List<KotlinTarget> ENUM_LIST;
    private static final List<KotlinTarget> FILE_LIST;
    private static final List<KotlinTarget> FUNCTION_LIST;
    private static final List<KotlinTarget> INTERFACE_LIST;
    private static final List<KotlinTarget> LOCAL_CLASS_LIST;
    private static final List<KotlinTarget> OBJECT_LIST;
    private static final List<KotlinTarget> PROPERTY_GETTER_LIST;
    private static final List<KotlinTarget> PROPERTY_SETTER_LIST;
    private static final Map<AnnotationUseSiteTarget, KotlinTarget> USE_SITE_MAPPING;
    private static final HashMap<String, KotlinTarget> map;
    private final String description;
    private final boolean isDefault;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v32, types: [kotlin.reflect.jvm.internal.impl.descriptors.annotations.KotlinTarget$Companion] */
    static {
        EnumEntries enumEntriesA = EnumEntriesKt.a(kotlinTargetArr);
        $ENTRIES = enumEntriesA;
        Companion = new Object(null) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.annotations.KotlinTarget.Companion
        };
        map = new HashMap<>();
        for (KotlinTarget kotlinTarget : (AbstractList) enumEntriesA) {
            map.put(kotlinTarget.name(), kotlinTarget);
        }
        EnumEntries enumEntries = $ENTRIES;
        ArrayList arrayList = new ArrayList();
        for (Object obj : enumEntries) {
            if (((KotlinTarget) obj).isDefault) {
                arrayList.add(obj);
            }
        }
        DEFAULT_TARGET_SET = CollectionsKt.B0(arrayList);
        ALL_TARGET_SET = CollectionsKt.B0($ENTRIES);
        KotlinTarget kotlinTarget2 = ANNOTATION_CLASS;
        KotlinTarget kotlinTarget3 = CLASS;
        ANNOTATION_CLASS_LIST = CollectionsKt.P(kotlinTarget2, kotlinTarget3);
        LOCAL_CLASS_LIST = CollectionsKt.P(LOCAL_CLASS, kotlinTarget3);
        CLASS_LIST = CollectionsKt.P(CLASS_ONLY, kotlinTarget3);
        KotlinTarget kotlinTarget4 = COMPANION_OBJECT;
        KotlinTarget kotlinTarget5 = OBJECT;
        COMPANION_OBJECT_LIST = CollectionsKt.P(kotlinTarget4, kotlinTarget5, kotlinTarget3);
        OBJECT_LIST = CollectionsKt.P(STANDALONE_OBJECT, kotlinTarget5, kotlinTarget3);
        INTERFACE_LIST = CollectionsKt.P(INTERFACE, kotlinTarget3);
        ENUM_LIST = CollectionsKt.P(ENUM_CLASS, kotlinTarget3);
        KotlinTarget kotlinTarget6 = ENUM_ENTRY;
        KotlinTarget kotlinTarget7 = PROPERTY;
        KotlinTarget kotlinTarget8 = FIELD;
        ENUM_ENTRY_LIST = CollectionsKt.P(kotlinTarget6, kotlinTarget7, kotlinTarget8);
        KotlinTarget kotlinTarget9 = PROPERTY_SETTER;
        PROPERTY_SETTER_LIST = CollectionsKt.O(kotlinTarget9);
        KotlinTarget kotlinTarget10 = PROPERTY_GETTER;
        PROPERTY_GETTER_LIST = CollectionsKt.O(kotlinTarget10);
        FUNCTION_LIST = CollectionsKt.O(FUNCTION);
        KotlinTarget kotlinTarget11 = FILE;
        FILE_LIST = CollectionsKt.O(kotlinTarget11);
        AnnotationUseSiteTarget annotationUseSiteTarget = AnnotationUseSiteTarget.CONSTRUCTOR_PARAMETER;
        KotlinTarget kotlinTarget12 = VALUE_PARAMETER;
        USE_SITE_MAPPING = MapsKt.i(new Pair(annotationUseSiteTarget, kotlinTarget12), new Pair(AnnotationUseSiteTarget.FIELD, kotlinTarget8), new Pair(AnnotationUseSiteTarget.PROPERTY, kotlinTarget7), new Pair(AnnotationUseSiteTarget.FILE, kotlinTarget11), new Pair(AnnotationUseSiteTarget.PROPERTY_GETTER, kotlinTarget10), new Pair(AnnotationUseSiteTarget.PROPERTY_SETTER, kotlinTarget9), new Pair(AnnotationUseSiteTarget.RECEIVER, kotlinTarget12), new Pair(AnnotationUseSiteTarget.SETTER_PARAMETER, kotlinTarget12), new Pair(AnnotationUseSiteTarget.PROPERTY_DELEGATE_FIELD, kotlinTarget8));
    }

    public KotlinTarget(String str, boolean z) {
        super(str, i);
        this.description = str;
        this.isDefault = z;
    }

    public static KotlinTarget valueOf(String str) {
        return (KotlinTarget) Enum.valueOf(KotlinTarget.class, str);
    }

    public static KotlinTarget[] values() {
        return (KotlinTarget[]) $VALUES.clone();
    }
}
