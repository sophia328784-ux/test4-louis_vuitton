package com.google.firebase.messaging;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;

/* JADX INFO: loaded from: classes2.dex */
final class AutoProtoEncoderDoNotUseEncoder$ProtoEncoderDoNotUseEncoder implements ObjectEncoder<ProtoEncoderDoNotUse> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AutoProtoEncoderDoNotUseEncoder$ProtoEncoderDoNotUseEncoder f35227a = new AutoProtoEncoderDoNotUseEncoder$ProtoEncoderDoNotUseEncoder();

    static {
        FieldDescriptor.a("messagingClientEventExtension");
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        obj.getClass();
        throw new ClassCastException();
    }
}
