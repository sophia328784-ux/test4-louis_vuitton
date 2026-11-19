.class public final synthetic Lcom/perfectcorp/perfectlib/r4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Lcom/perfectcorp/perfectlib/VtoPattern;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/VtoPattern$PaletteMajor;Ljava/util/Set;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/perfectcorp/perfectlib/r4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/r4;->d:Lcom/perfectcorp/perfectlib/VtoPattern;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/r4;->e:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/perfectcorp/perfectlib/r4;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/VtoPattern$SubPalette;ZLjava/util/concurrent/ConcurrentHashMap;)V
    .locals 1

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/perfectcorp/perfectlib/r4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/r4;->d:Lcom/perfectcorp/perfectlib/VtoPattern;

    iput-boolean p2, p0, Lcom/perfectcorp/perfectlib/r4;->c:Z

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/r4;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/perfectcorp/perfectlib/r4;->b:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/r4;->e:Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/perfectcorp/perfectlib/r4;->c:Z

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/r4;->d:Lcom/perfectcorp/perfectlib/VtoPattern;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/VtoPattern$SubPalette;

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/VtoPattern;->d:Lcom/perfectcorp/perfectlib/ProductInfo;

    invoke-static {v0, v3}, Lcom/perfectcorp/perfectlib/SkuHandler;->f(Lcom/perfectcorp/perfectlib/ProductInfo;Z)Ljava/util/List;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->r(I)Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/SkuInfo;

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/SkuInfo;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoObject;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/VtoPattern$PaletteMajor;

    check-cast v2, Ljava/util/Set;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/VtoObject;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v4, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoPattern;->d:Lcom/perfectcorp/perfectlib/ProductInfo;

    invoke-static {p0, v3}, Lcom/perfectcorp/perfectlib/SkuHandler;->f(Lcom/perfectcorp/perfectlib/ProductInfo;Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
