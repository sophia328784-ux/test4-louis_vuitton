package kotlin.reflect.jvm.internal.impl.metadata.deserialization;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.v40;
import java.util.LinkedList;
import java.util.List;
import kotlin.Triple;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$StringTable;

/* JADX INFO: loaded from: classes4.dex */
public final class NameResolverImpl implements NameResolver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ProtoBuf$StringTable f73586a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ProtoBuf$QualifiedNameTable f73587b;

    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f73588a;

        static {
            int[] iArr = new int[ProtoBuf$QualifiedNameTable.QualifiedName.Kind.values().length];
            try {
                iArr[ProtoBuf$QualifiedNameTable.QualifiedName.Kind.CLASS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ProtoBuf$QualifiedNameTable.QualifiedName.Kind.PACKAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ProtoBuf$QualifiedNameTable.QualifiedName.Kind.LOCAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f73588a = iArr;
        }
    }

    public NameResolverImpl(ProtoBuf$StringTable protoBuf$StringTable, ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable) {
        protoBuf$StringTable.getClass();
        protoBuf$QualifiedNameTable.getClass();
        this.f73586a = protoBuf$StringTable;
        this.f73587b = protoBuf$QualifiedNameTable;
    }

    @Override // kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver
    public final boolean a(int i2) {
        return ((Boolean) c(i2).d).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver
    public final String b(int i2) {
        Triple tripleC = c(i2);
        List list = (List) tripleC.f71716b;
        String strK = CollectionsKt.K((List) tripleC.f71717c, FileUtils.HIDDEN_PREFIX, null, null, null, 62);
        if (list.isEmpty()) {
            return strK;
        }
        return CollectionsKt.K(list, "/", null, null, null, 62) + '/' + strK;
    }

    public final Triple c(int i2) {
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        boolean z = false;
        while (i2 != -1) {
            ProtoBuf$QualifiedNameTable.QualifiedName qualifiedName = (ProtoBuf$QualifiedNameTable.QualifiedName) this.f73587b.f73452c.get(i2);
            String str = this.f73586a.f73467c.get(qualifiedName.f73459e);
            ProtoBuf$QualifiedNameTable.QualifiedName.Kind kind = qualifiedName.f73460f;
            kind.getClass();
            int i3 = WhenMappings.f73588a[kind.ordinal()];
            if (i3 == 1) {
                linkedList2.addFirst(str);
            } else if (i3 == 2) {
                linkedList.addFirst(str);
            } else {
                if (i3 != 3) {
                    v40.g();
                    return null;
                }
                linkedList2.addFirst(str);
                z = true;
            }
            i2 = qualifiedName.d;
        }
        return new Triple(linkedList, linkedList2, Boolean.valueOf(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver
    public final String getString(int i2) {
        String str = this.f73586a.f73467c.get(i2);
        str.getClass();
        return str;
    }
}
