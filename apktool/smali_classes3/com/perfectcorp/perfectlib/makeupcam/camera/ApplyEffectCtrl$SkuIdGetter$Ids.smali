.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkuIdGetter$Ids;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkuIdGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ids"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "skuGuid can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkuIdGetter$Ids;->a:Ljava/lang/String;

    const-string p1, "skuItemGuid can\'t be null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkuIdGetter$Ids;->b:Ljava/lang/String;

    const-string p1, "subPaletteGuid can\'t be null"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkuIdGetter$Ids;->c:Ljava/lang/String;

    const-string p1, "itemSubType can\'t be null"

    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkuIdGetter$Ids;->d:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    return-void
.end method
