.class public final synthetic Lcom/perfectcorp/perfectlib/s4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/perfectcorp/perfectlib/s4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget p0, p0, Lcom/perfectcorp/perfectlib/s4;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c;

    new-instance p0, Lcom/perfectcorp/perfectlib/TagGroup$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/TagGroup$Builder;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/TagGroup$Builder;->b:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c;->d:Z

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/TagGroup$Builder;->c:Z

    new-instance p1, Lcom/perfectcorp/perfectlib/TagGroup;

    invoke-direct {p1, p0}, Lcom/perfectcorp/perfectlib/TagGroup;-><init>(Lcom/perfectcorp/perfectlib/TagGroup$Builder;)V

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/util/List;

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder;->b()Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/VtoPattern$SubPalette$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder;->a(Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheLoader;)Lcom/perfectcorp/thirdparty/com/google/common/cache/LoadingCache;

    move-result-object p0

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->b:Ljava/lang/String;

    invoke-interface {p0, v2}, Lcom/perfectcorp/thirdparty/com/google/common/cache/LoadingCache;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/ph/template/e;->f(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;)Ljava/util/List;

    move-result-object v2

    new-instance v4, Lxx0;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, Lxx0;-><init>(I)V

    invoke-static {v2, v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->c(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object v2

    invoke-static {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v2

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->c:Ljava/lang/String;

    new-instance v5, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;

    invoke-direct {v5}, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;-><init>()V

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;->a(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v2, v3}, Lcom/perfectcorp/perfectlib/SubItemInfo;->e(Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v5, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;->c:Ljava/util/List;

    new-instance v2, Lcom/perfectcorp/perfectlib/SubItemInfo;

    invoke-direct {v2, v5}, Lcom/perfectcorp/perfectlib/SubItemInfo;-><init>(Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;)V

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/perfectcorp/perfectlib/SkuInfo;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
