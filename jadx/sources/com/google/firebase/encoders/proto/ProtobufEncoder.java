package com.google.firebase.encoders.proto;

import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.config.EncoderConfig;
import defpackage.t40;
import java.io.ByteArrayOutputStream;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class ProtobufEncoder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f35118a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f35119b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ObjectEncoder f35120c;

    public static final class Builder implements EncoderConfig<Builder> {
        public static final t40 d = new t40(1);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HashMap f35121a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final HashMap f35122b = new HashMap();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final t40 f35123c = d;

        public final EncoderConfig a(Class cls, ObjectEncoder objectEncoder) {
            this.f35121a.put(cls, objectEncoder);
            this.f35122b.remove(cls);
            return this;
        }
    }

    public ProtobufEncoder(HashMap map, HashMap map2, t40 t40Var) {
        this.f35118a = map;
        this.f35119b = map2;
        this.f35120c = t40Var;
    }

    public final void a(Object obj, ByteArrayOutputStream byteArrayOutputStream) {
        HashMap map = this.f35119b;
        ObjectEncoder objectEncoder = this.f35120c;
        HashMap map2 = this.f35118a;
        ProtobufDataEncoderContext protobufDataEncoderContext = new ProtobufDataEncoderContext(byteArrayOutputStream, map2, map, objectEncoder);
        if (obj == null) {
            return;
        }
        ObjectEncoder objectEncoder2 = (ObjectEncoder) map2.get(obj.getClass());
        if (objectEncoder2 != null) {
            objectEncoder2.a(obj, protobufDataEncoderContext);
            return;
        }
        throw new EncodingException("No encoder for " + obj.getClass());
    }
}
