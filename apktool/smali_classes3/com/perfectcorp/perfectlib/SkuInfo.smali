.class public abstract Lcom/perfectcorp/perfectlib/SkuInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/SkuInfo$Pattern;,
        Lcom/perfectcorp/perfectlib/SkuInfo$Palette;,
        Lcom/perfectcorp/perfectlib/SkuInfo$ActionUrlType;
    }
.end annotation


# static fields
.field public static final NULL:Lcom/perfectcorp/perfectlib/SkuInfo;


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public final b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Lcom/perfectcorp/perfectlib/SkuInfo$ActionUrlType;

.field public final i:Z

.field public final j:Ljava/lang/String;

.field public final k:Lcom/perfectcorp/perfectlib/VtoDetail;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/SkuInfo$1;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/SkuInfo;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/SkuInfo;->NULL:Lcom/perfectcorp/perfectlib/SkuInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->UNDEFINED:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->c:Ljava/lang/String;

    const-string v1, "N/A"

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->g:Ljava/lang/String;

    sget-object v1, Lcom/perfectcorp/perfectlib/SkuInfo$ActionUrlType;->HIDDEN:Lcom/perfectcorp/perfectlib/SkuInfo$ActionUrlType;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->h:Lcom/perfectcorp/perfectlib/SkuInfo$ActionUrlType;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->i:Z

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->j:Ljava/lang/String;

    sget-object v0, Lcom/perfectcorp/perfectlib/VtoDetail;->c:Lcom/perfectcorp/perfectlib/VtoDetail;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->k:Lcom/perfectcorp/perfectlib/VtoDetail;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ProductInfo;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ProductInfo;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ProductInfo;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ProductInfo;->e:Ljava/lang/String;

    sget v2, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->a:I

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ProductInfo;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->d:Ljava/lang/String;

    invoke-static {p2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->e:Ljava/lang/String;

    iget-object p2, p3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->n:Ljava/lang/String;

    invoke-static {p2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->f:Ljava/lang/String;

    iget-object p2, p3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->e:Ljava/lang/String;

    invoke-static {p2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/SkuInfo;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->g:Ljava/lang/String;

    sget-object p2, Lcom/perfectcorp/perfectlib/SkuInfo$ActionUrlType;->MORE_INFO:Lcom/perfectcorp/perfectlib/SkuInfo$ActionUrlType;

    :goto_0
    iput-object p2, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->h:Lcom/perfectcorp/perfectlib/SkuInfo$ActionUrlType;

    goto :goto_1

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Lcom/perfectcorp/perfectlib/SkuInfo;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->g:Ljava/lang/String;

    sget-object p2, Lcom/perfectcorp/perfectlib/SkuInfo$ActionUrlType;->SHOPPING:Lcom/perfectcorp/perfectlib/SkuInfo$ActionUrlType;

    goto :goto_0

    :cond_1
    const-string p2, ""

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->g:Ljava/lang/String;

    sget-object p2, Lcom/perfectcorp/perfectlib/SkuInfo$ActionUrlType;->HIDDEN:Lcom/perfectcorp/perfectlib/SkuInfo$ActionUrlType;

    goto :goto_0

    :goto_1
    iget p2, p3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->c:I

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->i:Z

    iget-object p2, p3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->s:Ljava/lang/String;

    invoke-static {p2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->j:Ljava/lang/String;

    sget-object p2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EARRINGS:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-eq v0, p2, :cond_5

    sget-object p2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->NAIL:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v0, p2, :cond_3

    iget-object p2, p3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->t:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Lcom/perfectcorp/perfectlib/VtoDetail$PatternMajor;

    invoke-direct {p2, p1, p0}, Lcom/perfectcorp/perfectlib/VtoDetail;-><init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SkuInfo;)V

    goto :goto_4

    :cond_4
    new-instance p2, Lcom/perfectcorp/perfectlib/VtoDetail$PaletteMajor;

    invoke-direct {p2, p1, p0}, Lcom/perfectcorp/perfectlib/VtoDetail;-><init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SkuInfo;)V

    goto :goto_4

    :cond_5
    :goto_3
    new-instance p2, Lcom/perfectcorp/perfectlib/VtoDetail$PatternEarringsOrNail;

    invoke-direct {p2, p1, p0, p3}, Lcom/perfectcorp/perfectlib/VtoDetail$PatternEarringsOrNail;-><init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SkuInfo;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;)V

    :goto_4
    iput-object p2, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->k:Lcom/perfectcorp/perfectlib/VtoDetail;

    return-void
.end method

.method public static a(Lcom/perfectcorp/perfectlib/ProductInfo;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;)Lcom/perfectcorp/perfectlib/SkuInfo;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/perfectcorp/perfectlib/SkuInfo$Pattern;

    invoke-direct {v0, p0, p1, p2}, Lcom/perfectcorp/perfectlib/SkuInfo$Pattern;-><init>(Lcom/perfectcorp/perfectlib/ProductInfo;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/perfectcorp/perfectlib/SkuInfo$Palette;

    invoke-direct {v0, p0, p1, p2}, Lcom/perfectcorp/perfectlib/SkuInfo$Palette;-><init>(Lcom/perfectcorp/perfectlib/ProductInfo;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "ymk"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "amb"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "RedirectUrl"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static c(Lcom/perfectcorp/perfectlib/SkuInfo;)Ljava/util/List;
    .locals 6

    instance-of v0, p0, Lcom/perfectcorp/perfectlib/SkuInfo$Palette;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Lcom/perfectcorp/perfectlib/SkuInfo$Palette;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/SkuInfo$Palette;->n:Ljava/util/List;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->NAIL:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const/16 v3, 0x9

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->c:Ljava/lang/String;

    const-string v5, "1"

    invoke-static {v1, v2, v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->x(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/template/e;->f(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lxx0;

    invoke-direct {v2, v3}, Lxx0;-><init>(I)V

    invoke-static {v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->c(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->w(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->t:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->u:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->u:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->v(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->z(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->x(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/template/e;->f(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lxx0;

    invoke-direct {v2, v3}, Lxx0;-><init>(I)V

    invoke-static {v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->c(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/perfectcorp/perfectlib/SkuInfo$Palette;->n:Ljava/util/List;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/SkuInfo$Palette;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->c:Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/g;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;

    move-result-object p0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->paletteColor:Ljava/util/List;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/template/e;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    new-instance v1, Lxx0;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lxx0;-><init>(I)V

    invoke-static {p0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->c(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    goto :goto_1

    :cond_3
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_1
    iput-object p0, v0, Lcom/perfectcorp/perfectlib/SkuInfo$Palette;->n:Ljava/util/List;

    :cond_4
    iget-object p0, v0, Lcom/perfectcorp/perfectlib/SkuInfo$Palette;->n:Ljava/util/List;

    return-object p0

    :cond_5
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getActionUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getActionUrlType()Lcom/perfectcorp/perfectlib/SkuInfo$ActionUrlType;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->h:Lcom/perfectcorp/perfectlib/SkuInfo$ActionUrlType;

    return-object p0
.end method

.method public getCustomerInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->j:Ljava/lang/String;

    return-object p0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getLongName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->f:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getPerfectEffect()Lcom/perfectcorp/perfectlib/PerfectEffect;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    return-object p0
.end method

.method public getProductGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->d:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getThumbnailUrl()Ljava/lang/String;
.end method

.method public getVtoDetail()Lcom/perfectcorp/perfectlib/VtoDetail;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->k:Lcom/perfectcorp/perfectlib/VtoDetail;

    return-object p0
.end method

.method public isHot()Z
    .locals 0

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->i:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "guid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mappedID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
