.class public final synthetic Lv81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Iterable;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Iterable;ZI)V
    .locals 0

    iput p3, p0, Lv81;->b:I

    iput-object p1, p0, Lv81;->c:Ljava/lang/Iterable;

    iput-boolean p2, p0, Lv81;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lv81;->b:I

    iget-boolean v1, p0, Lv81;->d:Z

    iget-object p0, p0, Lv81;->c:Ljava/lang/Iterable;

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v2, Lw81;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p0, v1, v3}, Lw81;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Iterable;ZI)V

    invoke-static {v0, v2}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v2, Lw81;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p0, v1, v3}, Lw81;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Iterable;ZI)V

    invoke-static {v0, v2}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
