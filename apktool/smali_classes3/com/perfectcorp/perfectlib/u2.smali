.class public final synthetic Lcom/perfectcorp/perfectlib/u2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/perfectcorp/perfectlib/u2;->a:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/u2;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/u2;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/u2;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lcom/perfectcorp/perfectlib/u2;->a:I

    const/4 v1, 0x3

    const-string v2, "[setReshapeIntensities] complete"

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/u2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/u2;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/u2;->d:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    check-cast p1, Landroid/graphics/Bitmap;

    sget v4, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "PhotoMakeupInternal"

    invoke-static {v1, v4, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->l:Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;

    sget-object v4, Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;->b:Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

    invoke-virtual {v3, v2, v4}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;->a(Lcom/perfectcorp/perfectlib/ReshapeEffect;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/u2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/u2;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/u2;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Landroid/graphics/Bitmap;

    sget p1, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    iget-object p1, v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->l:Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->j:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    iput-object v1, p1, Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;->a:Ljava/lang/String;

    new-instance p1, Lcom/perfectcorp/perfectlib/ph/clflurry/b;

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Looks:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    sget-object v3, Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;->a:Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

    invoke-direct {p1, v2, v3}, Lcom/perfectcorp/perfectlib/ph/clflurry/b;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->c:Ljava/util/Map;

    const-string v3, "look_guid"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0, p0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->f(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/util/List;)V

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->c:Ljava/util/Map;

    invoke-virtual {p1, p0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->c(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/u2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/u2;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/u2;->d:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    sget-object p1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "MakeupCamInternal"

    invoke-static {v1, p1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->m:Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;

    sget-object v3, Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;->a:Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

    invoke-virtual {v2, v1, v3}, Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;->a(Lcom/perfectcorp/perfectlib/ReshapeEffect;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
