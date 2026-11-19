package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import defpackage.md;
import defpackage.v40;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentDeclarationFilter;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;

/* JADX INFO: loaded from: classes4.dex */
public final class JvmBuiltIns extends KotlinBuiltIns {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ KProperty[] f72326i = {Reflection.f71922a.h(new PropertyReference1Impl(JvmBuiltIns.class, "customizer", "getCustomizer()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltInsCustomizer;", 0))};
    public Function0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final NotNullLazyValue f72327h;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Kind {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Kind[] $VALUES;
        public static final Kind FALLBACK;
        public static final Kind FROM_CLASS_LOADER;
        public static final Kind FROM_DEPENDENCIES;

        static {
            Kind kind = new Kind("FROM_DEPENDENCIES", 0);
            FROM_DEPENDENCIES = kind;
            Kind kind2 = new Kind("FROM_CLASS_LOADER", 1);
            FROM_CLASS_LOADER = kind2;
            Kind kind3 = new Kind("FALLBACK", 2);
            FALLBACK = kind3;
            Kind[] kindArr = {kind, kind2, kind3};
            $VALUES = kindArr;
            $ENTRIES = EnumEntriesKt.a(kindArr);
        }

        public static Kind valueOf(String str) {
            return (Kind) Enum.valueOf(Kind.class, str);
        }

        public static Kind[] values() {
            return (Kind[]) $VALUES.clone();
        }
    }

    public static final class Settings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ModuleDescriptor f72333a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f72334b;

        public Settings(ModuleDescriptor moduleDescriptor, boolean z) {
            moduleDescriptor.getClass();
            this.f72333a = moduleDescriptor;
            this.f72334b = z;
        }
    }

    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f72335a;

        static {
            int[] iArr = new int[Kind.values().length];
            try {
                iArr[Kind.FROM_DEPENDENCIES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Kind.FROM_CLASS_LOADER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Kind.FALLBACK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f72335a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JvmBuiltIns(final StorageManager storageManager, Kind kind) {
        super(storageManager);
        storageManager.getClass();
        kind.getClass();
        this.f72327h = storageManager.c(new Function0(this, storageManager) { // from class: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltIns$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final JvmBuiltIns f72328b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final StorageManager f72329c;

            {
                this.f72328b = this;
                this.f72329c = storageManager;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                KProperty[] kPropertyArr = JvmBuiltIns.f72326i;
                final JvmBuiltIns jvmBuiltIns = this.f72328b;
                ModuleDescriptorImpl moduleDescriptorImplL = jvmBuiltIns.l();
                moduleDescriptorImplL.getClass();
                return new JvmBuiltInsCustomizer(moduleDescriptorImplL, this.f72329c, new Function0(jvmBuiltIns) { // from class: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltIns$$Lambda$2

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final JvmBuiltIns f72332b;

                    {
                        this.f72332b = jvmBuiltIns;
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        JvmBuiltIns jvmBuiltIns2 = this.f72332b;
                        Function0 function0 = jvmBuiltIns2.g;
                        if (function0 == null) {
                            md.h("JvmBuiltins instance has not been initialized properly");
                            return null;
                        }
                        JvmBuiltIns.Settings settings = (JvmBuiltIns.Settings) function0.mo47invoke();
                        jvmBuiltIns2.g = null;
                        return settings;
                    }
                });
            }
        });
        int i2 = WhenMappings.f72335a[kind.ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                c(false);
            } else if (i2 == 3) {
                c(true);
            } else {
                v40.g();
                throw null;
            }
        }
    }

    public final JvmBuiltInsCustomizer M() {
        return (JvmBuiltInsCustomizer) StorageKt.a(this.f72327h, f72326i[0]);
    }

    public final void N(final ModuleDescriptorImpl moduleDescriptorImpl) {
        final boolean z = true;
        this.g = new Function0(moduleDescriptorImpl, z) { // from class: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltIns$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final ModuleDescriptor f72330b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final boolean f72331c;

            {
                this.f72330b = moduleDescriptorImpl;
                this.f72331c = z;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                KProperty[] kPropertyArr = JvmBuiltIns.f72326i;
                return new JvmBuiltIns.Settings(this.f72330b, this.f72331c);
            }
        };
    }

    @Override // kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns
    public final AdditionalClassPartsProvider d() {
        return M();
    }

    @Override // kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns
    public final Iterable m() {
        Iterable iterableM = super.m();
        iterableM.getClass();
        StorageManager storageManager = this.f72246e;
        if (storageManager == null) {
            KotlinBuiltIns.a(6);
            throw null;
        }
        ModuleDescriptorImpl moduleDescriptorImplL = l();
        moduleDescriptorImplL.getClass();
        return CollectionsKt.W(iterableM, new JvmBuiltInClassDescriptorFactory(storageManager, moduleDescriptorImplL, null, 4, null));
    }

    @Override // kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns
    public final PlatformDependentDeclarationFilter q() {
        return M();
    }
}
