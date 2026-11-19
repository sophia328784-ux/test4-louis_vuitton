.class public final Lcom/perfectcorp/perfectlib/FaceData;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final b:I

.field public final c:Lcom/perfectcorp/perfectlib/FaceAlignmentData;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Lcom/perfectcorp/perfectlib/FaceAlignmentData;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/FaceData;->a:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/FaceData;->c:Lcom/perfectcorp/perfectlib/FaceAlignmentData;

    iput p3, p0, Lcom/perfectcorp/perfectlib/FaceData;->b:I

    return-void
.end method


# virtual methods
.method public final getFaceAlignmentData()Lcom/perfectcorp/perfectlib/FaceAlignmentData;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/FaceData;->c:Lcom/perfectcorp/perfectlib/FaceAlignmentData;

    return-object p0
.end method

.method public final getFaceRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/FaceData;->a:Landroid/graphics/Rect;

    return-object p0
.end method
