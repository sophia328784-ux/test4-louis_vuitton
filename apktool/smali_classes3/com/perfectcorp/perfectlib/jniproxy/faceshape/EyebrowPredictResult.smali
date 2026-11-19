.class public final Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyebrowPredictResult;
.super Ljava/lang/Object;


# instance fields
.field public b:F

.field public g:F

.field public gap:Ljava/lang/String;

.field public left:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/Eyebrow;

.field public r:F

.field public right:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/Eyebrow;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/Eyebrow;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/Eyebrow;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyebrowPredictResult;->left:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/Eyebrow;

    new-instance v0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/Eyebrow;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/Eyebrow;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyebrowPredictResult;->right:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/Eyebrow;

    return-void
.end method
