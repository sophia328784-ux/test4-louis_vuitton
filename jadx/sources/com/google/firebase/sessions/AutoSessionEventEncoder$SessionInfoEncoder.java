package com.google.firebase.sessions;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes2.dex */
final class AutoSessionEventEncoder$SessionInfoEncoder implements ObjectEncoder<SessionInfo> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AutoSessionEventEncoder$SessionInfoEncoder f35400a = new AutoSessionEventEncoder$SessionInfoEncoder();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final FieldDescriptor f35401b = FieldDescriptor.a("sessionId");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f35402c = FieldDescriptor.a("firstSessionId");
    public static final FieldDescriptor d = FieldDescriptor.a("sessionIndex");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final FieldDescriptor f35403e = FieldDescriptor.a("eventTimestampUs");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final FieldDescriptor f35404f = FieldDescriptor.a("dataCollectionStatus");
    public static final FieldDescriptor g = FieldDescriptor.a("firebaseInstallationId");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final FieldDescriptor f35405h = FieldDescriptor.a("firebaseAuthenticationToken");

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        SessionInfo sessionInfo = (SessionInfo) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.e(f35401b, sessionInfo.f35497a);
        objectEncoderContext.e(f35402c, sessionInfo.f35498b);
        objectEncoderContext.c(d, sessionInfo.f35499c);
        objectEncoderContext.b(f35403e, sessionInfo.d);
        objectEncoderContext.e(f35404f, sessionInfo.f35500e);
        objectEncoderContext.e(g, sessionInfo.f35501f);
        objectEncoderContext.e(f35405h, sessionInfo.g);
    }
}
