.class public Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->a:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->b:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->c:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->d:I

    const/16 v0, -0x3e8

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->e:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->f:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->g:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->h:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->i:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->j:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;
    .locals 11

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;

    iget v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->a:I

    iget v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->b:I

    iget v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->c:I

    iget v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->d:I

    iget v5, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->e:I

    iget v6, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->f:I

    iget v7, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->g:I

    iget v8, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->h:I

    iget v9, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->i:I

    iget v10, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->j:I

    invoke-direct/range {v0 .. v10}, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;-><init>(IIIIIIIIII)V

    return-object v0
.end method
