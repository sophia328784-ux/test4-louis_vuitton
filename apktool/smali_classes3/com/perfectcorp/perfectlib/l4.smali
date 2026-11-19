.class public final synthetic Lcom/perfectcorp/perfectlib/l4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/perfectcorp/common/network/ProgressCallback;

.field public final synthetic b:Lcom/perfectcorp/perfectlib/TagHandler$Type;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/common/network/ProgressCallback;Lcom/perfectcorp/perfectlib/TagHandler$Type;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/l4;->a:Lcom/perfectcorp/common/network/ProgressCallback;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/l4;->b:Lcom/perfectcorp/perfectlib/TagHandler$Type;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/l4;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/l4;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/l4;->e:Ljava/util/List;

    iput-object p6, p0, Lcom/perfectcorp/perfectlib/l4;->f:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    move-object v5, p1

    check-cast v5, Ljava/lang/Iterable;

    new-instance p1, Lpx0;

    const/16 v0, 0xd

    iget-object v8, p0, Lcom/perfectcorp/perfectlib/l4;->a:Lcom/perfectcorp/common/network/ProgressCallback;

    invoke-direct {p1, v8, v0}, Lpx0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;I)V

    invoke-static {p1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 p1, 0x3

    const-string v9, "TagHandler"

    const-string v0, "[insertToDb] start"

    invoke-static {p1, v9, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v0, Lcom/perfectcorp/perfectlib/m4;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/l4;->b:Lcom/perfectcorp/perfectlib/TagHandler$Type;

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/l4;->c:Ljava/util/List;

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/l4;->d:Ljava/util/List;

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/l4;->e:Ljava/util/List;

    invoke-direct/range {v0 .. v7}, Lcom/perfectcorp/perfectlib/m4;-><init>(Ljava/util/ArrayList;Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/TagHandler$Type;Ljava/util/List;Ljava/lang/Iterable;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v2, v0}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    const-string v0, "[insertToDb] end"

    invoke-static {p1, v9, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lpx0;

    const/16 v2, 0xe

    invoke-direct {v0, v8, v2}, Lpx0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;I)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    const-string v0, "[deleteUnusedImages] start"

    invoke-static {p1, v9, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    goto :goto_0

    :cond_1
    const-string v0, "[deleteUnusedImages] end"

    invoke-static {p1, v9, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string v0, "[updateMessageDigest] start"

    invoke-static {p1, v9, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/l4;->f:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a;->b()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/perfectcorp/perfectlib/TagHandler$Preferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/perfectcorp/perfectlib/TagHandler$Preferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v0}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/perfectlib/TagHandler$Type;->a:Lcom/perfectcorp/perfectlib/TagHandler$Type;

    if-ne v3, v1, :cond_2

    const-string v1, "SKU_MESSAGE_DIGEST"

    goto :goto_1

    :cond_2
    const-string v1, "LOOK_MESSAGE_DIGEST"

    :goto_1
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string p0, "[updateMessageDigest] end"

    invoke-static {p1, v9, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lpx0;

    const/16 p1, 0xf

    invoke-direct {p0, v8, p1}, Lpx0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method
