package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationComponents;

/* JADX INFO: loaded from: classes4.dex */
public final class RuntimeModuleData {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f72586c = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DeserializationComponents f72587a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PackagePartScopeCache f72588b;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public RuntimeModuleData(DeserializationComponents deserializationComponents, PackagePartScopeCache packagePartScopeCache, DefaultConstructorMarker defaultConstructorMarker) {
        this.f72587a = deserializationComponents;
        this.f72588b = packagePartScopeCache;
    }
}
