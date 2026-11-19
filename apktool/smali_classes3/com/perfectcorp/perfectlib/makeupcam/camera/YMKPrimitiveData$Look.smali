.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Look"
.end annotation


# static fields
.field public static final j:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;

.field public final c:Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;

.field public final d:Ljava/lang/String;

.field public final e:F

.field public final f:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/util/ArrayList;

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    new-instance v4, Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;

    invoke-direct {v4}, Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;-><init>()V

    new-instance v5, Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;

    invoke-direct {v5}, Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;-><init>()V

    sget-object v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->DEFAULT:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    const-string v7, ""

    const-string v1, ""

    const-string v2, ""

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;-><init>(Ljava/lang/String;Ljava/lang/String;FLcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;Ljava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->j:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FLcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->h:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->d:Ljava/lang/String;

    iput p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->e:F

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->b:Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->c:Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;

    iput-object p6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    iput-object p7, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->g:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->i:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    iget-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->i:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->h:Ljava/util/ArrayList;

    return-object p0

    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " thumbnail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->h:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;

    const-string v3, "effetType: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object v4, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->e:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " externalPatternGUID: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    const-string v5, "color: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->c:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "FF%02X%02X%02X"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " intensity: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_1

    const-string v2, "intensities: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
