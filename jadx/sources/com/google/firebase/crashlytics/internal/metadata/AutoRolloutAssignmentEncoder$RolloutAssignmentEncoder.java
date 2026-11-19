package com.google.firebase.crashlytics.internal.metadata;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes2.dex */
final class AutoRolloutAssignmentEncoder$RolloutAssignmentEncoder implements ObjectEncoder<RolloutAssignment> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AutoRolloutAssignmentEncoder$RolloutAssignmentEncoder f34593a = new AutoRolloutAssignmentEncoder$RolloutAssignmentEncoder();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final FieldDescriptor f34594b = FieldDescriptor.a("rolloutId");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f34595c = FieldDescriptor.a("parameterKey");
    public static final FieldDescriptor d = FieldDescriptor.a("parameterValue");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final FieldDescriptor f34596e = FieldDescriptor.a("variantId");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final FieldDescriptor f34597f = FieldDescriptor.a("templateVersion");

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        RolloutAssignment rolloutAssignment = (RolloutAssignment) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.e(f34594b, rolloutAssignment.d());
        objectEncoderContext.e(f34595c, rolloutAssignment.b());
        objectEncoderContext.e(d, rolloutAssignment.c());
        objectEncoderContext.e(f34596e, rolloutAssignment.f());
        objectEncoderContext.b(f34597f, rolloutAssignment.e());
    }
}
