.class public final synthetic Lpw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/HashSet;

.field public final synthetic d:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashSet;Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 0

    iput p3, p0, Lpw0;->b:I

    iput-object p1, p0, Lpw0;->c:Ljava/util/HashSet;

    iput-object p2, p0, Lpw0;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lpw0;->b:I

    iget-object v1, p0, Lpw0;->d:Landroid/database/sqlite/SQLiteDatabase;

    iget-object p0, p0, Lpw0;->c:Ljava/util/HashSet;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/b;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/b;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/a;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/a;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/d;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/d;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;

    sget-object v2, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;->TAG_SKU:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->r(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;)Ljava/util/HashSet;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;->TAG_LOOK:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;

    invoke-virtual {v0, v1, v3}, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->r(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;)Ljava/util/HashSet;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->p(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;)V

    invoke-virtual {v0, v1, v3}, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->p(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;)V

    return-void

    :pswitch_0
    sget-object v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;

    sget-object v2, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;->SKIN_CARE_3:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->r(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;)Ljava/util/HashSet;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    sget-object p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/a;->d:Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/a;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/b;->d:Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/b;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->p(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
