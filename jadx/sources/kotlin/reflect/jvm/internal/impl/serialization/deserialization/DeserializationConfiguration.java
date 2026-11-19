package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.reflect.jvm.internal.impl.metadata.deserialization.MetadataVersion;

/* JADX INFO: loaded from: classes4.dex */
public interface DeserializationConfiguration {

    public static final class Default implements DeserializationConfiguration {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Default f73997a = new Default();

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationConfiguration
        public final MetadataVersion a() {
            return MetadataVersion.g;
        }
    }

    MetadataVersion a();
}
