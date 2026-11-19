package com.google.firebase.sessions;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes2.dex */
final class AutoSessionEventEncoder$ApplicationInfoEncoder implements ObjectEncoder<ApplicationInfo> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AutoSessionEventEncoder$ApplicationInfoEncoder f35385a = new AutoSessionEventEncoder$ApplicationInfoEncoder();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final FieldDescriptor f35386b = FieldDescriptor.a("appId");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f35387c = FieldDescriptor.a("deviceModel");
    public static final FieldDescriptor d = FieldDescriptor.a("sessionSdkVersion");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final FieldDescriptor f35388e = FieldDescriptor.a("osVersion");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final FieldDescriptor f35389f = FieldDescriptor.a("logEnvironment");
    public static final FieldDescriptor g = FieldDescriptor.a("androidAppInfo");

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        ApplicationInfo applicationInfo = (ApplicationInfo) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.e(f35386b, applicationInfo.f35375a);
        objectEncoderContext.e(f35387c, applicationInfo.f35376b);
        objectEncoderContext.e(d, applicationInfo.f35377c);
        objectEncoderContext.e(f35388e, applicationInfo.d);
        objectEncoderContext.e(f35389f, applicationInfo.f35378e);
        objectEncoderContext.e(g, applicationInfo.f35379f);
    }
}
