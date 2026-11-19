package kotlin.jvm.internal;

import defpackage.v40;
import java.util.Collections;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.KVariance;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0007\u0018\u0000 \r2\u00020\u0001:\u0001\u000eB+\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Lkotlin/jvm/internal/TypeParameterReference;", "Lkotlin/jvm/internal/KTypeParameterBase;", "", "Lkotlin/jvm/internal/TypeParameterContainer;", "container", "", "name", "Lkotlin/reflect/KVariance;", "variance", "", "isReified", "<init>", "(Ljava/lang/Object;Ljava/lang/String;Lkotlin/reflect/KVariance;Z)V", "g", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class TypeParameterReference extends KTypeParameterBase {

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final KVariance f71927e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile List f71928f;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlin/jvm/internal/TypeParameterReference$Companion;", "", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {

        @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
        public static final /* synthetic */ class WhenMappings {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f71929a;

            static {
                int[] iArr = new int[KVariance.values().length];
                try {
                    iArr[KVariance.INVARIANT.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[KVariance.IN.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[KVariance.OUT.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                f71929a = iArr;
            }
        }

        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static String a(KTypeParameter kTypeParameter) {
            StringBuilder sb = new StringBuilder();
            int i2 = WhenMappings.f71929a[kTypeParameter.getF71927e().ordinal()];
            if (i2 != 1) {
                if (i2 == 2) {
                    sb.append("in ");
                } else {
                    if (i2 != 3) {
                        v40.g();
                        return null;
                    }
                    sb.append("out ");
                }
            }
            sb.append(kTypeParameter.getD());
            return sb.toString();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TypeParameterReference(Object obj, String str, KVariance kVariance, boolean z) {
        super(obj);
        obj.getClass();
        str.getClass();
        kVariance.getClass();
        this.d = str;
        this.f71927e = kVariance;
    }

    @Override // kotlin.reflect.KTypeParameter
    /* JADX INFO: renamed from: getName, reason: from getter */
    public final String getD() {
        return this.d;
    }

    @Override // kotlin.reflect.KTypeParameter
    public final List getUpperBounds() {
        List list = this.f71928f;
        if (list != null) {
            return list;
        }
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        List listO = CollectionsKt.O(reflectionFactory.l(reflectionFactory.b(Object.class), Collections.EMPTY_LIST, true));
        this.f71928f = listO;
        return listO;
    }

    @Override // kotlin.reflect.KTypeParameter
    /* JADX INFO: renamed from: l, reason: from getter */
    public final KVariance getF71927e() {
        return this.f71927e;
    }
}
