.class abstract Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/database/DefaultDatabaseErrorHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/database/DefaultDatabaseErrorHandler;

    invoke-direct {v0}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$b;->a:Landroid/database/DefaultDatabaseErrorHandler;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$b;->a:Landroid/database/DefaultDatabaseErrorHandler;

    invoke-virtual {v0, p1}, Landroid/database/DefaultDatabaseErrorHandler;->onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$b;->a()V

    return-void
.end method
