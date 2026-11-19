.class public final Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl$3;
.super Landroidx/room/EntityDeleteOrUpdateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeleteOrUpdateAdapter<",
        "Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "com/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl$3",
        "Landroidx/room/EntityDeleteOrUpdateAdapter;",
        "Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl$3;->a:Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;

    invoke-direct {p0}, Landroidx/room/EntityDeleteOrUpdateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 5

    check-cast p2, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->A(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl$3;->a:Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;

    iget-object p0, p0, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;->c:Lcom/vuitton/android/data/database/converter/EnumConverter;

    iget-object v1, p2, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->a()I

    move-result v1

    const/4 v2, 0x2

    int-to-long v3, v1

    invoke-interface {p1, v2, v3, v4}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    iget-object v1, p2, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;->c:Ljava/lang/String;

    const/4 v2, 0x3

    if-nez v1, :cond_0

    invoke-interface {p1, v2}, Landroidx/sqlite/SQLiteStatement;->l(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v2, v1}, Landroidx/sqlite/SQLiteStatement;->A(ILjava/lang/String;)V

    :goto_0
    iget-object v1, p2, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;->d:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->a()I

    move-result p0

    const/4 v1, 0x4

    int-to-long v2, p0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    iget-object p0, p2, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;->e:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez p0, :cond_1

    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->l(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v1, p0}, Landroidx/sqlite/SQLiteStatement;->A(ILjava/lang/String;)V

    :goto_1
    iget-object p0, p2, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;->f:Ljava/lang/String;

    const/4 v1, 0x6

    if-nez p0, :cond_2

    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->l(I)V

    goto :goto_2

    :cond_2
    invoke-interface {p1, v1, p0}, Landroidx/sqlite/SQLiteStatement;->A(ILjava/lang/String;)V

    :goto_2
    iget-object p0, p2, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;->g:Ljava/lang/String;

    const/4 v1, 0x7

    if-nez p0, :cond_3

    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->l(I)V

    goto :goto_3

    :cond_3
    invoke-interface {p1, v1, p0}, Landroidx/sqlite/SQLiteStatement;->A(ILjava/lang/String;)V

    :goto_3
    const/16 p0, 0x8

    iget-object p2, p2, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;->h:Ljava/lang/String;

    invoke-interface {p1, p0, p2}, Landroidx/sqlite/SQLiteStatement;->A(ILjava/lang/String;)V

    const/16 p0, 0x9

    invoke-interface {p1, p0, v0}, Landroidx/sqlite/SQLiteStatement;->A(ILjava/lang/String;)V

    return-void
.end method
