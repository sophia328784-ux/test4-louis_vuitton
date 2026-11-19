.class public Lcom/sightcall/universal/internal/view/AspectRatio;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field height:I

.field width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sightcall/universal/internal/view/AspectRatio;->width:I

    iput p2, p0, Lcom/sightcall/universal/internal/view/AspectRatio;->height:I

    return-void
.end method


# virtual methods
.method public set(II)V
    .locals 0

    iput p1, p0, Lcom/sightcall/universal/internal/view/AspectRatio;->width:I

    iput p2, p0, Lcom/sightcall/universal/internal/view/AspectRatio;->height:I

    return-void
.end method

.method public value()F
    .locals 1

    iget v0, p0, Lcom/sightcall/universal/internal/view/AspectRatio;->width:I

    int-to-float v0, v0

    iget p0, p0, Lcom/sightcall/universal/internal/view/AspectRatio;->height:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method
