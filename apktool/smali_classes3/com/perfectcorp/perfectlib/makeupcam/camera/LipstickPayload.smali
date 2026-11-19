.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;

.field public final b:I

.field public final c:Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

.field public final d:I

.field public e:I

.field public f:I

.field public final g:I

.field public final h:I

.field public final i:Ljava/util/List;

.field public final j:Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;ILcom/perfectcorp/perfectlib/jniproxy/UIShimmer;IIILjava/util/List;Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;",
            "I",
            "Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;",
            "III",
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickLayer;",
            ">;",
            "Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;

    iput p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;->b:I

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;->c:Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

    iput p4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;->d:I

    iput p5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;->g:I

    iput p6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;->h:I

    iput-object p7, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;->i:Ljava/util/List;

    iput-object p8, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;->j:Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;

    return-void
.end method
