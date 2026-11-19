.class public final Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FaceShapePredictResult;
.super Ljava/lang/Object;


# instance fields
.field public ratio:Ljava/lang/String;

.field public shape:Ljava/lang/String;

.field public subAttr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FaceShapeAttr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FaceShapePredictResult;->subAttr:Ljava/util/List;

    return-void
.end method
