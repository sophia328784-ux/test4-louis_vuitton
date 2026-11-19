.class public Lcom/perfectcorp/perfectlib/jniproxy/CommonJNI;
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

.method public static final native CImageBuffer_AttachAndroidBitmap(JLcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;Ljava/lang/Object;)Z
.end method

.method public static final native CImageBuffer_DetachAndroidBitmap(JLcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;)Z
.end method

.method public static final native CImageBuffer_SwapColorChannel__SWIG_0(JLcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;)Z
.end method

.method public static final native delete_CImageBuffer(J)V
.end method

.method public static final native new_CImageBuffer__SWIG_0(I)J
.end method

.method public static final native new_CImageBuffer__SWIG_1()J
.end method
