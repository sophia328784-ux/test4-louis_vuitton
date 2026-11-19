package com.google.crypto.tink.internal;

import com.google.crypto.tink.KeyTemplate;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.proto.KeyData;
import com.google.crypto.tink.shaded.protobuf.ByteString;
import com.google.crypto.tink.shaded.protobuf.MessageLite;
import defpackage.az;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class KeyTypeManager<KeyProtoT extends MessageLite> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f33987a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f33988b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Class f33989c;

    public static abstract class KeyFactory<KeyFormatProtoT extends MessageLite, KeyProtoT extends MessageLite> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Class f33990a;

        public static final class KeyFormat<KeyFormatProtoT> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Object f33991a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final KeyTemplate.OutputPrefixType f33992b;

            public KeyFormat(KeyFormatProtoT keyformatprotot, KeyTemplate.OutputPrefixType outputPrefixType) {
                this.f33991a = keyformatprotot;
                this.f33992b = outputPrefixType;
            }
        }

        public KeyFactory(Class<KeyFormatProtoT> cls) {
            this.f33990a = cls;
        }

        public abstract MessageLite a(MessageLite messageLite);

        public Map b() {
            return Collections.EMPTY_MAP;
        }

        public abstract MessageLite c(ByteString byteString);

        public abstract void d(MessageLite messageLite);
    }

    public KeyTypeManager(Class cls, PrimitiveFactory... primitiveFactoryArr) {
        this.f33987a = cls;
        HashMap map = new HashMap();
        for (PrimitiveFactory primitiveFactory : primitiveFactoryArr) {
            boolean zContainsKey = map.containsKey(primitiveFactory.f34010a);
            Class cls2 = primitiveFactory.f34010a;
            if (zContainsKey) {
                az.w(cls2.getCanonicalName(), "KeyTypeManager constructed with duplicate factories for primitive ");
                throw null;
            }
            map.put(cls2, primitiveFactory);
        }
        if (primitiveFactoryArr.length > 0) {
            this.f33989c = primitiveFactoryArr[0].f34010a;
        } else {
            this.f33989c = Void.class;
        }
        this.f33988b = Collections.unmodifiableMap(map);
    }

    public TinkFipsUtil.AlgorithmFipsCompatibility a() {
        return TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_NOT_FIPS;
    }

    public abstract String b();

    public final Object c(MessageLite messageLite, Class cls) {
        PrimitiveFactory primitiveFactory = (PrimitiveFactory) this.f33988b.get(cls);
        if (primitiveFactory != null) {
            return primitiveFactory.a(messageLite);
        }
        az.r("Requested primitive class ", cls.getCanonicalName(), " not supported.");
        return null;
    }

    public abstract KeyFactory d();

    public abstract KeyData.KeyMaterialType e();

    public abstract MessageLite f(ByteString byteString);

    public abstract void g(MessageLite messageLite);
}
