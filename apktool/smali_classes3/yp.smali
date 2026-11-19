.class public final synthetic Lyp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/database/sqlite/SQLiteDatabase;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lyp;->b:I

    iput-object p2, p0, Lyp;->c:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p3, p0, Lyp;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lyp;->b:I

    iget-object v1, p0, Lyp;->d:Ljava/lang/String;

    iget-object p0, p0, Lyp;->c:Landroid/database/sqlite/SQLiteDatabase;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/e;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/f;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/g;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/h;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void

    :pswitch_0
    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/b;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/d;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/j;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/l;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/e;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/f;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/g;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/h;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void

    :pswitch_1
    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuDao;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, "SkuItem"

    invoke-static {p0, v2}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "skuGuid = ?"

    invoke-virtual {p0, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[delete] delete id: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rowsAffected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    const-string v1, "SkuItemDao"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_2
    new-instance v0, Lcom/perfectcorp/perfectlib/ph/template/a;

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/ph/template/a;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/idsystem/a;->c(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/template/a;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
