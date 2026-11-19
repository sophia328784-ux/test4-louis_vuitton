package com.google.firebase.sessions;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.networkbench.nbslens.nbsnativecrashlib.m;

/* JADX INFO: loaded from: classes2.dex */
final class AutoSessionEventEncoder$ProcessDetailsEncoder implements ObjectEncoder<ProcessDetails> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AutoSessionEventEncoder$ProcessDetailsEncoder f35393a = new AutoSessionEventEncoder$ProcessDetailsEncoder();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final FieldDescriptor f35394b = FieldDescriptor.a("processName");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f35395c = FieldDescriptor.a(m.q);
    public static final FieldDescriptor d = FieldDescriptor.a("importance");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final FieldDescriptor f35396e = FieldDescriptor.a("defaultProcess");

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        ProcessDetails processDetails = (ProcessDetails) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.e(f35394b, processDetails.f35457a);
        objectEncoderContext.c(f35395c, processDetails.f35458b);
        objectEncoderContext.c(d, processDetails.f35459c);
        objectEncoderContext.a(f35396e, processDetails.d);
    }
}
