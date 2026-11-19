.class public final Lcom/perfectcorp/perfectlib/jniproxy/faceshape/Eyebrow;
.super Ljava/lang/Object;


# instance fields
.field public bodyThickness:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/ClassificationResult;

.field public shape:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/ClassificationResult;

.field public shortness:Ljava/lang/String;

.field public tailThickness:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/ClassificationResult;

.field public thinness:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/ClassificationResult;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/ClassificationResult;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/Eyebrow;->shape:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/ClassificationResult;

    new-instance v0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/ClassificationResult;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/ClassificationResult;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/Eyebrow;->bodyThickness:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/ClassificationResult;

    new-instance v0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/ClassificationResult;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/ClassificationResult;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/Eyebrow;->tailThickness:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/ClassificationResult;

    return-void
.end method
