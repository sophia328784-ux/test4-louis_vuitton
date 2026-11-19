.class public Lcom/perfectcorp/perfectlib/jniproxy/UIShadeFinderJNI;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/perfectcorp/common/a;->a()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native CUIShadeFinder_GetInternalModelVersion(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;[Ljava/lang/Object;)Z
.end method

.method public static final native CUIShadeFinder_GetInternalModelVersionLV(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;[Ljava/lang/Object;)Z
.end method

.method public static final native CUIShadeFinder_GetShadeFinderCheckResult(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;Ljava/lang/Object;)Z
.end method

.method public static final native CUIShadeFinder_GetShadeFinderData__SWIG_0(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;Ljava/lang/Object;Z)Z
.end method

.method public static final native CUIShadeFinder_GetShadeFinderData__SWIG_1(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;Ljava/lang/String;Ljava/lang/Object;)Z
.end method

.method public static final native CUIShadeFinder_GetShadeFinderModelVersion(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;[Ljava/lang/Object;I)Z
.end method

.method public static final native CUIShadeFinder_GetShadeFinderNeighborShade(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;[Ljava/lang/Object;ILjava/lang/Object;)Z
.end method

.method public static final native CUIShadeFinder_GetShadeFinderShadeMatching(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)Z
.end method

.method public static final native CUIShadeFinder_IsModelLoaded(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;)Z
.end method

.method public static final native CUIShadeFinder_ResetShadeFinder(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;)Z
.end method

.method public static final native CUIShadeFinder_SetInternalModelPaths(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static final native CUIShadeFinder_SetInternalModelPathsLV(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static final native CUIShadeFinder_SetMaxDetectedFaceNumber(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;I)Z
.end method

.method public static final native CUIShadeFinder_SetShadeFinderMode(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;I)Z
.end method

.method public static final native CUIShadeFinder_SetShadeFinderModelPath(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public static final native CUIShadeFinder_TrackYUV420Biplanar(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;[BIIIZZ)Z
.end method

.method public static final native delete_CUIShadeFinder(J)V
.end method

.method public static final native new_CUIShadeFinder(Ljava/lang/String;)J
.end method
