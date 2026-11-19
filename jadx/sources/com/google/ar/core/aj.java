package com.google.ar.core;

/* JADX INFO: loaded from: classes2.dex */
enum aj {
    f33386a(Trackable.class, "BASE_TRACKABLE"),
    f33387b(null, "UNKNOWN_TO_JAVA"),
    f33388c(Plane.class, "PLANE"),
    d(Point.class, "POINT"),
    f33389e(AugmentedImage.class, "AUGMENTED_IMAGE"),
    f33390f(AugmentedFace.class, "FACE"),
    g(StreetscapeGeometry.class, "STREETSCAPE_GEOMETRY"),
    f33391h(Earth.class, "EARTH"),
    f33392i(DepthPoint.class, "DEPTH_POINT"),
    f33393j(InstantPlacementPoint.class, "INSTANT_PLACEMENT_POINT");


    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final int f33394k;
    private final Class l;

    aj(Class cls, String str) {
        this.f33394k = i;
        this.l = cls;
    }

    public static aj a(Class cls) {
        for (aj ajVar : values()) {
            Class cls2 = ajVar.l;
            if (cls2 != null && cls2.equals(cls)) {
                return ajVar;
            }
        }
        return f33387b;
    }
}
