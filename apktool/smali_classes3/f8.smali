.class public final synthetic Lf8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;I)V
    .locals 0

    iput p2, p0, Lf8;->b:I

    iput-object p1, p0, Lf8;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lf8;->b:I

    iget-object p0, p0, Lf8;->c:Ljava/util/concurrent/ConcurrentHashMap;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/SkuInfo;

    if-eqz p0, :cond_0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p1, Landroid/util/Pair;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/util/Pair;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    iget-wide v1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->m:J

    iget v3, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->i:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupItemStatus;->NOT_FOUND:Lcom/perfectcorp/perfectlib/MakeupItemStatus;

    :goto_1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupItemStatus;->NOT_SUPPORTED:Lcom/perfectcorp/perfectlib/MakeupItemStatus;

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->F(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_2
    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupItemStatus;->OUTDATED:Lcom/perfectcorp/perfectlib/MakeupItemStatus;

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->e()Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    move-result-object v3

    sget-object v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    const-wide/16 v5, 0x0

    if-ne v3, v4, :cond_4

    sget-object v3, Lcom/perfectcorp/perfectlib/hc/preferences/LookHandlerPreferences;->b:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v3, v0, v5, v6}, Lcom/perfectcorp/common/utility/j;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->e()Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    move-result-object v3

    sget-object v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    if-ne v3, v4, :cond_5

    sget-object v3, Lcom/perfectcorp/perfectlib/hc/preferences/NailLookHandlerPreferences;->b:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v3, v0, v5, v6}, Lcom/perfectcorp/common/utility/j;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->e()Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    move-result-object v3

    sget-object v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    if-ne v3, v4, :cond_6

    sget-object v3, Lcom/perfectcorp/perfectlib/hc/preferences/JewelryLookHandlerPreferences;->b:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v3, v0, v5, v6}, Lcom/perfectcorp/common/utility/j;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_6

    goto :goto_2

    :cond_6
    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupItemStatus;->UPDATED:Lcom/perfectcorp/perfectlib/MakeupItemStatus;

    goto :goto_1

    :goto_3
    return-object p1

    :pswitch_3
    check-cast p1, Ljava/util/List;

    sget-object v0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    iget-object p0, p0, Lf8;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
