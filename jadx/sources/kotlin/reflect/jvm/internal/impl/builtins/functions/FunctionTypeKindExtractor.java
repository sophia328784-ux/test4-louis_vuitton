package kotlin.reflect.jvm.internal.impl.builtins.functions;

import defpackage.tr;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class FunctionTypeKindExtractor {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f72297c = new Companion(null);
    public static final FunctionTypeKindExtractor d = new FunctionTypeKindExtractor(CollectionsKt.P(FunctionTypeKind.Function.f72293c, FunctionTypeKind.SuspendFunction.f72296c, FunctionTypeKind.KFunction.f72294c, FunctionTypeKind.KSuspendFunction.f72295c));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f72298a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkedHashMap f72299b;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static final class KindWithArity {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final FunctionTypeKind f72300a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f72301b;

        public KindWithArity(FunctionTypeKind functionTypeKind, int i2) {
            functionTypeKind.getClass();
            this.f72300a = functionTypeKind;
            this.f72301b = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof KindWithArity)) {
                return false;
            }
            KindWithArity kindWithArity = (KindWithArity) obj;
            return Intrinsics.c(this.f72300a, kindWithArity.f72300a) && this.f72301b == kindWithArity.f72301b;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f72301b) + (this.f72300a.hashCode() * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("KindWithArity(kind=");
            sb.append(this.f72300a);
            sb.append(", arity=");
            return tr.k(sb, this.f72301b, ')');
        }
    }

    public FunctionTypeKindExtractor(List<? extends FunctionTypeKind> list) {
        list.getClass();
        this.f72298a = list;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : list) {
            FqName fqName = ((FunctionTypeKind) obj).f72291a;
            Object arrayList = linkedHashMap.get(fqName);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(fqName, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        this.f72299b = linkedHashMap;
    }

    public final KindWithArity a(String str, FqName fqName) {
        Integer numValueOf;
        fqName.getClass();
        str.getClass();
        List<FunctionTypeKind> list = (List) this.f72299b.get(fqName);
        if (list != null) {
            for (FunctionTypeKind functionTypeKind : list) {
                int i2 = 0;
                if (StringsKt.P(str, functionTypeKind.f72292b, false)) {
                    String strSubstring = str.substring(functionTypeKind.f72292b.length());
                    if (strSubstring.length() == 0) {
                        numValueOf = null;
                        break;
                    }
                    int length = strSubstring.length();
                    int i3 = 0;
                    while (true) {
                        if (i2 >= length) {
                            numValueOf = Integer.valueOf(i3);
                            break;
                        }
                        int iCharAt = strSubstring.charAt(i2) - '0';
                        if (iCharAt < 0 || iCharAt >= 10) {
                            numValueOf = null;
                            break;
                        }
                        i3 = (i3 * 10) + iCharAt;
                        i2++;
                    }
                    if (numValueOf != null) {
                        return new KindWithArity(functionTypeKind, numValueOf.intValue());
                    }
                }
            }
        }
        return null;
    }
}
