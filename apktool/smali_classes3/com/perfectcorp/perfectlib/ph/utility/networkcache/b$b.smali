.class public final Lcom/perfectcorp/perfectlib/ph/utility/networkcache/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/common/utility/CacheStrategies$CacheHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/common/utility/CacheStrategies$CacheHandler<",
        "Ljava/util/List<",
        "Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;",
        ">;",
        "Lcom/perfectcorp/perfectlib/ph/kernelctrl/networkmanager/task/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/perfectcorp/common/utility/BasicPreferences;


# instance fields
.field public final a:Ljava/util/Collection;

.field public final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/perfectcorp/common/utility/BasicPreferences;

    const-string v1, "MAKEUPCAMSDK_ANDROID_SETTING"

    invoke-direct {v0, v1}, Lcom/perfectcorp/common/utility/BasicPreferences;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/b$b;->c:Lcom/perfectcorp/common/utility/BasicPreferences;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/b$b;->a:Ljava/util/Collection;

    iput-boolean p2, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/b$b;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networkmanager/task/a;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networkmanager/task/a;->d:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    if-eqz v1, :cond_1

    iget v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->i:I

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/b$b;->b:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->a:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/e;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-wide v3, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->b:J

    invoke-static {v2, v3, v4, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/a;->b(Landroid/database/sqlite/SQLiteDatabase;JLcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;)V

    goto :goto_0

    :cond_1
    const-string v2, "DataHandlers1"

    if-nez v1, :cond_2

    const-string v1, "Invalid MakeupItemMetadata. metadata=null"

    :goto_1
    invoke-static {v2, v1}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid MakeupItemMetadata. Guid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", StatusCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->i:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string p0, "MAKEUP_TEMPLATE_LANGUAGE"

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/b$b;->c:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v1, p0, v0}, Lcom/perfectcorp/common/utility/j;->o(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_4
    const-string p0, "Makeup item metadata list is empty"

    :goto_2
    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return-object v0

    :cond_5
    const-string p0, "getMakeupItemListResponse is null"

    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[GetMKItemMetadataHandler, key:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/b$b;->a:Ljava/util/Collection;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
