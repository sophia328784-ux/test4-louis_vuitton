.class public Lcom/perfectcorp/perfectlib/jniproxy/UIHairToneJNI;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native CUIHairTone_GetHairTone(JLcom/perfectcorp/perfectlib/jniproxy/CUIHairTone;JLcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;JLcom/perfectcorp/perfectlib/jniproxy/UIMakeupLiveFaceAlignData;[I[Ljava/lang/Object;Z)Z
.end method

.method public static final native CUIHairTone_GetInternalModelVersion(JLcom/perfectcorp/perfectlib/jniproxy/CUIHairTone;[Ljava/lang/Object;)Z
.end method

.method public static final native CUIHairTone_SetInternalModelPaths(JLcom/perfectcorp/perfectlib/jniproxy/CUIHairTone;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static final native CUIHairTone_SetTrackingEngine(JLcom/perfectcorp/perfectlib/jniproxy/CUIHairTone;J)Z
.end method

.method public static final native delete_CUIHairTone(J)V
.end method

.method public static final native new_CUIHairTone(Ljava/lang/String;)J
.end method
