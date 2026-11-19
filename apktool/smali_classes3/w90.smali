.class public final synthetic Lw90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;

.field public final synthetic d:Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;I)V
    .locals 0

    iput p3, p0, Lw90;->b:I

    iput-object p1, p0, Lw90;->c:Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;

    iput-object p2, p0, Lw90;->d:Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lw90;->b:I

    iget-object v1, p0, Lw90;->d:Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;

    iget-object p0, p0, Lw90;->c:Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;->e:Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;->b:Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl$1;

    invoke-virtual {p0, p1, v1}, Landroidx/room/EntityInsertAdapter;->c(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;->e:Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;->d:Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl$3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "UPDATE OR ABORT `LightUp` SET `DEVICE_ID` = ?,`TYPE` = ?,`NAME` = ?,`POWER_MODE` = ?,`PRESET_NAME` = ?,`PRESET_IMAGE` = ?,`PRESET_ID` = ?,`DEVICE_TO_STRING` = ? WHERE `DEVICE_ID` = ?"

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->T1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl$3;->a(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->Q1()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    invoke-static {p1}, Landroidx/room/util/SQLiteConnectionUtil;->a(Landroidx/sqlite/SQLiteConnection;)I

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
