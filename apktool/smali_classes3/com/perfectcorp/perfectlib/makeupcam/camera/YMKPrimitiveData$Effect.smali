.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Effect"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect$Position;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/List;

.field public final e:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;

.field public final f:Ljava/lang/String;

.field public final g:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V
    .locals 8

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->d:Ljava/util/List;

    iget-object v5, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->e:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;

    iget-object v6, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->f:Ljava/lang/String;

    iget-object v7, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->g:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;

    const-string v1, ""

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;Ljava/util/List;Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;Ljava/lang/String;Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;Ljava/util/List;Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;Ljava/lang/String;Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;",
            ">;",
            "Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;",
            "Ljava/lang/String;",
            "Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->e:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;

    iput-object p6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->g:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->d:Ljava/util/List;

    return-object p0
.end method

.method public final b()Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-object p0
.end method

.method public final c()Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->g:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;

    return-object p0
.end method

.method public final d()I
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->g:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->h:I

    return p0
.end method

.method public final e()Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->e:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;

    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->g:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final g()I
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->g:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->m:I

    return p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->g:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final j()I
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->g:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->l:I

    return p0
.end method

.method public final k()Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect$Position;
    .locals 5

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->g:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->j:Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect$Position;->values()[Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect$Position;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect$Position;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect$Position;->UNDEFINED:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect$Position;

    return-object p0
.end method
