.class public final Lcom/perfectcorp/perfectlib/ph/template/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/template/m$b;,
        Lcom/perfectcorp/perfectlib/ph/template/m$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/List;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:F

.field public final h:Z

.field public final i:Ljava/lang/String;

.field public final j:Lcom/perfectcorp/perfectlib/ph/template/m$b;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;FZLjava/lang/String;Lcom/perfectcorp/perfectlib/ph/template/m$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FZ",
            "Ljava/lang/String;",
            "Lcom/perfectcorp/perfectlib/ph/template/m$b;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/template/m;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/template/m;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ph/template/m;->c:Ljava/lang/String;

    if-eqz p4, :cond_0

    invoke-static {p4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/template/m;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/ph/template/m;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/perfectcorp/perfectlib/ph/template/m;->f:Ljava/lang/String;

    iput p7, p0, Lcom/perfectcorp/perfectlib/ph/template/m;->g:F

    iput-boolean p8, p0, Lcom/perfectcorp/perfectlib/ph/template/m;->h:Z

    iput-object p9, p0, Lcom/perfectcorp/perfectlib/ph/template/m;->i:Ljava/lang/String;

    iput-object p10, p0, Lcom/perfectcorp/perfectlib/ph/template/m;->j:Lcom/perfectcorp/perfectlib/ph/template/m$b;

    iput-object p11, p0, Lcom/perfectcorp/perfectlib/ph/template/m;->k:Ljava/lang/String;

    iput-object p12, p0, Lcom/perfectcorp/perfectlib/ph/template/m;->l:Ljava/lang/String;

    iput-object p13, p0, Lcom/perfectcorp/perfectlib/ph/template/m;->m:Ljava/lang/String;

    iput-object p14, p0, Lcom/perfectcorp/perfectlib/ph/template/m;->n:Ljava/lang/String;

    iput p15, p0, Lcom/perfectcorp/perfectlib/ph/template/m;->o:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/m;->d:Ljava/util/List;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates;->f()Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->i(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates;->c()Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates;->e(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->i(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->m()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final b()Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "GUID"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/template/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PatternType"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/template/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Name"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/template/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/template/m;->d:Ljava/util/List;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplatePaths;->d(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThumbPath"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Source"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/template/m;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SupportMode"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/template/m;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/perfectcorp/perfectlib/ph/template/m;->g:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "Version"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v1, "ColorImagePath"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ToolImagePath"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/perfectcorp/perfectlib/ph/template/m;->h:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "IsNew"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "SkuGUID"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/template/m;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/template/m;->j:Lcom/perfectcorp/perfectlib/ph/template/m$b;

    const-class v3, Lcom/perfectcorp/perfectlib/ph/template/m$b;

    invoke-virtual {v1, v2, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->l(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExtraData"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ExtStr1"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/template/m;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ExtStr2"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/template/m;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ExtStr3"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ExtInt1"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "ExtInt2"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "ExtInt3"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "TextureSupportedMode"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/template/m;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HiddenInRoom"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/template/m;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget p0, p0, Lcom/perfectcorp/perfectlib/ph/template/m;->o:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "Positions"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method
