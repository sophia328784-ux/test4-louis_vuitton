package kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization;

import defpackage.o60;
import defpackage.v40;
import io.jsonwebtoken.JwtParser;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.collections.IndexingIterable;
import kotlin.collections.IndexingIterator;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.protobuf.ByteString;

/* JADX INFO: loaded from: classes4.dex */
public class JvmNameResolverBase implements NameResolver {
    public static final List d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String[] f73668a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set f73669b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f73670c;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f73671a;

        static {
            int[] iArr = new int[JvmProtoBuf.StringTableTypes.Record.Operation.values().length];
            try {
                iArr[JvmProtoBuf.StringTableTypes.Record.Operation.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[JvmProtoBuf.StringTableTypes.Record.Operation.INTERNAL_TO_CLASS_ID.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[JvmProtoBuf.StringTableTypes.Record.Operation.DESC_TO_CLASS_ID.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f73671a = iArr;
        }
    }

    static {
        new Companion(null);
        String strK = CollectionsKt.K(CollectionsKt.P('k', 'o', 't', 'l', 'i', 'n'), "", null, null, null, 62);
        List listP = CollectionsKt.P(strK.concat("/Any"), strK.concat("/Nothing"), strK.concat("/Unit"), strK.concat("/Throwable"), strK.concat("/Number"), strK.concat("/Byte"), strK.concat("/Double"), strK.concat("/Float"), strK.concat("/Int"), strK.concat("/Long"), strK.concat("/Short"), strK.concat("/Boolean"), strK.concat("/Char"), strK.concat("/CharSequence"), strK.concat("/String"), strK.concat("/Comparable"), strK.concat("/Enum"), strK.concat("/Array"), strK.concat("/ByteArray"), strK.concat("/DoubleArray"), strK.concat("/FloatArray"), strK.concat("/IntArray"), strK.concat("/LongArray"), strK.concat("/ShortArray"), strK.concat("/BooleanArray"), strK.concat("/CharArray"), strK.concat("/Cloneable"), strK.concat("/Annotation"), strK.concat("/collections/Iterable"), strK.concat("/collections/MutableIterable"), strK.concat("/collections/Collection"), strK.concat("/collections/MutableCollection"), strK.concat("/collections/List"), strK.concat("/collections/MutableList"), strK.concat("/collections/Set"), strK.concat("/collections/MutableSet"), strK.concat("/collections/Map"), strK.concat("/collections/MutableMap"), strK.concat("/collections/Map.Entry"), strK.concat("/collections/MutableMap.MutableEntry"), strK.concat("/collections/Iterator"), strK.concat("/collections/MutableIterator"), strK.concat("/collections/ListIterator"), strK.concat("/collections/MutableListIterator"));
        d = listP;
        IndexingIterable indexingIterableD0 = CollectionsKt.D0(listP);
        int iG = MapsKt.g(CollectionsKt.t(indexingIterableD0, 10));
        if (iG < 16) {
            iG = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iG);
        Iterator it = indexingIterableD0.iterator();
        while (true) {
            IndexingIterator indexingIterator = (IndexingIterator) it;
            if (!indexingIterator.f71774b.hasNext()) {
                return;
            }
            IndexedValue indexedValue = (IndexedValue) indexingIterator.next();
            linkedHashMap.put((String) indexedValue.f71772b, Integer.valueOf(indexedValue.f71771a));
        }
    }

    public JvmNameResolverBase(String[] strArr, Set<Integer> set, List<JvmProtoBuf.StringTableTypes.Record> list) {
        strArr.getClass();
        set.getClass();
        list.getClass();
        this.f73668a = strArr;
        this.f73669b = set;
        this.f73670c = list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver
    public final boolean a(int i2) {
        return this.f73669b.contains(Integer.valueOf(i2));
    }

    @Override // kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver
    public final String b(int i2) {
        return getString(i2);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0042  */
    @Override // kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver
    public final String getString(int i2) {
        String strReplace;
        JvmProtoBuf.StringTableTypes.Record record = (JvmProtoBuf.StringTableTypes.Record) this.f73670c.get(i2);
        int i3 = record.f73649c;
        if ((i3 & 4) == 4) {
            Object obj = record.f73651f;
            if (obj instanceof String) {
                strReplace = (String) obj;
            } else {
                ByteString byteString = (ByteString) obj;
                String strU = byteString.u();
                if (byteString.o()) {
                    record.f73651f = strU;
                }
                strReplace = strU;
            }
        } else if ((i3 & 2) == 2) {
            List list = d;
            int size = list.size();
            int i4 = record.f73650e;
            if (i4 < 0 || i4 >= size) {
                strReplace = this.f73668a[i2];
            } else {
                strReplace = (String) list.get(i4);
            }
        } else {
            strReplace = this.f73668a[i2];
        }
        if (record.f73652h.size() >= 2) {
            List list2 = record.f73652h;
            list2.getClass();
            Integer num = (Integer) list2.get(0);
            Integer num2 = (Integer) list2.get(1);
            if (num.intValue() >= 0 && num.intValue() <= num2.intValue() && num2.intValue() <= strReplace.length()) {
                strReplace = strReplace.substring(num.intValue(), num2.intValue());
            }
        }
        if (record.f73654j.size() >= 2) {
            List list3 = record.f73654j;
            list3.getClass();
            Integer num3 = (Integer) list3.get(0);
            Integer num4 = (Integer) list3.get(1);
            strReplace.getClass();
            strReplace = strReplace.replace((char) num3.intValue(), (char) num4.intValue());
            strReplace.getClass();
        }
        JvmProtoBuf.StringTableTypes.Record.Operation operation = record.g;
        if (operation == null) {
            operation = JvmProtoBuf.StringTableTypes.Record.Operation.NONE;
        }
        int i5 = WhenMappings.f73671a[operation.ordinal()];
        if (i5 != 1) {
            if (i5 == 2) {
                strReplace.getClass();
                strReplace = strReplace.replace('$', JwtParser.SEPARATOR_CHAR);
                strReplace.getClass();
            } else {
                if (i5 != 3) {
                    v40.g();
                    return null;
                }
                if (strReplace.length() >= 2) {
                    strReplace = o60.g(1, 1, strReplace);
                }
                strReplace = strReplace.replace('$', JwtParser.SEPARATOR_CHAR);
                strReplace.getClass();
            }
        }
        strReplace.getClass();
        return strReplace;
    }
}
