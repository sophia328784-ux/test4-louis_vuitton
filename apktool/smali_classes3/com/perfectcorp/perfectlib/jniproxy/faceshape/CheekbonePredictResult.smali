.class public final Lcom/perfectcorp/perfectlib/jniproxy/faceshape/CheekbonePredictResult;
.super Ljava/lang/Object;


# instance fields
.field public left:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/ClassificationResult;

.field public overall:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/ClassificationResult;

.field public right:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/ClassificationResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/ClassificationResult;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/ClassificationResult;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/CheekbonePredictResult;->left:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/ClassificationResult;

    new-instance v0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/ClassificationResult;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/ClassificationResult;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/CheekbonePredictResult;->right:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/ClassificationResult;

    new-instance v0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/ClassificationResult;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/ClassificationResult;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/CheekbonePredictResult;->overall:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/ClassificationResult;

    return-void
.end method
