.class public abstract Lcom/perfectcorp/perfectlib/FaceAlignmentData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/FaceAlignmentData$Impl;,
        Lcom/perfectcorp/perfectlib/FaceAlignmentData$Invalid;
    }
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/perfectlib/FaceAlignmentData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/FaceAlignmentData$Invalid;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/FaceAlignmentData;->a:Lcom/perfectcorp/perfectlib/FaceAlignmentData;

    return-void
.end method


# virtual methods
.method public abstract getFeaturePoints()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRotation()I
.end method

.method public abstract isValid()Z
.end method
