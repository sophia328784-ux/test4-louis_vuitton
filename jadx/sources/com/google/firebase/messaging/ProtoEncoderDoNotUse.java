package com.google.firebase.messaging;

import com.google.firebase.encoders.annotations.Encodable;
import com.google.firebase.encoders.proto.ProtobufEncoder;
import com.google.firebase.messaging.reporting.MessagingClientEvent;
import com.google.firebase.messaging.reporting.MessagingClientEventExtension;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
@Encodable
public abstract class ProtoEncoderDoNotUse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ProtobufEncoder f35271a;

    static {
        ProtobufEncoder.Builder builder = new ProtobufEncoder.Builder();
        builder.a(ProtoEncoderDoNotUse.class, AutoProtoEncoderDoNotUseEncoder$ProtoEncoderDoNotUseEncoder.f35227a);
        builder.a(MessagingClientEventExtension.class, AutoProtoEncoderDoNotUseEncoder$MessagingClientEventExtensionEncoder.f35225a);
        builder.a(MessagingClientEvent.class, AutoProtoEncoderDoNotUseEncoder$MessagingClientEventEncoder.f35216a);
        f35271a = new ProtobufEncoder(new HashMap(builder.f35121a), new HashMap(builder.f35122b), builder.f35123c);
    }
}
