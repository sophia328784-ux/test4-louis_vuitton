.class public final synthetic Lcom/perfectcorp/perfectlib/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/perfectcorp/perfectlib/g1;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/g1;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/g1;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/perfectcorp/perfectlib/g1;->b:I

    const/4 v1, 0x3

    const-string v2, "[getPatterns] singleton list"

    const-string v3, "PhotoMakeupInternal"

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/g1;->d:Ljava/lang/Object;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/g1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/VtoPalette$PatternMajor;

    check-cast v4, Lcom/perfectcorp/perfectlib/VtoObject$Callback;

    const-string v0, "VtoPalette$PatternMajor"

    invoke-static {v1, v0, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/perfectcorp/perfectlib/VtoPattern$PatternMajor;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/VtoPalette;->d:Lcom/perfectcorp/perfectlib/ProductInfo;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoPalette$PatternMajor;->f:Lcom/perfectcorp/perfectlib/SkuInfo;

    invoke-direct {v0, v1, p0}, Lcom/perfectcorp/perfectlib/VtoPattern$PatternMajor;-><init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SkuInfo;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v4, p0}, Lcom/perfectcorp/perfectlib/VtoObject$Callback;->onSuccess(Ljava/util/List;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/VtoDetail$PatternMajor;

    check-cast v4, Lcom/perfectcorp/perfectlib/VtoObject$Callback;

    const-string v0, "VtoDetailPatternMajor"

    invoke-static {v1, v0, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/perfectcorp/perfectlib/VtoPattern$PatternMajor;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/VtoDetail;->a:Lcom/perfectcorp/perfectlib/ProductInfo;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoDetail;->b:Lcom/perfectcorp/perfectlib/SkuInfo;

    invoke-direct {v0, v1, p0}, Lcom/perfectcorp/perfectlib/VtoPattern$PatternMajor;-><init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SkuInfo;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v4, p0}, Lcom/perfectcorp/perfectlib/VtoObject$Callback;->onSuccess(Ljava/util/List;)V

    return-void

    :pswitch_1
    check-cast p0, Ljava/lang/Throwable;

    check-cast v4, Lcom/perfectcorp/perfectlib/VtoApplier$ReshapeIntensitiesCallback;

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    const-string v0, "[getReshapeIntensities] failed"

    invoke-static {v3, v0, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v4, p0}, Lcom/perfectcorp/perfectlib/VtoApplier$ReshapeIntensitiesCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_2
    check-cast p0, Ljava/lang/Throwable;

    check-cast v4, Lcom/perfectcorp/perfectlib/VtoApplier$EffectIdCallback;

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    const-string v0, "[getEffectIds] failed"

    invoke-static {v3, v0, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v4, p0}, Lcom/perfectcorp/perfectlib/VtoApplier$EffectIdCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_3
    check-cast p0, Ljava/lang/Throwable;

    check-cast v4, Lcom/perfectcorp/perfectlib/VtoApplier$ProductIdCallback;

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    const-string v0, "[getProductIds] failed"

    invoke-static {v3, v0, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v4, p0}, Lcom/perfectcorp/perfectlib/VtoApplier$ProductIdCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_4
    check-cast p0, Ljava/lang/Throwable;

    check-cast v4, Lcom/perfectcorp/perfectlib/VtoApplier$IntensitiesCallback;

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    const-string v0, "[getIntensities] failed"

    invoke-static {v3, v0, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v4, p0}, Lcom/perfectcorp/perfectlib/VtoApplier$IntensitiesCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_5
    check-cast p0, Lcom/perfectcorp/perfectlib/LookHandler;

    check-cast v4, Ljava/util/List;

    sget-object v0, Lcom/perfectcorp/perfectlib/hc/preferences/LookHandlerPreferences;->b:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v0}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/perfectcorp/perfectlib/CacheCleaner;->d(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/LookHandler;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->e:Lcom/perfectcorp/perfectlib/NailLookHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/perfectcorp/perfectlib/hc/preferences/NailLookHandlerPreferences;->b:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v1}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/perfectcorp/perfectlib/CacheCleaner;->d(Ljava/lang/String;Z)V

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/NailLookHandler;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->f:Lcom/perfectcorp/perfectlib/JewelryLookHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/perfectcorp/perfectlib/hc/preferences/JewelryLookHandlerPreferences;->b:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v0}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/perfectcorp/perfectlib/CacheCleaner;->d(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/JewelryLookHandler;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
