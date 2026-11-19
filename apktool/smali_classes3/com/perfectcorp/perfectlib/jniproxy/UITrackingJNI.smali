.class public Lcom/perfectcorp/perfectlib/jniproxy/UITrackingJNI;
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

.method public static final native CUITracking_AnalyzeFrameYUV420Biplanar(JLcom/perfectcorp/perfectlib/jniproxy/CUITracking;[BIIIZ)Z
.end method

.method public static final native CUITracking_GetFaceRectangle(JLcom/perfectcorp/perfectlib/jniproxy/CUITracking;[Ljava/lang/Object;[Z)Z
.end method

.method public static final native CUITracking_GetInternalModelVersion(JLcom/perfectcorp/perfectlib/jniproxy/CUITracking;[Ljava/lang/Object;)Z
.end method

.method public static final native CUITracking_GetInternalModelVersionLV(JLcom/perfectcorp/perfectlib/jniproxy/CUITracking;[Ljava/lang/Object;)Z
.end method

.method public static final native CUITracking_GetMakeupMetadata(JLcom/perfectcorp/perfectlib/jniproxy/CUITracking;[J[Z)Z
.end method

.method public static final native CUITracking_GetMaxDetectedFaceCount()I
.end method

.method public static final native CUITracking_GetVenusTrackingLive(JLcom/perfectcorp/perfectlib/jniproxy/CUITracking;)J
.end method

.method public static final native CUITracking_IsModelLoaded(JLcom/perfectcorp/perfectlib/jniproxy/CUITracking;)Z
.end method

.method public static final native CUITracking_SetInternalModelPaths(JLcom/perfectcorp/perfectlib/jniproxy/CUITracking;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static final native CUITracking_SetInternalModelPathsLV(JLcom/perfectcorp/perfectlib/jniproxy/CUITracking;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static final native CUITracking_SetMaxDetectedFaceNumber(JLcom/perfectcorp/perfectlib/jniproxy/CUITracking;I)Z
.end method

.method public static final native UIMakeupLiveFaceAlignData_isFaceRectOutOfBoundary(JLcom/perfectcorp/perfectlib/jniproxy/UIMakeupLiveFaceAlignData;)Z
.end method

.method public static final native delete_CUITracking(J)V
.end method

.method public static final native delete_UIMakeupLiveFaceAlignData(J)V
.end method

.method public static final native new_CUITracking(Ljava/lang/String;)J
.end method

.method public static final native new_UIMakeupLiveFaceAlignData(II)J
.end method
