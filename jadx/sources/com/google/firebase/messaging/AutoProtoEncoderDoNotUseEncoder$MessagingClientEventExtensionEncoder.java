package com.google.firebase.messaging;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.proto.AtProtobuf;
import com.google.firebase.messaging.reporting.MessagingClientEventExtension;

/* JADX INFO: loaded from: classes2.dex */
final class AutoProtoEncoderDoNotUseEncoder$MessagingClientEventExtensionEncoder implements ObjectEncoder<MessagingClientEventExtension> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AutoProtoEncoderDoNotUseEncoder$MessagingClientEventExtensionEncoder f35225a = new AutoProtoEncoderDoNotUseEncoder$MessagingClientEventExtensionEncoder();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final FieldDescriptor f35226b;

    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("messagingClientEvent");
        AtProtobuf atProtobuf = new AtProtobuf();
        atProtobuf.f35106a = 1;
        f35226b = defpackage.a.g(atProtobuf, builder);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        ((ObjectEncoderContext) obj2).e(f35226b, ((MessagingClientEventExtension) obj).f35357a);
    }
}
