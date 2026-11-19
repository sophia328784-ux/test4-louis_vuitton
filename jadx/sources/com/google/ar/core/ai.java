package com.google.ar.core;

/* JADX INFO: loaded from: classes2.dex */
enum ai {
    f33377a("SUCCESS", null, 0),
    f33378b("ERROR_INVALID_ARGUMENT", null, -1),
    f33379c("ERROR_FATAL", null, -2),
    d("ERROR_SESSION_PAUSED", null, -3),
    f33380e("ERROR_SESSION_NOT_PAUSED", null, -4),
    f33381f("ERROR_NOT_TRACKING", null, -5),
    g("ERROR_TEXTURE_NOT_SET", null, -6),
    f33382h("ERROR_MISSING_GL_CONTEXT", null, -7),
    f33383i("ERROR_UNSUPPORTED_CONFIGURATION", null, -8),
    f33384j("ERROR_FINE_LOCATION_PERMISSION_NOT_GRANTED", null, -21),
    f33385k("ERROR_GOOGLE_PLAY_SERVICES_LOCATION_LIBRARY_NOT_LINKED", null, -22),
    l("ERROR_CAMERA_PERMISSION_NOT_GRANTED", "Camera permission is not granted", -9),
    m("ERROR_DEADLINE_EXCEEDED", null, -10),
    n("ERROR_RESOURCE_EXHAUSTED", null, -11),
    o("ERROR_NOT_YET_AVAILABLE", null, -12),
    p("ERROR_CAMERA_NOT_AVAILABLE", null, -13),
    q("ERROR_ANCHOR_NOT_SUPPORTED_FOR_HOSTING", null, -16),
    r("ERROR_IMAGE_INSUFFICIENT_QUALITY", null, -17),
    s("ERROR_DATA_INVALID_FORMAT", null, -18),
    t("ERROR_DATA_UNSUPPORTED_VERSION", null, -19),
    u("ERROR_ILLEGAL_STATE", null, -20),
    v("ERROR_RECORDING_FAILED", null, -23),
    w("ERROR_PLAYBACK_FAILED", null, -24),
    x("ERROR_SESSION_UNSUPPORTED", null, -25),
    y("ERROR_METADATA_NOT_FOUND", null, -26),
    z("ERROR_CLOUD_ANCHORS_NOT_CONFIGURED", null, -14),
    A("ERROR_INTERNET_PERMISSION_NOT_GRANTED", "Internet permission is not granted", -15),
    B("UNAVAILABLE_ARCORE_NOT_INSTALLED", null, -100),
    C("UNAVAILABLE_DEVICE_NOT_COMPATIBLE", null, -101),
    D("UNAVAILABLE_APK_TOO_OLD", null, -103),
    E("UNAVAILABLE_SDK_TOO_OLD", null, -104),
    F("UNAVAILABLE_USER_DECLINED_INSTALLATION", null, -105);

    final int G;
    final Class H;
    final String I;

    ai(String str, String str2, int i2) {
        this.G = i2;
        this.H = cls;
        this.I = str2;
    }
}
