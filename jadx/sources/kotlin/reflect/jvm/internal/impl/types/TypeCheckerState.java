package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayDeque;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.RigidTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext;
import kotlin.reflect.jvm.internal.impl.utils.SmartSet;

/* JADX INFO: loaded from: classes4.dex */
public class TypeCheckerState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f74233a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f74234b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f74235c;
    public final TypeSystemContext d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AbstractTypePreparator f74236e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AbstractTypeRefiner f74237f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ArrayDeque f74238h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public SmartSet f74239i;

    public interface ForkPointContext {

        public static final class Default implements ForkPointContext {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f74240a;

            @Override // kotlin.reflect.jvm.internal.impl.types.TypeCheckerState.ForkPointContext
            public final void a(Function0 function0) {
                if (this.f74240a) {
                    return;
                }
                this.f74240a = ((Boolean) ((AbstractTypeChecker$$Lambda$1) function0).mo47invoke()).booleanValue();
            }
        }

        void a(Function0 function0);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class LowerCapturedTypePolicy {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ LowerCapturedTypePolicy[] $VALUES;
        public static final LowerCapturedTypePolicy CHECK_ONLY_LOWER;
        public static final LowerCapturedTypePolicy CHECK_SUBTYPE_AND_LOWER;
        public static final LowerCapturedTypePolicy SKIP_LOWER;

        static {
            LowerCapturedTypePolicy lowerCapturedTypePolicy = new LowerCapturedTypePolicy("CHECK_ONLY_LOWER", 0);
            CHECK_ONLY_LOWER = lowerCapturedTypePolicy;
            LowerCapturedTypePolicy lowerCapturedTypePolicy2 = new LowerCapturedTypePolicy("CHECK_SUBTYPE_AND_LOWER", 1);
            CHECK_SUBTYPE_AND_LOWER = lowerCapturedTypePolicy2;
            LowerCapturedTypePolicy lowerCapturedTypePolicy3 = new LowerCapturedTypePolicy("SKIP_LOWER", 2);
            SKIP_LOWER = lowerCapturedTypePolicy3;
            LowerCapturedTypePolicy[] lowerCapturedTypePolicyArr = {lowerCapturedTypePolicy, lowerCapturedTypePolicy2, lowerCapturedTypePolicy3};
            $VALUES = lowerCapturedTypePolicyArr;
            $ENTRIES = EnumEntriesKt.a(lowerCapturedTypePolicyArr);
        }

        public static LowerCapturedTypePolicy valueOf(String str) {
            return (LowerCapturedTypePolicy) Enum.valueOf(LowerCapturedTypePolicy.class, str);
        }

        public static LowerCapturedTypePolicy[] values() {
            return (LowerCapturedTypePolicy[]) $VALUES.clone();
        }
    }

    public static abstract class SupertypesPolicy {

        public static abstract class DoCustomTransform extends SupertypesPolicy {
            public DoCustomTransform() {
                super(null);
            }
        }

        public static final class LowerIfFlexible extends SupertypesPolicy {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final LowerIfFlexible f74241a = new LowerIfFlexible(null);

            @Override // kotlin.reflect.jvm.internal.impl.types.TypeCheckerState.SupertypesPolicy
            public final RigidTypeMarker a(TypeCheckerState typeCheckerState, KotlinTypeMarker kotlinTypeMarker) {
                typeCheckerState.getClass();
                kotlinTypeMarker.getClass();
                return typeCheckerState.d.l0(kotlinTypeMarker);
            }
        }

        public static final class None extends SupertypesPolicy {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final None f74242a = new None(null);

            @Override // kotlin.reflect.jvm.internal.impl.types.TypeCheckerState.SupertypesPolicy
            public final RigidTypeMarker a(TypeCheckerState typeCheckerState, KotlinTypeMarker kotlinTypeMarker) {
                typeCheckerState.getClass();
                kotlinTypeMarker.getClass();
                throw new UnsupportedOperationException("Should not be called");
            }
        }

        public static final class UpperIfFlexible extends SupertypesPolicy {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final UpperIfFlexible f74243a = new UpperIfFlexible(null);

            @Override // kotlin.reflect.jvm.internal.impl.types.TypeCheckerState.SupertypesPolicy
            public final RigidTypeMarker a(TypeCheckerState typeCheckerState, KotlinTypeMarker kotlinTypeMarker) {
                typeCheckerState.getClass();
                kotlinTypeMarker.getClass();
                return typeCheckerState.d.w(kotlinTypeMarker);
            }
        }

        public SupertypesPolicy(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public abstract RigidTypeMarker a(TypeCheckerState typeCheckerState, KotlinTypeMarker kotlinTypeMarker);
    }

    public TypeCheckerState(boolean z, boolean z2, boolean z3, boolean z4, TypeSystemContext typeSystemContext, AbstractTypePreparator abstractTypePreparator, AbstractTypeRefiner abstractTypeRefiner) {
        typeSystemContext.getClass();
        abstractTypePreparator.getClass();
        abstractTypeRefiner.getClass();
        this.f74233a = z;
        this.f74234b = z2;
        this.f74235c = z3;
        this.d = typeSystemContext;
        this.f74236e = abstractTypePreparator;
        this.f74237f = abstractTypeRefiner;
    }

    public final void a() {
        ArrayDeque arrayDeque = this.f74238h;
        arrayDeque.getClass();
        arrayDeque.clear();
        SmartSet smartSet = this.f74239i;
        smartSet.getClass();
        smartSet.clear();
    }

    public boolean b(KotlinTypeMarker kotlinTypeMarker, KotlinTypeMarker kotlinTypeMarker2) {
        return true;
    }

    public final void c() {
        if (this.f74238h == null) {
            this.f74238h = new ArrayDeque(4);
        }
        if (this.f74239i == null) {
            SmartSet.d.getClass();
            this.f74239i = SmartSet.Companion.a();
        }
    }
}
