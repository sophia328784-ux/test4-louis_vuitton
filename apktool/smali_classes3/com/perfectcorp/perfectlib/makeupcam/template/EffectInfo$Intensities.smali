.class public final Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intensities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I


# direct methods
.method public constructor <init>(IIIIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;->a:I

    iput p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;->b:I

    iput p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;->c:I

    iput p4, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;->d:I

    iput p5, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;->e:I

    iput p6, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;->f:I

    iput p7, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;->g:I

    iput p8, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;->h:I

    iput p9, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;->i:I

    iput p10, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;->j:I

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "intensity"

    iget v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "hidden_intensity"

    iget v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "radius"

    iget v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v1, -0x1

    iget v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;->d:I

    if-eq v2, v1, :cond_0

    const-string v1, "browdefinition"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    const/16 v1, -0x3e8

    iget v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;->e:I

    if-eq v2, v1, :cond_1

    const-string v3, "browcurvature"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    iget v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;->f:I

    if-eq v2, v1, :cond_2

    const-string v3, "browthickness"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    iget v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;->g:I

    if-eq v2, v1, :cond_3

    const-string v3, "browpositionx"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    iget v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;->h:I

    if-eq v2, v1, :cond_4

    const-string v3, "browpositiony"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_4
    iget v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;->i:I

    if-eq v2, v1, :cond_5

    const-string v3, "browheadlocation"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_5
    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;->j:I

    if-eq p0, v1, :cond_6

    const-string v1, "browtaillocation"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_6
    return-object v0
.end method
