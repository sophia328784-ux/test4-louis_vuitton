.class public final synthetic Lcom/perfectcorp/perfectlib/y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/perfectcorp/perfectlib/y1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 8

    iget p0, p0, Lcom/perfectcorp/perfectlib/y1;->b:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/perfectcorp/perfectlib/PerfectEffect;

    sget p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectEffect;->FUN_STICKER:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-eq p1, p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    :pswitch_0
    check-cast p1, Lcom/perfectcorp/perfectlib/PerfectEffect;

    sget-object p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectEffect;->FUN_STICKER:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-eq p1, p0, :cond_1

    move v0, v1

    :cond_1
    return v0

    :pswitch_1
    check-cast p1, Lcom/perfectcorp/perfectlib/EffectId;

    sget-object p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/b;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/background/b;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/EffectId;->c:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "[exists] failed. guid="

    const-string v4, " WHERE guid=? "

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SELECT COUNT(*) FROM "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->b:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_3

    :cond_2
    :goto_0
    invoke-static {v5}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez p0, :cond_2

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    const-string v1, "BackgroundInfoDao"

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :goto_1
    return v0

    :catchall_1
    move-exception p0

    invoke-static {v5}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw p0

    :pswitch_2
    check-cast p1, Lcom/perfectcorp/perfectlib/EffectId;

    sget-object p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/EffectId;->getPatternGuid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/EffectId;->n:Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;

    instance-of p1, p0, Lcom/perfectcorp/perfectlib/EarringParameter;

    if-eqz p1, :cond_4

    check-cast p0, Lcom/perfectcorp/perfectlib/EarringParameter;

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/EarringParameter;->a:Z

    if-nez p0, :cond_4

    move v0, v1

    :cond_4
    return v0

    :pswitch_3
    check-cast p1, Lcom/perfectcorp/perfectlib/EffectId;

    sget-object p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/EffectId;->getPatternGuid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/EffectId;->n:Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;

    instance-of p1, p0, Lcom/perfectcorp/perfectlib/EarringParameter;

    if-eqz p1, :cond_5

    check-cast p0, Lcom/perfectcorp/perfectlib/EarringParameter;

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/EarringParameter;->a:Z

    if-eqz p0, :cond_5

    move v0, v1

    :cond_5
    return v0

    :pswitch_4
    check-cast p1, Lcom/perfectcorp/perfectlib/EffectId;

    sget-object p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/EffectId;->getWearingStyleGuid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
