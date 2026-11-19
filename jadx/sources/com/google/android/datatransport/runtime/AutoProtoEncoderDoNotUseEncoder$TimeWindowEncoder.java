package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.firebase.transport.TimeWindow;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.proto.AtProtobuf;
import defpackage.a;

/* JADX INFO: loaded from: classes2.dex */
final class AutoProtoEncoderDoNotUseEncoder$TimeWindowEncoder implements ObjectEncoder<TimeWindow> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AutoProtoEncoderDoNotUseEncoder$TimeWindowEncoder f27932a = new AutoProtoEncoderDoNotUseEncoder$TimeWindowEncoder();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final FieldDescriptor f27933b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f27934c;

    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("startMs");
        AtProtobuf atProtobuf = new AtProtobuf();
        atProtobuf.f35106a = 1;
        f27933b = a.g(atProtobuf, builder);
        FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("endMs");
        AtProtobuf atProtobuf2 = new AtProtobuf();
        atProtobuf2.f35106a = 2;
        f27934c = a.g(atProtobuf2, builder2);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        TimeWindow timeWindow = (TimeWindow) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.b(f27933b, timeWindow.f28037a);
        objectEncoderContext.b(f27934c, timeWindow.f28038b);
    }
}
