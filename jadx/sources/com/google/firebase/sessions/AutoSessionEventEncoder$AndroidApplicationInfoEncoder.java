package com.google.firebase.sessions;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes2.dex */
final class AutoSessionEventEncoder$AndroidApplicationInfoEncoder implements ObjectEncoder<AndroidApplicationInfo> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AutoSessionEventEncoder$AndroidApplicationInfoEncoder f35380a = new AutoSessionEventEncoder$AndroidApplicationInfoEncoder();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final FieldDescriptor f35381b = FieldDescriptor.a("packageName");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f35382c = FieldDescriptor.a("versionName");
    public static final FieldDescriptor d = FieldDescriptor.a("appBuildVersion");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final FieldDescriptor f35383e = FieldDescriptor.a("deviceManufacturer");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final FieldDescriptor f35384f = FieldDescriptor.a("currentProcessDetails");
    public static final FieldDescriptor g = FieldDescriptor.a("appProcessDetails");

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        AndroidApplicationInfo androidApplicationInfo = (AndroidApplicationInfo) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.e(f35381b, androidApplicationInfo.f35370a);
        objectEncoderContext.e(f35382c, androidApplicationInfo.f35371b);
        objectEncoderContext.e(d, androidApplicationInfo.f35372c);
        objectEncoderContext.e(f35383e, androidApplicationInfo.d);
        objectEncoderContext.e(f35384f, androidApplicationInfo.f35373e);
        objectEncoderContext.e(g, androidApplicationInfo.f35374f);
    }
}
