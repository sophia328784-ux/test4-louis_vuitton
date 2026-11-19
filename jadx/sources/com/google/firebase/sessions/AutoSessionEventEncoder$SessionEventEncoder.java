package com.google.firebase.sessions;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes2.dex */
final class AutoSessionEventEncoder$SessionEventEncoder implements ObjectEncoder<SessionEvent> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AutoSessionEventEncoder$SessionEventEncoder f35397a = new AutoSessionEventEncoder$SessionEventEncoder();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final FieldDescriptor f35398b = FieldDescriptor.a("eventType");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f35399c = FieldDescriptor.a("sessionData");
    public static final FieldDescriptor d = FieldDescriptor.a("applicationInfo");

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        SessionEvent sessionEvent = (SessionEvent) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.e(f35398b, sessionEvent.f35470a);
        objectEncoderContext.e(f35399c, sessionEvent.f35471b);
        objectEncoderContext.e(d, sessionEvent.f35472c);
    }
}
