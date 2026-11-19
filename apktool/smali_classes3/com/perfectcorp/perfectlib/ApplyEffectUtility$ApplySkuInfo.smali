.class public Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ApplyEffectUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApplySkuInfo"
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/util/List;

.field public final i:I

.field public final j:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lpq0;->v()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->j:Ljava/util/List;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->a:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->h:Ljava/util/List;

    iput p9, p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->i:I

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .locals 10

    .line 28
    const-string v2, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    return-void
.end method
