.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c$a;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "SkuSetId"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SkuGuid"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ItemGuid"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Metadata"

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
