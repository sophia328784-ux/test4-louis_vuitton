.class public final Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyePredictResult;
.super Ljava/lang/Object;


# instance fields
.field public eyeSet:Ljava/lang/String;

.field public eyeSize:Ljava/lang/String;

.field public left:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeFeature;

.field public right:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeFeature;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeFeature;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeFeature;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyePredictResult;->left:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeFeature;

    new-instance v0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeFeature;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeFeature;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyePredictResult;->right:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeFeature;

    return-void
.end method
